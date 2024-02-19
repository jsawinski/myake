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
# FIXME
set(CPACK_SET_DESTDIR ON)
set(CPACK_STRIP_FILES TRUE)
set(CPACK_THREADS 0)


#[==[.md:
## my_package

    my_package([<generator>]
        <settings>...
    )

This function is the "landing" command for declaring packages.

### Common settings

    my_package([<generator>] [COMMON]
        [NAME <project-name>]
        [VENDOR <project-vendor>]
        [VERSION <project-version>]
        DESCRIPTION {
            SUMMARY <summary>
            [FILE <description-file>]
            [FULL <full-description>]
            [README <readme-file>]
            [WELCOME <welcome-file>]
        }

        [INSTALL {
            [DIRECTORY <installation-directory>]
            [FILE <filename-template>]
        }]








        [AUTHORS <authors>]
        [CONTACT <contact-email>]

        LICENSE <license-tag> [{
            [FILE <license-file>]
        }]

        [ARCHITECTURE <target-architecture>]
        [CATEGORY <application-category>]


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

**See**:  
[MY_PROJECT_TOPLEVEL](Bits/Toplevel.md)  
#]==]
macro(my_package)
    message(DEBUG "my_package(${ARGN})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    # FIXME

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

