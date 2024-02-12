# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Set - Extensions to CMake's set and related commands

Some programming patterns with respect to CMake ``set`` are recurring
frequently, such as, for example, setting a variable only if it is not yet set
(read defined) previously. Here, we extend the ``set``, as well as the
accompanying commands ``unset`` and ``list``, by such features.

## Reference
#]=======================================================================]
include_guard(GLOBAL)

#[==[.md:
### my_set

	my_set(<variable> <value>
		[UNSET]
		[PARENT_SCOPE]
		[FORCE]
		[CACHE AUTO|<type> [<docstring>]] [FORCE]]
		[ONCE
			[FATAL_ERROR "message"]
			[WARNING "warning message"]]
		[MODIFIED <outvar>]
	)

This macro is an extended version of CMake's `set`.

``UNSET`` indicates, that the variable should be cleared (see
[`my_unset`](Utils.md#markdown-header-my_unset)).

``PARENT_SCOPE`` indicates, that the variable will be set in the scope above
the current scope.

``CACHE`` will set or update a cache entry. If ``AUTO`` is provided it
determines the type (and docstring) of the existing cache entry, otherwise the
type defaults to INTERNAL (and the docstring to "undocumented").

``FORCE`` indicates that a cache value update should be enforced. This option
is ignored for normal variables.

``ONCE`` indicates that an already defined ``<variable>`` should not be changed.
If defined, either a ``FATAL_ERROR`` or ``WARNING`` message can be printed.

``MODIFIED`` will return ``TRUE`` if the variable was changed by this set
command.

**See**:
- [`my_unset`](Utils.md#markdown-header-my_unset)
- [`my_list`](Utils.md#markdown-header-my_list)
#]==]
macro(my_set variable)
	### parse arguments
	cmake_parse_arguments(__my_set "PARENT_SCOPE;FORCE;UNSET" "MODIFIED" "CACHE;ONCE" ${ARGN})
	set(__my_set_value ${__my_set_UNPARSED_ARGUMENTS})

	# parse ONCE, which may be a flag
	if(NOT DEFINED __my_set_ONCE)
		foreach(arg ${ARGN})
			if("${arg}" STREQUAL "ONCE")
				set(__my_set_ONCE "")
				break()
			endif()
		endforeach()
	endif()

	## check if variable is cached
	if(NOT DEFINED __my_set_CACHE)
		if(DEFINED CACHE{${variable}})
			set(__my_set_CACHE AUTO)
		endif()
	endif()

	## prepare MODIFIED
	if(__my_set_MODIFIED)
		set(__my_set_MODIFIED_value "${${variable}}")
	endif()

	## execute set
	# gather arguments
	set(__my_set_args)
	if(__my_set_PARENT_SCOPE)
		list(APPEND __my_set_args PARENT_SCOPE)
	endif()

	# handle cache variables
	if(DEFINED __my_set_CACHE)
		list(POP_FRONT __my_set_CACHE __my_set_CACHE_type)
		list(POP_FRONT __my_set_CACHE __my_set_CACHE_docstring)

		# infer TYPE
		if("${__my_set_CACHE_type}" STREQUAL "AUTO")
			if(DEFINED CACHE{${variable}})
				get_property(__my_set_CACHE_type CACHE "${variable}" PROPERTY TYPE)
			else()
				set(__my_set_CACHE_type INTERNAL)
			endif()
		endif()

		# infer DOCSTRING
		if("${__my_set_CACHE_docstring}" STREQUAL "")
			get_property(__my_set_CACHE_docstring CACHE "${variable}" PROPERTY HELPSTRING)
			if("${__my_set_CACHE_docstring}" STREQUAL "")
				set(__my_set_CACHE_docstring "undocumented")
			endif()
		endif()

		list(APPEND __my_set_args CACHE ${__my_set_CACHE_type} "${__my_set_CACHE_docstring}")

		# handle FORCE
		if(__my_set_FORCE)
			list(APPEND __my_set_args FORCE)
		endif()
	endif()

	# handle ONCE
	if(DEFINED __my_set_ONCE)
		if(DEFINED ${variable} OR DEFINED CACHE{${variable}})
			cmake_parse_arguments(__my_set_ONCE "" "FATAL_ERROR;WARNING" "" ${__my_set_ONCE})
			if(__my_set_ONCE_FATAL_ERROR)
				message(FATAL_ERROR "${__my_set_ONCE_FATAL_ERROR}")
			elseif(__my_set_ONCE_WARNING)
				message(WARNING "${__my_set_ONCE_WARNING}")
			endif()
			set(__my_set_ONCE TRUE)
		else()
			set(__my_set_ONCE FALSE)
		endif()
	endif()

	# do set or unset
	if(NOT __my_set_ONCE)
		if(__my_set_UNSET)
			if(DEFINED __my_set_CACHE)
				unset(${variable} CACHE)
			else()
				unset(${variable})
			endif()
		else()
			set(${variable} ${__my_set_value} ${__my_set_args})
		endif()
	endif()

	# MODIFIED?
	if(DEFINED __my_set_MODIFIED)
		if("${__my_set_MODIFIED_value}" STREQUAL "${${variable}}")
			set(${__my_set_MODIFIED} FALSE)
		else()
			set(${__my_set_MODIFIED} TRUE)
		endif()
	endif()
endmacro()

#[==[.md:
### my_unset

	my_unset(<variable> ...)

Unset a variable. This macro internally only calls [my_set](Utils.md#markdown-header-my_set)
#]==]
macro(my_unset variable)
	my_set(${variable} ~ UNSET ${ARGN})
endmacro()

#[==[.md:
### my_list

	my_list(<operation> <list> ... [UNIQUE] [PARENT_SCOPE])
	my_list(FRONT <list> ...)
	my_list(MODIFY <list> ...)

This macro extends the standard CMake ``list`` command with some operations.

After modification this function calls [`my_set`](Utils.md#markdown-header-my_set)
to ensure that CACHE variables are updated.

Option ``UNIQUE`` indicates, that duplicates should be automatically removed.
Option ``PARENT_SCOPE`` indicates, that the list operations should be
propagated to parent scope.

#### ``FRONT``

	my_list(FRONT <list> <out-var>...)

In addition to standard list features, ``FRONT`` behaves akin to ``POP_FRONT``,
except that it will not remove elements from the list.

#### ``MODIFY``

	my_list(MODIFY <list> REMOVE [REGEX] <pattern>)
	my_list(MODIFY <list> REPLACE [REGEX] <pattern> <value>)
	my_list(MODIFY <list> APPEND <value>)

Option ``REMOVE`` removes a pattern from the list.

Option ``REPLACE`` replaces a pattern from the list with a value.

Option ``APPEND`` appends a value.

Option ``REGEX`` indicates that regular expression matching instead of string
equality should be used for pattern matching.

**See**:
- [`my_set`](Utils.md#markdown-header-my_set)
#]==]
macro(my_list operation thelist)
	# parse arguments
	cmake_parse_arguments(__my_list "UNIQUE;PARENT_SCOPE" "" "" ${ARGN})
	set(__my_list_args ${__my_list_UNPARSED_ARGUMENTS})

	set(__my_list_set_args)
	if(__my_list_PARENT_SCOPE)
		list(APPEND __my_list_set_args PARENT_SCOPE)
	endif()

	# save locally
	set(__my_list ${${thelist}})

	# handle operations
	if("${operation}" STREQUAL "FRONT")
		list(LENGTH __my_list_args __my_list_args_n)
		list(LENGTH ${thelist} __my_list_length)
		if(__my_list_args_n GREATER __my_list_length)
			set(__my_list_args_n ${__my_list_length})
		endif()

		math(EXPR __my_list_args_n "${__my_list_args_n} - 1")
		foreach(index RANGE ${__my_list_args_n})
			list(GET __my_list_args ${index} __my_list_varname)
			list(GET ${thelist} ${index} ${__my_list_varname})
			my_set(${__my_list_varname} ${${__my_list_varname}})
		endforeach()
	elseif("${operation}" STREQUAL "MODIFY")
		list(POP_FRONT __my_list_args __my_list_cmd)

		# regex?
		set(__my_list_regex FALSE)
		list(GET __my_list_args 0 __my_list_arg_peek)
		if("${__my_list_arg_peek}" STREQUAL "REGEX")
			list(POP_FRONT __my_list_args)
			set(__my_list_regex TRUE)
		endif()

		if("${__my_list_cmd}" STREQUAL "REMOVE")
			list(POP_FRONT __my_list_args __my_list_pattern)

			set(__my_list)
			foreach(element IN LISTS ${thelist})
				if(__my_list_regex AND NOT "${element}" MATCHES "${__my_list_pattern}"
						OR NOT "${element}" STREQUAL "${__my_list_pattern}")
					 list(APPEND __my_list ${element})
				endif()
			endforeach()
			set(${thelist} ${__my_list})
		elseif("${__my_list_cmd}" STREQUAL "REPLACE")
			list(POP_FRONT __my_list_args __my_list_pattern)
			list(POP_FRONT __my_list_args __my_list_value)

			set(__my_list)
			if(__my_list_regex)
				foreach(element IN LISTS ${thelist})
					if("${element}" MATCHES "${__my_list_pattern}")
						 list(APPEND __my_list ${__my_list_value})
					else()
						 list(APPEND __my_list ${element})
					endif()
				endforeach()
			else()
				foreach(element IN LISTS ${thelist})
					if("${element}" STREQUAL "${__my_list_pattern}")
						 list(APPEND __my_list ${__my_list_value})
					else()
						 list(APPEND __my_list ${element})
					endif()
				endforeach()
			endif()
			set(${thelist} ${__my_list})
		elseif("${__my_list_cmd}" STREQUAL "APPEND")
			list(POP_FRONT __my_list_args __my_list_value)
			list(APPEND ${thelist} ${__my_list_value})
		else()
			message(FATAL_ERROR "Invalid ACTION for list(MODIFY ...) operation.")
		endif()
	else()
		list(${operation} __my_list ${__my_list_UNPARSED_ARGUMENTS})
	endif()

	# remove duplicates
	if(__my_list_UNIQUE)
		list(REMOVE_DUPLICATES __my_list)
	endif()

	# use my_set to update CACHE, PARENT_SCOPE etc.
	my_set(${thelist} "${__my_list}" ${__my_list_set_args})
endmacro()

