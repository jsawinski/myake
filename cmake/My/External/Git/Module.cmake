# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/External/Git/Module

## Reference
#]=======================================================================]
include_guard(GLOBAL)

macro(__my_external_git_site sitename)
	message(TRACE "__my_external_git_site(${sitename};${ARGN})")
	list(APPEND CMAKE_MESSAGE_INDENT "	")

	# reset options
	my_options_parse(GIT RESET
		OPTIONS __MY_EXTERNAL_SITE_GITOPT {
			DIRECTORY:
			REPOSITORY:
			TAG:
			BRANCH:
			SHALLOW:
			PROGRESS:
			CONFIG:*
			REMOTE:-{
				NAME:
				STRATEGY:
			}
			SUBMODULES:*{
				RECURSE:
			}
			TAINTED:=fail
			RATELIMIT:=5
		}
	)

	# load existing config if exists
	set(GIT_SITE_DIR ${MY_EXTERNAL_SITE_${sitename}_DIR})
	include(${GIT_SITE_DIR}/config.cmake OPTIONAL)

	# parse arguments
	my_options_parse(GIT REPLACE
		OPTIONS __MY_EXTERNAL_SITE_GITOPT
		${ARGN}
	)

	# sanity checks
	if(GIT_UNPARSED_ARGUMENTS)
		message(FATAL_ERROR "Unrecognized options: ${GIT_UNPARSED_ARGUMENTS}")
	endif()

	# defaults
	if(NOT GIT_REMOTE_NAME)
		set(GIT_REMOTE_NAME origin)
	endif()

	if(NOT GIT_REMOTE_STRATEGY)
		set(GIT_REMOTE_STRATEGY checkout)
	endif()

	if(NOT DEFINED GIT_SHALLOW)
		set(GIT_SHALLOW FALSE)
	endif()

	if(NOT DEFINED GIT_PROGRESS)
		set(GIT_PROGRESS FALSE)
	endif()

	if(NOT DEFINED GIT_SUBMODULES_RECURSE)
		set(GIT_SUBMODULES_RECURSE FALSE)
	endif()

	# extra settings
	set(GIT_EXTRA_SETTINGS)

	# configure scripts
	foreach(script config.cmake pull.cmake)
		configure_file(${MY_EXTERNAL_SOURCE_DIR}/Git/${script}.in
			${GIT_SITE_DIR}/${script} @ONLY)
	endforeach()

	list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[================================[.md:
## Internals
#]================================]

__my_external_add_commands(PULL COMMIT PUSH CLONE CHECKOUT)

#[[.md:
### __my_external_git_run

This function distributes the function or macro calls to the respective
handlers.

#]]
macro(__my_external_git_run what)
	if(${what} STREQUAL SITE)
		__my_external_git_site(${ARGN})
	else()
		message(FATAL_ERROR "Myake/External/Git internal error: distribute failed for '${what}'")
	endif()
endmacro()





