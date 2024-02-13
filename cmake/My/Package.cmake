# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
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
#]=======================================================================]
include_guard(GLOBAL)

include(My/Bits/Set)
include(My/Bits/Options)
include(My/Build)

include(My/Package/Generator)

include(CPackComponent)

# defaults
set(CPACK_SET_DESTDIR ON) # this is, e.g., necessary for packaging symbolically linked files

#[==[.md:
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
#]==]
macro(my_package)
	message(DEBUG "my_package(${ARGN})")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

	# prepare
	set(__MY_PACKAGE_ARGS ${ARGN})

	# <generator>?
	list(GET __MY_PACKAGE_ARGS 0 arg0)
	my_generator_category(__MY_PACKAGE_CATEGORY ${arg0})

	if(__MY_PACKAGE_CATEGORY)
		message(TRACE "generator category: ${__MY_PACKAGE_CATEGORY}")
		list(POP_FRONT __MY_PACKAGE_ARGS)
	endif()

	# parse args
	if(__MY_PACKAGE_CATEGORY)
		my_generator_reset()
		my_generator_handle(${__MY_PACKAGE_CATEGORY})
	else()
		my_generator_iscommon(COMMON) # ignored, only swallow option

		my_options_parse(MY_PACKAGE_COMMON
			OPTIONS __MY_PACKAGE_COMMON__
			${__MY_PACKAGE_ARGS}
		)
		set(__MY_PACKAGE_ARGS ${MY_PACKAGE_COMMON_UNPARSED_ARGUMENTS})

		if(__MY_PACKAGE_ARGS)
			message(FATAL_ERROR "Unrecognized arguments passed to my_package: ${__MY_PACKAGE_ARGS}")
		endif()
	endif()

	list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[==[.md:
## Internal
#]==]

#[[.md:
### my_components

	my_components(<parent>
		<component-options>...
	)

This macro builds components and component groups with a parent (that can be empty).

The component options are described in [my_package](#my_package).

#]]
macro(my_components parent)
	message(TRACE "my_components(${ARGN})")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

	# parent?
	if("${parent}" MATCHES "^[A-Za-z]*")
		set(__my_components_parent ${parent})
	else()
		set(__my_components_parent)
	endif()

	# loop over arguments
	set(__my_components_args ${ARGN})

	list(LENGTH __my_components_args __my_components_n)
	while(${__my_components_n} GREATER 0)
		# COMPONENT/GROUP
		list(POP_FRONT __my_components_args __my_components_option)
		if(NOT __my_components_option STREQUAL COMPONENT
				AND NOT __my_components_option STREQUAL GROUP)
			message(FATAL_ERROR "Expected COMPONENT or GROUP option. Unbalanced curly braces?")
		endif()

		# "name"
		list(POP_FRONT __my_components_args __my_components_name)
		if(__my_components_name STREQUAL ""
				OR "${__my_components_name}" STREQUAL "{")
			message(FATAL_ERROR "Expected a name after '${__my_components_option}'.")
		endif()

		# { <parameters>... }
		list(GET __my_components_args 0 __my_components_brace)
		if(NOT "${__my_components_brace}" STREQUAL "{")
			message(FATAL_ERROR "Expected a curly opening brace after: ${__my_components_option} ${__my_components_name}")
		endif()

		my_options_capture(__my_components_args __my_components_param)

		# handle it
		if(__my_components_option STREQUAL COMPONENT)
			message(TRACE "COMPONENT ${__my_components_name}: ${__my_components_param}")

			if(__my_components_parent)
				cpack_add_component(${__my_components_name}
					${__my_components_param}
					GROUP ${__my_components_parent})
			else()
				cpack_add_component(${__my_components_name}
					${__my_components_param})
			endif()

			# unparsed arguments
			#FIXME
			# string(TOUPPER "${__my_components_name}" __MY_COMPONENTS_NAME)
			# CPACK_COMPONENT_${__MY_COMPONENTS_NAME}_UNPARSED_ARGUMENTS
		elseif(__my_components_option STREQUAL GROUP)
			message(TRACE "GROUP ${__my_components_name}: ${__my_components_param}")

			if(__my_components_parent)
				cpack_add_component_group(${__my_components_name}
					${__my_components_param}
					PARENT_GROUP ${__my_components_parent})
			else()
				cpack_add_component_group(${__my_components_name}
					${__my_components_param})
			endif()

			cpack_add_component_group(${__my_components_name}
				${__my_components_param}
				${__my_components_parent})

			# unparsed arguments
			string(TOUPPER "${__my_components_name}" __MY_COMPONENTS_NAME)
			my_components(${__my_components_name} ${CPACK_COMPONENT_GROUP_${__MY_COMPONENTS_NAME}_UNPARSED_ARGUMENTS})
		else()
			message(FATAL_ERROR "Component declaration '${__my_components_option}' not recognized.")
		endif()

		list(LENGTH __my_components_args __my_components_n)
	endwhile()

	list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[[.md:
### __MY_PACKAGE_COMMON__

Common package options prefix.

#]]
my_options_parse(OPTIONS __MY_PACKAGE_COMMON__ {
	NAME:="${PROJECT_NAME}"
	VENDOR:="${PROJECT_VENDOR}"
	VERSION:="${PROJECT_VERSION}"

	ARCHITECTURE:
	CATEGORY:

	AUTHORS:*{
		FILE:
	}
	CONTACT:

	DESCRIPTION:{
		SUMMARY:
		FILE:
		FULL:
		README:
		WELCOME:
	}
	LICENSE:[1]{
		FILE:
	}
	URL:{
		HOMEPAGE:
		ABOUT:
		HELP:
		ICON:
		LICENSE:
	}
	ICON:{
		FILE:
		INSTALL:
		UNINSTALL:
	}

	GENERATOR:*=ZIP
	CHECKSUM:
	CONFIG:
	SUFFIX:
	FILE_NAME:="$<NAME>-$<VERSION>$<[-]SUFFIX>"

	SOURCE:{
		GENERATOR:*={ ZIP }
		STRIP_FILES:*
		IGNORE_FILES:*
		CONFIG:
		SUFFIX:=source
		FILE_NAME:
	}

	COMPONENTS:{}
})

