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

set(__MYAKE_GENERATOR_ARCHIVE_LIST "7Z;TBZ2;TGZ;TXZ;TZ;TZST;ZIP")
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
    # load module
    include(My/Package/Generator/${category})

    string(TOLOWER "${category}" category_lc)
    cmake_language(EVAL CODE "my_generator_${category_lc}()")
    unset(category_lc)
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
### my_generator_config

    my_generator_config(
        FIXME
    )

FIXME

#]==]
macro(my_generator_config stage tag)
    if("${tag}" STREQUAL "all")
        __my_generator_stage_prepare(${tag})
    else()
        cmake_language(EVAL CODE "__my_generator_stage_${stage}(${tag})")
    endif()
endmacro()

macro(__my_generator_stage_prepare tag)
    my_structure_parse(MY_PACK_${tag} RESET
        TEMPLATE MY_PACK_${tag}
        ${__MY_PACK_ARGS})
endmacro()

my_report(My/Packaging SECTION "Packaging")
