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

Tools and utilities for setting up CPack in a simplified manner.

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
set(CPACK_STRIP_FILES TRUE)
set(CPACK_THREADS 0)


#[==[.md:
## my_package

    my_package([<generator-category>]
        <settings>...
    )

This macro is the "landing" command for defining and generating source and 
binary software packages.

Available generator categories are 
Archive, Bundle, Cygwin, DEB, DragNDrop, External, FreeBSD, IFW, Nullsoft, 
NuGet, PackageMaker, productbuild, RPM, and, WIX. 
For more information, consult the [package generator](Package/Generator.md) 
documentation.

### Common settings

    my_package([<generator>|COMMON]
        [TARGET <target-prefix>]

        [NAME <project-name>]
        [VENDOR <project-vendor>]
        [VERSION <project-version>]

        [ARCHITECTURE <target-architecture>]
        [CATEGORY <application-category>]

        [AUTHORS
            [<list-of-authors>]
            [{
                FILE:
        }]
        [CONTACT <contact-email>]

        DESCRIPTION {
            SUMMARY <summary>
            [FILE <description-file>]
            [FULL <full-description>]
            [README <readme-file>]
            [WELCOME <welcome-file>]
        }
        LICENSE <license-tag> [{
            [FILE <license-file>]
        }]
        [URL {
            [HOMEPAGE <homepage-url>]
            [ABOUT <about-url>]
            [HELP <help-url>]
            [ICON <icon-url>]
            [LICENSE <license-url>]
        }]
        [ICON {
            [FILE <icon-file>]
            [INSTALL <install-icon-file>]
            [UNINSTALL <uninstall-icon-file>]
        }]

        [GENERATOR <generator-list>...]
        [CHECKSUM <checksum-type>]
        [CONFIG <output-config-suffix>]
        [SUFFIX <filename-suffix>]
        [FILE_NAME <filename-template>]

        [SOURCE {
            [GENERATOR <generator-list>...]
            [STRIP_FILES <FIXME>...]
            [IGNORE_FILES [DEFAULTS] <filename-ignore-patterns>...]
            [SUFFIX <filename-suffix>]
            [FILE_NAME <filename-template>]
        }]

        [COMPONENTS {
            <component-settings>...
        }]
    )

FIXME

### Generator expressions

The `my_package` macro supports the notion of [generator expressions](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html)
which are of the form

    $<VARNAME>

which are expanded like standard variable expansion but not immediately. This
allows to define template names. For example, the 'filename template' default
is

    $<NAME>-$<VERSION>$<[-]SUFFIX>

meaning, that it is expanded as "<project-name>-<project-version><filename-suffix>"
where "<filename-suffix>" is ommitted if not set.

### Components

    my_package(
        COMPONENTS {
            <component-options>...
        }
    )

[Components and groups](https://cmake.org/cmake/help/latest/module/CPackComponent.html) 
can be defined using the ``COMPONENTS`` option.

A component is defined by:

    COMPONENT <component-name> {
        [DISPLAY_NAME <display-name>]
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
        [DISPLAY_NAME name]
        [DESCRIPTION description]
        [EXPANDED]
        [BOLD_TITLE]

        [<sub-group>|<component-declaration>...]
    }

In both cases, the CPack options ``GROUP`` and ``PARENT_GROUP`` are 
automatically filled in.

Install types and downloads are declared using the options

    INSTALL_TYPE <typename> {
        [DISPLAY_NAME <display-name>]
    }

and

    DOWNLOADS <sitename> {
        [UPLOAD_DIRECTORY <dirname>]
        [ALL]
        [ADD_REMOVE|NO_ADD_REMOVE]
    }

### Handling sub-projects

At the time of writing, there's no support for handling sub-projects.

### Developer notes

All arguments passed to this macro are promoted to sub-macros and -functions 
through the variable ``__MY_PACKAGE_ARGS``.

**See**:  
[MY_PROJECT_TOPLEVEL](Bits/Toplevel.md)  
#]==]
macro(my_package)
    message(DEBUG "my_package(${ARGN})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[================================[.md:
## Internals
#]================================]

#[[.md:
### MY_PKG_COMMON

Common package options prefix.

See [CPack documentation](https://cmake.org/cmake/help/latest/module/CPack.html)
for further information.
#]]
my_structure_parse(TEMPLATE MY_PACK {
    TARGET:="package"

    NAME:="${PROJECT_NAME}"
    VENDOR:="${PROJECT_VENDOR}"
    VERSION:="${PROJECT_VERSION}"

    ARCHITECTURE:="${MY_ARCHITECTURE}"
    CATEGORY:

    AUTHORS:*
    CONTACT:

    DESCRIPTION:-{
        SUMMARY:
        FILE:
        FULL:
        README:
        WELCOME:
    }
    LICENSE:-{
        FILE:
    }
    URL:-{
        HOMEPAGE:
        ABOUT:
        HELP:
        ICON:
        LICENSE:
    }
    ICON:-{
        FILE:
        INSTALL:
        UNINSTALL:
    }

    GENERATOR:*="ZIP"
    CHECKSUM:
    CONFIG:
    SUFFIX:
    FILE_NAME:="$<NAME>-$<VERSION>$<[-]SUFFIX>"

    SOURCE:-{
        GENERATOR:*="ZIP"
        STRIP_FILES:*
        IGNORE_FILES:*
        CONFIG:
        SUFFIX:="source"
        FILE_NAME:
    }

    COMPONENTS:-{
        GROUP:{
            PARENT_GROUP:
            DISPLAY_NAME:
            DESCRIPTION:
            EXPANDED:-
            BOLD_TITLE:-

            @GROUP->PARENT_GROUP
            @COMPONENT->GROUP
        }
        COMPONENT:{
            GROUP:
            DISPLAY_NAME:
            DESCRIPTION:
            HIDDEN:- REQUIRED:- DISABLED:-
            DEPENDS:*
            INSTALL_TYPES:*
            DOWNLOADED:-
            ARCHIVE_FILE:
            PLIST:
        }
    }
})

