# My/Package - Packaging utilities

Tools and utilities for setting up CPack in a more structured manner.

See also gitlab's [Packaging with CPack](https://gitlab.kitware.com/cmake/community/wikis/doc/cpack/Packaging-With-CPack)
for more information.

## Overview

FIXME

## Reference
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

FIXME

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

In both cases, the CPack options ``GROUP`` and ``PARENT_GROUP`` are 
automatically filled in.

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
