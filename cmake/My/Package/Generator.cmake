# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator

This module provides an interface to handling CPack generators.

At time of writing, these package generators are (actively) supported:

    [ ] [Archive](Generator/Archive.md) Generator
    [ ] [Bundle](Generator/Bundle.md) Generator
    [ ] [Cygwin](Generator/Cygwin.md) Generator
    [ ] [DEB](Generator/DEB.md) Generator
    [ ] [DragNDrop](Generator/DragNDrop.md) Generator
    [ ] [External](Generator/External.md) Generator
    [ ] [FreeBSD](Generator/FreeBSD.md) Generator
    [ ] [IFW](Generator/IFW.md) Generator
    [ ] [Nullsoft (NSIS)](Generator/NSIS.md) Generator
    [ ] [NuGet](Generator/NuGet.md) Generator
    [ ] [PackageMaker](Generator/PackageMaker.md) Generator
    [ ] [productbuild](Generator/productbuild.md) Generator
    [ ] [RPM](Generator/RPM.md) Generator
    [ ] [WIX](Generator/WIX.md) Generator

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Build)
include(My/Package/Generator)
include(My/Bits/Nested)

#[==[.md
## MY_GENERATORS

List of available generator supergroups.

## MY_GENERATORS_SUBS

List of generators with subgroups. The respective subgroups are
listed as `MY_GENERATORS_<super>`.

#]==]
set(MY_GENERATORS "Archive;Bundle;DEB;Cygwin;DragNDrop;External;FreeBSD;IFW;NSIS;NuGet;PackageMaker;productbuild;RPM;WIX")
set(MY_GENERATORS_SUBS "Nullsoft;Archive")
set(MY_GENERATORS_Archive "7Z;TBZ2;TGZ;TXZ;TZ;TZST;ZIP;STGZ")
set(MY_GENERATORS_Nullsoft "NSIS;NSIS64")

#[==[.md:
## my_generator_identify

    my_generator_identify(<generator> <output-variable>)

Identify the generator include file from the generator name.

#]==]
function(my_generator_identify GENERATOR OUTVAR)
    message(DEBUG "my_generator_identify(${GENERATOR} ${OUTVAR})")

    if("${GENERATOR}" IN_LIST MY_GENERATORS)
        set(${OUTVAR} ${GENERATOR})
    else()
        unset(${OUTVAR})
        foreach(sub ${MY_GENERATORS_SUBS})
            if("${GENERATOR}" IN_LIST MY_GENERATORS_${sub})
                set(${OUTVAR} ${sub})
                break()
            endif()
        endforeach()
    endif()

    return(PROPAGATE ${OUTVAR})
endfunction()

#[==[.md:
## my_generator_declare

    my_generator_declare(<generator>
        <settings>...
    )

This macro is used to declare generator specific processing instructions.

#]==]
function(my_generator_declare GENERATOR)
    message(DEBUG "my_generator_declare(${GENERATOR} ...)")
    set(MY_GENERATOR_${GENERATOR} "${ARGN}" CACHE INTERNAL "Myake processesing instructions for generator '${GENERATOR}'")
endfunction()

#[==[.md:
## my_generator_check

    my_generator_check(<generator> <keys...>)

Helper for checking if a generator is applicable.

This function "extracts" only the given keys from the config.

#]==]
macro(my_generator_check GENERATOR)
    set(ARGS ${ARGN})
    message(DEBUG "my_generator_check(${GENERATOR} ${ARGN})")

    set(WORKLIST MY_PACK_COMMON MY_PACK_${GENERATOR}_COMMON MY_PACK_${GENERATOR})
    foreach(workitem ${WORKLIST})
        set(part ${${workitem}})

        while(part)
            list(POP_FRONT part key)

            my_nested_is(${key} islist)
            if(islist)
                # ignored
            else()
                if("${key}" IN_LIST ARGS)
                    list(POP_FRONT part value)

                    my_nested_unpack(value islist)
                    if(islist)
                        while(value)
                            list(POP_FRONT value subkey)
                            list(POP_FRONT value subvalue)
                            set(MY-PACK-${key}-${subkey} ${subvalue})
                            message(DEBUG "| MY-PACK-${key}-${subkey}=${MY-PACK-${key}-${subkey}}")
                        endwhile()
                    else()
                        set(MY-PACK-${key} ${value})
                        message(DEBUG "| MY-PACK-${key}=${MY-PACK-${key}}")
                    endif()
                endif()
            endif()
        endwhile()
    endforeach()
endmacro()

macro(my_generator_prepare GENERATOR)
    message(DEBUG "my_generator_prepare(${GENERATOR})")

    # parse COMMON first
    if(NOT "${GENERATOR}" STREQUAL "COMMON")
        my_generator_prepare(COMMON)
    endif()

    # loop over parts
    while(MY_GENERATOR_${GENERATOR})
        list(POP_FRONT MY_GENERATOR_${GENERATOR} KEY)

        list(POP_FRONT MY_GENERATOR_${GENERATOR} TABLE)
        my_nested_unpack(TABLE _)

        if(KEY STREQUAL "SETUP")
            my_generator_prepare_setup()
        elseif(KEY STREQUAL "STRUCTURE")
            my_generator_prepare_make(MY-PACK-${GENERATOR})
        elseif(KEY STREQUAL "COMPONENTS")
            my_generator_prepare_make(MY-PACK-${GENERATOR}-COMPONENTS)
        else()
            message(FATAL_ERROR "Internal error: invalid key '${KEY}'.")
        endif()
    endwhile()
endmacro()

macro(my_generator_prepare_setup)
    message(DEBUG "my_generator_prepare_setup()")

    while(TABLE)
        list(POP_FRONT TABLE OUTVAR)
        list(POP_FRONT TABLE VALUE)

        set(${OUTVAR} ${VALUE})
        message(DEBUG "| ${OUTVAR}=${VALUE}")
    endwhile()
endmacro()

macro(my_generator_prepare_make TEMPLATE)
    message(DEBUG "my_generator_prepare_make(${TEMPLATE})")

    while(TABLE)
        list(POP_FRONT TABLE KEY)

        list(POP_FRONT TABLE INSTRUCTIONS)
        my_nested_unpack(INSTRUCTIONS _)

        list(GET INSTRUCTIONS 0 FIRST)
        if(FIRST STREQUAL "GROUP")
            my_save(INSTRUCTIONS TABLE)
            set(TABLE ${INSTRUCTIONS})
            list(POP_FRONT TABLE)
            my_generator_prepare_make(${TEMPLATE}-${KEY})
            my_restore(INSTRUCTIONS TABLE)
        else()
            message(DEBUG "| ${TEMPLATE}-${KEY}=${INSTRUCTIONS}")
        endif()
    endwhile()
endmacro()

#[==[.md:
## my_generator

    my_generator(<generator>
        <settings>...
    )

This macro marshalls the generators (it is called by `my_package` only).

#]==]
macro(my_generator GENERATOR)
    message(DEBUG "my_generator(${GENERATOR})")
    include(My/Package/Generator/${GENERATOR})

    string(TOLOWER "${GENERATOR}" __MY_PACKAGE_generator)
    cmake_language(EVAL CODE "my_generator_${__MY_PACKAGE_generator}(\"${ARGN}\")")

    unset(__MY_PACKAGE_generator)
endmacro()

# FINALLY...
include(My/Package/Generator/Common)
