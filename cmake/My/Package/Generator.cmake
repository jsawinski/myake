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

Reset all CPACK* variables.
#]==]

#[==[.md:
### my_generator_config

    my_generator_config(
        [VARIABLES <variable-prefix>...]
        [TEMPLATES <template-patterns>...]
        [GET <output-variable> <pattern>]
        [POPULATE <variable> <pattern>[=<source-pattern>] ...]
    )

Setup, access and process generator settings.

Option `VARIABLES` sets the hierarchy of variables to retrieve package
information. Common package options are included by default. This value is
stored in the ``MY_GENERATOR_CONFIG_VARIABLES``.

Option `TEMPLATES` stores template patterns (e.g. NAME). As with VARIABLES,
this is stored in ``MY_GENERATOR_CONFIG_TEMPLATES``. It's lookup mechanism is
the same as for option `GET`.

Option `GET` retrieves the value for a variable pattern (e.g. If COMPONENTS is
required and VARIABLES is set to MY_ARCHIVE;MY_ARCHIVE_COMMON;MY_PACKAGE_COMMON,
then the first occurrence of MY_ARCHIVE_COMPONENTS, etc., will be used).

Option `POPULATE` causes settings to be copied to CPACK variables by pattern
(where the source pattern, as passed to GET, may deviate from the
<variable><pattern>).

#]==]

#[==[.md:
### my_generator_emit()

    my_generator_emit()

Create CPack configuration files.
#]==]

my_report(My/Packaging SECTION "Packaging")
