# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

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
set(CPACK_SET_DESTDIR ON)

#[==[.md:
## my_package

    my_package([<generator> [COMMON]]
        <settings>...
    )

This function is the "landing" command for declaring values for CPack.

Note that cross-compiling is not supported for system dependent packagers.

### Generator expressions

The `my_package` macro supports the notion of [generator expressions](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html)
which are of the form

    $<VARNAME>

These are expanded like standard variable expansion but not immediately. This
allows to define template names. For example, the 'filename template' default
is

    $<NAME>-$<VERSION>$<[-]SUFFIX>

meaning, that it is expanded as "<project-name>-<project-version>[-<filename-suffix>]"
where "-<filename-suffix>" is ommitted if not set. Note, that, some generators
(as far as Myake is concerned, might change case).

### Common settings

The following parameters may be set - note, however, that not all generators
support all of these (e.g. AUTHORS is only used by NuGet at the moment of 
writing):

FIXME

### Components

    my_package(
        COMPONENTS {
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

**See**:  
[MY_PROJECT_TOPLEVEL](Bits/Toplevel.md) 
#]==]
macro(my_package)
    message(DEBUG "my_package(${ARGN})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    # check generator and/or common
    set(__MY_PACK_ARGS ${ARGN})
    my_generator_category(category ${ARGV0})
    if(category)
        list(POP_FRONT __MY_PACK_ARGS)
        my_generator_iscommon(_MY_PACK_COMMON)
    endif()

    # FIXME

    if(category)
        my_generator_handle(${category})
    endif()
    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

