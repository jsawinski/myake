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
## my_generator_prepare

    my_generator_prepare(<generator>
        FIXME
    )

FIXME

#]==]
function(my_generator_prepare GENERATOR)
    message(DEBUG "my_generator_prepare(${GENERATOR} ...)")
endfunction()

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
    cmake_language(EVAL CODE "my_generator_${__MY_PACKAGE_generator}(${ARGN})")

    unset(__MY_PACKAGE_generator)
endmacro()

# FINALLY...
include(My/Package/Generator/Common)
