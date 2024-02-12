# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/External/Use/Module

## Reference
#]=======================================================================]
include_guard(GLOBAL)

function(my_external_use)
	__my_external_use(${ARGN})
endfunction()

macro(__my_external_use)
	message(TRACE "__my_external_use(${ARGN})")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

	list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

function(my_external_use_site sitename)
	__my_external_use_site(${sitename} ${ARGN})
endfunction()

macro(__my_external_use_site sitename)
	message(TRACE "__my_external_use_site(${sitename};${ARGN})")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

	list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[================================[.md:
## Internals
#]================================]

#[[.md:
### __my_external_use_run

This function distributes the function or macro calls to the respective
handlers.

#]]
macro(__my_external_use_run what)
	if(${what} STREQUAL SITE)
		__my_external_use_site(${ARGN})
	else()
		message(FATAL_ERROR "Myake/External/Git internal error: distribute failed")
	endif()
endmacro()





