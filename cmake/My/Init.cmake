# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Init - Initialization

This module initializes Myake and loads the users `User/Init`.

Use the following two lines

	find_package(Myake QUIET)
	include(My/Init OPTIONAL)

before the ``project`` command.

Note, that the keyword ``OPTIONAL`` is essential in case /Myake/ is not
installed on the target system so that the project will configure and build
without.

If `Myake` is present, discovered settings are recorded in a report file
(use ``MY_REPORT=My cmake .`` from your build directory).

The author uses the following ``User/Init`` (see MY_USER_PATHS in the report
file):

	message(NOTICE "Using User/Init")
	list(APPEND CMAKE_MODULE_PATH "$ENV{HOME}/build/.settings")
	include(Project/Init)

Alternatively, if the directory ``.myake`` is present in the projects top
source directory, the file is loaded from this directory.

**See**:  
[My/Config](Config.md)  
[My/Lists](Lists.md)  
[My/Platform](Platform.md)  

#]=======================================================================]
include_guard(GLOBAL)

include(My/Report)

include(My/Bits/Auxiliary)
include(My/Bits/Toplevel)

include(My/Platform)

# local project settings
if(IS_DIRECTORY "${CMAKE_SOURCE_DIR}/.myake")
	my_add_cmake_module_path(PREPEND "${CMAKE_SOURCE_DIR}/.myake")
	message(TRACE "User/Init and associated files will be searched in: ${CMAKE_SOURCE_DIR}/.myake")

# platform settings and user init
elseif(DEFINED MY_USER_PATHS)
	my_add_cmake_module_path(PREPEND ${MY_USER_PATHS})
	message(TRACE "User/Init and associated files will be searched in: ${MY_USER_PATHS}")
endif()

include(User/Init OPTIONAL)

# initialize MY_INSTALL_STYLE
if(MY_PLATFORM_FOUND AND NOT DEFINED CACHE{MY_INSTALL_STYLE})
	if(NOT DEFINED MY_INSTALL_STYLE_INIT)
		set(MY_INSTALL_STYLE_INIT Default)
	endif()

	my_set(MY_INSTALL_STYLE "${MY_INSTALL_STYLE_INIT}" CACHE STRING "Installation style (${MY_INSTALL_STYLES}).")
	my_set_cache_property_strings(MY_INSTALL_STYLE Ignore Default ${MY_INSTALL_STYLE_LIST})

	# report
	message(VERBOSE "[Myake] Loaded platform '${CMAKE_HOST_SYSTEM_NAME}'.")
endif()

my_report(My/Variables %{BR} %{BR} %{50} "    MY_INSTALL_STYLE = $<MY_INSTALL_STYLE>" "Installation style.")
my_report(My/Variables %{BR})
foreach(__inststyle ${MY_INSTALL_STYLE_LIST})
	string(TOUPPER "${__inststyle}" __inststyle_uc)
	get_property(__docstring CACHE "MY_${__inststyle_uc}_PREFIX" PROPERTY HELPSTRING)

	my_report(My/Variables %{BR}
		%{30} "        ${__inststyle}" "${__docstring}"
	)
endforeach()

