# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

# Inspired by and some code copied from
#      https://github.com/neurosuite/libneurosuite/blob/master/cmake/modules/PackNeurosuite.cmake,
#      Copyright 2015 by Florian Franzen
#
#      Neurosuite was published under the GPL v2.
#      See https://github.com/neurosuite/libneurosuite/blob/master/LICENSE.txt

#[=======================================================================[.md:
# My/Package - Packaging utilities

Tools and utilities for setting up CPack in a more structured manner.

See also gitlab's [Packaging with CPack](https://gitlab.kitware.com/cmake/community/wikis/doc/cpack/Packaging-With-CPack)
for more information.

## Overview

FIXME

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Bits/Set)
include(My/Bits/Structure)
include(My/Build)

include(My/Package/Generator)

include(CPackComponent)

# defaults
# FIXME see my_generator_reset(), we need to set another method for setting up defaults
set(CPACK_SET_DESTDIR ON)

#[==[.md:
## my_package

    my_package([<generator> [COMMON]]
        <settings>...
    )

This function is the "landing" command for declaring values for CPack. 

Note that cross-compiling is not supported for system dependent packagers.

### Common settings

The following parameters may be set - note, however, that not all generators
support all of these (e.g. AUTHORS is only used by NuGet at the moment of 
writing):

FIXME

### Components

    my_package(
        COMPONENTS {
            [DISABLED]
            <component-options>...
        }
    )

[Components and groups](https://cmake.org/cmake/help/latest/module/CPackComponent.html) 
can be defined using the ``COMPONENTS`` option (note that some generators may
support additional options).

A component is defined by:

    COMPONENT <component-name> {
        [DISPLAY <display-name>]
        [DESCRIPTION <component-description>]
        [HIDDEN | REQUIRED | DISABLED ]
        [DEPENDS <component-dependcies>...]
        [INSTALL_TYPES <type>... ]
        [DOWNLOADED]
        [ARCHIVE_FILE <filename>]
        [PLIST <filename>]
    }

Such components may be hierarchically organized in groups:

    GROUP <group-name> {
        [DISPLAY name]
        [DESCRIPTION description]
        [EXPANDED]
        [BOLD_TITLE]

        [<sub-group>|<component-declaration>...]
    }

Install types and downloads are declared using the options

    INSTALL_TYPE <typename> {
        [DISPLAY <display-name>]
    }

and

    DOWNLOADS <sitename> {
        [UPLOAD_DIRECTORY <dirname>]
        [ALL]
        [ADD_REMOVE|NO_ADD_REMOVE]
    }

### Generator expressions

The `my_package` macro supports the notion of [generator expressions](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html)
which are of the form

    $<VARNAME>

These are expanded like standard variable expansion but not immediately. This
allows to define template names. For example, the 'filename template' default
is

    $<NAME>-$<VERSION>$<[-]SUFFIX>

meaning, that it is expanded as "<project-name>-<project-version>[-<filename-suffix>]"
where "-<filename-suffix>" is ommitted if not set. The expansion is case sensitive, 
meaning that "$<NAME>" will be expanded as set, while "$<name>" will explicitely 
convert the content to lower case. 

### Alterations

#### Version

CPack prefers to split the version number into major, minor, and, patch version. 
FIXME...

**See**:  
[MY_PROJECT_TOPLEVEL](Bits/Toplevel.md) 
#]==]
macro(my_package)
    message(DEBUG "my_package(${ARGN})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    # check generator 
    set(__MY_PACK_ARGS ${ARGN})
    my_generator_check(MY_PACK_GENERATOR ${ARGV0})

    if(NOT MY_PACK_GENERATOR)
        # parse common settings
        my_structure_parse(MY_PACK_COMMON
            TEMPLATE MY_PACK_COMMON
            ${__MY_PACK_ARGS})
    else()
        # generator (found above)
        list(POP_FRONT __MY_PACK_ARGS)

        # COMMON?
        list(GET __MY_PACK_ARGS 0 arg0)
        if("${arg0}" STREQUAL "COMMON")
            set(__MY_PACK_COMMON)
            list(POP_FRONT __MY_PACK_ARGS)
        else()
            unset(__MY_PACK_COMMON)
        endif()
        unset(arg0)
    
        # run generator
        my_generator_run(${MY_PACK_GENERATOR})
        unset(MY_PACK_GENERATOR)
    endif()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

