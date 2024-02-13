# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Config - Project configuration settings

This file should be included directly after the ``project`` command in the
`CMakeLists.txt` file:

	include(My/Config OPTIONAL)

**See**:  
[My/Init](Init.md)  
[My/Lists](Lists.md)  

#]=======================================================================]

# Platform configuration
include(My/Platform)

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
	# remember default
	set(MY_DEFAULT_PREFIX "${CMAKE_INSTALL_PREFIX}" CACHE INTERNAL "Default CMake installation prefix.")
endif()

if(MY_PLATFORM_FOUND)
	string(TOUPPER "${MY_INSTALL_STYLE}" MY_INSTALL_STYLE_UC)

	if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
		# initial setting from MY_INSTALL_STYLE
		if(NOT "${MY_INSTALL_STYLE_UC}" STREQUAL DEFAULT AND NOT "${MY_INSTALL_STYLE_UC}" STREQUAL IGNORE)
			my_set(CMAKE_INSTALL_PREFIX ${MY_${MY_INSTALL_STYLE_UC}_PREFIX} FORCE)
			message("Install prefix set to: ${CMAKE_INSTALL_PREFIX} from MY_${MY_INSTALL_STYLE_UC}_PREFIX=${MY_${MY_INSTALL_STYLE_UC}_PREFIX}")
		endif()
	else()
		if(NOT "${MY_INSTALL_STYLE-SAVED}" STREQUAL "${MY_INSTALL_STYLE}")
			# MY_INSTALL_STYLE changed, update CMAKE_INSTALL_PREFIX
			if(NOT "${MY_INSTALL_STYLE_UC}" STREQUAL IGNORE)
				my_set(CMAKE_INSTALL_PREFIX ${MY_${MY_INSTALL_STYLE_UC}_PREFIX} FORCE)
				message("Install prefix set to: ${CMAKE_INSTALL_PREFIX} from MY_${MY_INSTALL_STYLE_UC}_PREFIX=${MY_${MY_INSTALL_STYLE_UC}_PREFIX}")
			endif()
		endif()

		# check CMAKE_INSTALL_PREFIX
		if(NOT "${MY_INSTALL_STYLE_UC}" STREQUAL IGNORE)
			if(NOT "${CMAKE_INSTALL_PREFIX}" STREQUAL "${MY_${MY_INSTALL_STYLE_UC}_PREFIX}")
				message(WARNING "CMAKE_INSTALL_PREFIX has been changed not using 'MY_INSTALL_STYLE'. Setting MY_INSTALL_STYLE to IGNORE.")
				my_set(MY_INSTALL_STYLE Ignore FORCE)
			endif()
		endif()
	endif()

	my_set(MY_INSTALL_STYLE-SAVED "${MY_INSTALL_STYLE}" CACHE INTERNAL)
endif()

# load global user init
include(User/Config OPTIONAL)
