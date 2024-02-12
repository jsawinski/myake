# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

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

# === Initialize sane defaults.
set(CPACK_GENERATOR "ZIP")
set(CPACK_SYSTEM_NAME "${CMAKE_SYSTEM_NAME}-${CMAKE_SYSTEM_PROCESSOR}")
set(CPACK_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})

#[==[.md:
### my_generator_category

	my_generator_category(<output-variable> <cpack-generator>)

Get generator category and assign it to the <output-variable>.

Known generator categories are:

	Archive (7Z, TBZ2, TGZ, TXZ, TZ, TZST, and, ZIP),
	Bundle,
	Cygwin,
	DEB,
	DragNDrop,
	External,
	FreeBSD,
	IFW,
	Nullsoft (NSIS and NSIS64),
	NuGet,
	PackageMaker,
	productbuild,
	RPM, and,
	WIX.

**See also**:
- [my_package](../Package.md#markdown-header-my_package)
#]==]
set(__MYAKE_GENERATOR_ARCHIVE_LIST "7Z;TBZ2;TGZ;TXZ;TZ;TZST;ZIP")
set(__MYAKE_GENERATOR_NULLSOFT_LIST "NSIS;NSIS64")

set(__MYAKE_GERERATOR_WITH_SUBCATEGORIES "Nullsoft;Archive")

set(__MYAKE_GENERATOR_CATEGORY_LIST "Archive;Bundle;DEB;Cygwin;DragNDrop;External;FreeBSD;IFW;NSIS;NuGet;PackageMaker;productbuild;RPM;WIX")

macro(my_generator_category outvar generator)
	message(TRACE "my_generator_category(${outvar} ${generator})")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

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
### my_generator_handle

	my_generator_handle(<generator-category>)

Divert calls to respective generator macro.

This macro is only used by [my_package](../Package.md#markdown-header-my_package).

#]==]
macro(my_generator_handle category)
	# load module
	include(My/Package/Generator/${category})

	# FIXME from CMake 3.18 on, change to cmake_language command
	if(${category} STREQUAL "Archive")
		my_generator_archive()
#	elseif(${category} STREQUAL Bundle)
#	elseif(${category} STREQUAL Cygwin)
	elseif(${category} STREQUAL DEB)
		my_generator_deb()
#	elseif(${category} STREQUAL DragNDrop)
#	elseif(${category} STREQUAL External)
#	elseif(${category} STREQUAL FreeBSD)
#	elseif(${category} STREQUAL IFW)
#	elseif(${category} STREQUAL Nullsoft)
#	elseif(${category} STREQUAL NuGet)
#	elseif(${category} STREQUAL PackageMaker)
#	elseif(${category} STREQUAL productbuild)
#	elseif(${category} STREQUAL RPM)
#	elseif(${category} STREQUAL WIX)
	else()
		message(FATAL_ERROR "Internal error: unhandled generator '${category}'.")
	endif()
endmacro()

#[==[.md:
### my_generator_reset

	my_generator_reset()

Reset all CPACK* variables.
#]==]
macro(my_generator_reset)
	get_cmake_property(allvars VARIABLES)
	foreach(var ${allvars})
		if(var MATCHES "^CPACK_SET_DESTDIR$")
			# ignore
		elseif(var MATCHES "^CPACK")
			unset(${var})
			unset(${var} CACHE)
		endif()
	endforeach()
endmacro()

#[==[.md:
### my_generator_iscommon

	my_generator_iscommon(outvar)

Check if options are `COMMON` (first arguments after generator category).

#]==]
macro(my_generator_iscommon outvar)
	list(GET __MY_PACKAGE_ARGS 0 arg0)
	if("${arg0}" STREQUAL "COMMON")
		set(${outvar} TRUE)
		list(POP_FRONT __MY_PACKAGE_ARGS)
	else()
		set(${outvar} FALSE)
	endif()
endmacro()

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
macro(my_generator_config)
	message(TRACE "my_generator_config(...)")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

	cmake_parse_arguments(__my_generator "" "" "VARIABLES;TEMPLATES;GET;POPULATE" ${ARGN})

	# VARIABLES
	if(__my_generator_VARIABLES)
		list(APPEND __my_generator_VARIABLES MY_PACKAGE_COMMON)
		set(MY_GENERATOR_CONFIG_VARIABLES ${__my_generator_VARIABLES})
	endif()

	# TEMPLATES
	if(__my_generator_TEMPLATES)
		set(MY_GENERATOR_CONFIG_TEMPLATES ${__my_generator_TEMPLATES})
	endif()

	# GET
	if(__my_generator_GET)
		message(TRACE "GET ${__my_generator_GET}")

		# sanity check
		list(LENGTH __my_generator_GET __my_generator_GET_ARGN)
		if(NOT __my_generator_GET_ARGN EQUAL 2)
			message(FATAL_ERROR "Expected 2 arguments after GET.")
		endif()

		# find entry
		list(GET __my_generator_GET 0 outvar)
		list(GET __my_generator_GET 1 pattern)

		unset(${outvar})
		foreach(prefix ${MY_GENERATOR_CONFIG_VARIABLES})
			message(TRACE "    CHECKING ${prefix}_${pattern}")
			if(DEFINED ${prefix}_${pattern})
				message(TRACE "    FOUND: ${${prefix}_${pattern}}")
				set(${outvar} ${${prefix}_${pattern}})
				break()
			endif()
		endforeach()
	endif()

	# POPULATE
	if(__my_generator_POPULATE)
		list(POP_FRONT __my_generator_POPULATE outprefix)

		# populate CPACK_ variables
		set(MY_GENERATOR_CONFIG_POPULATE ${__my_generator_POPULATE})

		foreach(variable ${MY_GENERATOR_CONFIG_POPULATE})
			string(REGEX REPLACE "=.*$" "" outvar "${variable}")
			string(REGEX REPLACE "^[^=]*=" "" variable "${variable}")

			my_generator_config(GET ${outprefix}_${outvar} ${variable})
		endforeach()

		# special
		if(CPACK_SOURCE_IGNORE_FILES)
			string(REGEX REPLACE "DEFAULTS" "/CVS/;/[.]svn/;/[.]bzr/;/[.]hg/;/[.]git/;[.]swp$;[.]#;/#"
				CPACK_SOURCE_IGNORE_FILES "${CPACK_SOURCE_IGNORE_FILES}")
		endif()

		# pull in template variables
		foreach(template ${MY_GENERATOR_CONFIG_TEMPLATES})
			my_generator_config(GET ${template} ${template})
		endforeach()

		# replace templates
		foreach(variable ${MY_GENERATOR_CONFIG_POPULATE})
			string(REGEX REPLACE "=.*$" "" outvar "${variable}")

			if(${outprefix}_${outvar} AND "${${outprefix}_${outvar}}" MATCHES "[$][<]")
				string(REGEX MATCHALL "[$]<[^>]+>" subst "${${outprefix}_${outvar}}")

				foreach(pattern ${subst})
					string(REGEX REPLACE "^[$]<[[]([^[]]*)[]].*" "\\1" prefix "${pattern}")
					if(prefix STREQUAL pattern)
						unset(prefix)
					endif()
					string(REGEX REPLACE ".*[[]([^]]*)[]]>$" "\\1" suffix "${pattern}")
					if(suffix STREQUAL pattern)
						unset(suffix)
					endif()
					string(REGEX REPLACE "^[$]<([[][^]]*[]])?(.*)([[][^]]*[]])?>$" "\\2" substvar "${pattern}")

					if(DEFINED ${substvar})
						string(REPLACE "${pattern}" "${prefix}${${substvar}}${suffix}" ${outprefix}_${outvar} "${${outprefix}_${outvar}}")
					else()
						string(REPLACE "${pattern}" "" ${outprefix}_${outvar} "${${outprefix}_${outvar}}")
					endif()
				endforeach()
			endif()
		endforeach()
	endif()

	list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[==[.md:
### my_generator_emit()

	my_generator_emit()

Create CPack configuration files.
#]==]
macro(my_generator_emit)
	# set defaults
	if(NOT DEFINED CPACK_GENERATOR)
		set(CPACK_GENERATOR ZIP)
	endif()
	if(NOT DEFINED CPACK_SOURCE_GENERATOR)
		set(CPACK_SOURCE_GENERATOR ZIP)
	endif()

	set(CPACK_VERBATIM_VARIABLES TRUE)

	# sanity check for failed <> substitutions
	get_cmake_property(__mypkg_allvars VARIABLES)
	foreach(var ${__mypkg_allvars})
		if(var MATCHES "^CPACK")
			if("${${var}}" MATCHES "[<][^<>]+[>]" AND # <var[@OPTION]> format
					NOT "${${var}}" MATCHES "[<][^@<>]+@[^.@<>]+[.][^@<>]+[>]") # email address format
				message(FATAL_ERROR "Internal error: unsubstituted variable: ${var}")
			endif()
		endif()
	endforeach()

	# reload CPack
	unset(CPack_CMake_INCLUDED)
	include(CPack)
endmacro()





