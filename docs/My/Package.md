# My/Package - Packaging utilities

Tools and utilities for setting up CPack in a simplified manner.

Inspired by and some code copied from
	 https://github.com/neurosuite/libneurosuite/blob/master/cmake/modules/PackNeurosuite.cmake,
	 Copyright 2015 by Florian Franzen

	 Neurosuite was published under the GPL v2.
	 See https://github.com/neurosuite/libneurosuite/blob/master/LICENSE.txt

See also gitlab's [Packaging with CPack](https://gitlab.kitware.com/cmake/community/wikis/doc/cpack/Packaging-With-CPack)
for more information.

## Overview

FIXME

## Reference
## my_package

	my_package([<generator-category>]
		<settings>...
	)

This macro is the "landing" command for defining and generating source and 
binary software packages.

Available generator categories are Archive, Bundle, Cygwin, DEB, DragNDrop, 
External, FreeBSD, IFW, Nullsoft, NuGet, PackageMaker, productbuild, RPM, and, 
WIX. For more information, consult the 
[package generator](Package/Generator.md) documentation.

### Common settings

	my_package([<generator>
			[COMMON]
			[TARGET <target-name>]
		]

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

		[GENERATOR <default-generator-list>]
		[CHECKSUM <checksum-type>]
		[CONFIG <output-config-suffix>]
		[SUFFIX <filename-suffix>]
		[FILE_NAME <filename-template>]

		[SOURCE {
			[GENERATOR <generator-list>...]
			[STRIP_FILES <FIXME>...]
			[IGNORE_FILES [DEFAULTS] <filename-ignore-patterns>...]
			[CONFIG <output-config-suffix>]
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
## Internal
### my_components

	my_components(<parent>
		<component-options>...
	)

This macro builds components and component groups with a parent (that can be empty).

The component options are described in [my_package](#my_package).

### __MY_PACKAGE_COMMON__

Common package options prefix.

