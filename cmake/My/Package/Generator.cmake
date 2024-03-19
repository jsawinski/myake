# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator

This module provides an interface to handling CPack generators.

At time of writing, these package generators are (actively) supported:

    [x] [Archive](Generator/Archive.md) Generator
    [ ] Bundle Generator
    [ ] Cygwin Generator
    [x] [DEB](Generator/DEB.md) Generator
    [ ] DragNDrop Generator
    [ ] External Generator
    [ ] FreeBSD Generator
    [ ] IFW Generator
    [ ] Nullsoft (NSIS) Generator
    [ ] NuGet Generator
    [ ] PackageMaker Generator
    [ ] productbuild Generator
    [ ] RPM Generator
    [ ] WIX Generator

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Package/Generator/Common)

set(MY_PACK_SOURCES_IGNORE "/CVS/;/[.]svn/;/[.]bzr/;/[.]hg/;/[.]git/;[.]swp$;[.]#;/#")

set(__MYAKE_GENERATOR_ARCHIVE_LIST "7Z;TBZ2;TGZ;TXZ;TZ;TZST;ZIP;STGZ")
set(__MYAKE_GENERATOR_NULLSOFT_LIST "NSIS;NSIS64")

set(__MYAKE_GERERATOR_WITH_SUBCATEGORIES "Nullsoft;Archive")

set(__MYAKE_GENERATOR_CATEGORY_LIST "Archive;Bundle;DEB;Cygwin;DragNDrop;External;FreeBSD;IFW;NSIS;NuGet;PackageMaker;productbuild;RPM;WIX")

#[==[.md:
### my_generator_check

    my_generator_check(<output-variable> <cpack-generator>)

Check generator category and assign it to the <output-variable>.

**See also**:
- [my_package](../Package.md#markdown-header-my_package)
#]==]
macro(my_generator_check outvar generator)
    message(TRACE "my_generator_check(${outvar} ${generator})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    # prepare...
    unset(${outvar})
    string(TOUPPER "${generator}" _MYAKE_GENCAT_GENERATOR) # only compare upper-case values...

    # check those with sub-categories
    foreach(cat ${__MYAKE_GERERATOR_WITH_SUBCATEGORIES})
        string(TOUPPER "${cat}" _MYAKE_GENCAT_CAT)
        string(TOUPPER "${__MYAKE_GENERATOR_${_MYAKE_GENCAT_CAT}_LIST}" _MYAKE_GENCAT_LIST)

        list(FIND _MYAKE_GENCAT_LIST "${_MYAKE_GENCAT_GENERATOR}" _my_gencat_index)

        if(${_my_gencat_index} GREATER_EQUAL 0)
            set(${outvar} "${cat}")
            break()
        endif()
    endforeach()

    # check other
    if(NOT DEFINED ${outvar})
        string(TOUPPER "${__MYAKE_GENERATOR_CATEGORY_LIST}" _MYAKE_GENCAT_LIST)

        list(FIND _MYAKE_GENCAT_LIST "${_MYAKE_GENCAT_GENERATOR}" _my_gencat_index)

        if(${_my_gencat_index} GREATER_EQUAL 0)
            list(GET __MYAKE_GENERATOR_CATEGORY_LIST ${_my_gencat_index} ${outvar})
        endif()
    endif()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[==[.md:
### my_generator_run

    my_generator_run(<generator-category>)

Divert calls to respective generator macro.

This macro is only used by [my_package](../Package.md#markdown-header-my_package).

#]==]
macro(my_generator_run category)
    set(MY_PACK_CREATE TRUE)

    # load module
    include(My/Package/Generator/${category})

    # run generator helper
    string(TOLOWER "${category}" category_lc)
    cmake_language(EVAL CODE "my_generator_${category_lc}()")
    unset(category_lc)

    # create cpack config
    if(NOT DEFINED __MY_PACK_COMMON AND MY_PACK_CREATE)
        unset(CPack_CMake_INCLUDED)
        include(CPack)
    endif()
endmacro()

#[==[.md:
### my_generator_reset

    my_generator_reset()

Clear all CPACK* variables.
#]==]
macro(my_generator_reset)
    get_cmake_property(allvars VARIABLES)
    foreach(var ${allvars})
        if(var MATCHES "^CPACK")
            unset(${var})
            unset(${var} CACHE)
        endif()
    endforeach()
endmacro()

#[==[.md:
### my_generator_configure

    my_generator_configure(
        FIXME
    )

FIXME

#]==]
macro(my_generator_configure tag)
    my_tree_parse(MY_PACK_${tag} [ NODEFAULTS RESET ]
        ${__MY_PACK_ARGS})

    if(NOT DEFINED __MY_PACK_COMMON)
        ### translate variables
        my_generator_translate(${tag} 
            ${TRANSLATE_MY_PACK_COMMON}
            ${ARGN})

        ### other settings
        set(CPACK_GENERATOR "${MY_PACK_${tag}_PACKAGE_GENERATOR}")
        set(CPACK_SOURCE_GENERATOR "${MY_PACK_${tag}_SOURCES_GENERATOR}")

        ### options 
        if(DEFINED __MYAKE_GENERATOR_${tag}_LIST)
            foreach(item IN LISTS __MYAKE_GENERATOR_${tag}_LIST)
                set(CPACK_BINARY_${item} OFF CACHE BOOL "CPack: generate binary ${item}" FORCE)
                set(CPACK_SOURCE_${item} OFF CACHE BOOL "CPack: generate source ${item}" FORCE)
            endforeach()
        else()
            set(CPACK_BINARY_${tag} OFF CACHE BOOL "CPack: generate binary ${tag}" FORCE)
            set(CPACK_SOURCE_${tag} OFF CACHE BOOL "CPack: generate source ${tag}" FORCE)
        endif()

        # binary packages 
        if(NOT "${MY_PACK_${tag}_PACKAGE_GENERATOR}" STREQUAL "NONE")
            if(NOT MY_PACK_${tag}_PACKAGE_GENERATOR)
                set(MY_PACK_${tag}_PACKAGE_GENERATOR ${tag})
            endif()
            foreach(item IN LISTS MY_PACK_${tag}_PACKAGE_GENERATOR)
                my_generator_set(BINARY ${item} ON)
            endforeach()
        endif()

        # source packages 
        if(NOT "${MY_PACK_${tag}_SOURCES_GENERATOR}" STREQUAL "NONE")
            if(NOT MY_PACK_${tag}_SOURCES_GENERATOR)
                set(MY_PACK_${tag}_SOURCES_GENERATOR ${tag})
            endif()
            foreach(item IN LISTS MY_PACK_${tag}_SOURCES_GENERATOR)
                my_generator_set(SOURCE ${item} ON)
            endforeach()
        endif()
    endif()
endmacro()

#[==[.md:
### my_generator_set

    my_generator_set(BINARY|SOURCE <GENERATOR> ON|OFF)

Helper to enable or disable CPack generator.

#]==]
function(my_generator_set type name value)
    string(TOLOWER "${type}" type_lc)
    set(CPACK_${type}_${name} ${value} CACHE BOOL "Generate a ${type_lc} package with generator ${name}." FORCE)
endfunction()

#[==[.md:
### my_generator_translate

    my_generator_translate(<settings>)

Helper to convert Myake to CPack variables.

#]==]
macro(my_generator_translate tag)
    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)
    while(NARGS GREATER 0)
        list(POP_FRONT ARGS K)
        list(POP_FRONT ARGS V)
        my_nested_unpack(V _)

        foreach(N ${V})
            foreach(srcprefix MY_PACK_COMMON MY_PACK_${tag}_COMMON MY_PACK_${tag})
                set(S ${srcprefix}_${N})
                if(DEFINED ${S})
                    set(${K} ${${S}})
                    my_generator_genex(${K} MY_PACK_${tag} MY_PACK_${tag}_COMMON MY_PACK_COMMON)
                endif()
            endforeach()
        endforeach()

        list(LENGTH ARGS NARGS)
    endwhile()
endmacro()

#[==[.md:
### my_generator_genex

    my_generator_genex(outvar prefixes...)

Helper to expand generator expressions.

#]==]
function(my_generator_genex outvar)
    string(REGEX MATCH "[$][<][^>]*[>]" pattern "${${outvar}}")
    if(NOT pattern)
        return()
    endif()

    my_substring(genex 2 -2 "${pattern}")

    if("${genex}" MATCHES "^[-]")
        set(OPTIONAL TRUE)
        my_substring(genex 3 -2 "${pattern}")
    endif()

    string(TOLOWER "${genex}" genex_lc)
    string(TOUPPER "${genex}" genex_uc)

    if("${genex}" STREQUAL "${genex_lc}")
        set(LOWERCASE TRUE)
    endif()
    set(genex ${genex_uc})

    unset(text)
    foreach(prefix ${ARGN})
        if(DEFINED ${prefix}_${genex})
            if(LOWERCASE)
                string(TOLOWER "${${prefix}_${genex}}" text)
            else()
                set(text "${${prefix}_${genex}}")
            endif()
            break()
        endif()
    endforeach()

    if(NOT DEFINED text AND NOT OPTIONAL)
        message(FATAL_ERROR "Internal error: genex replacement not found.")
    endif()

    string(REPLACE "${pattern}" "${text}" ${outvar} ${${outvar}})
    my_generator_genex(${outvar} ${ARGN})
    set(${outvar} "${${outvar}}" PARENT_SCOPE)
endfunction()

my_report(My/Packaging SECTION "Packaging")
