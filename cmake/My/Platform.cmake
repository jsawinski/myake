# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform - Platform and operating system detection

This module is automatically loaded by `My/Init` and detects platform or 
operating system dependent settings (for a report, see [My/Config](Config.md)).

## Reference
### MY_PLATFORM_FOUND

This boolean variable is set to ``TRUE`` if the host platform is known to 
Myake, ``FALSE`` otherwise.

### MY_PLATFORM_HIERARCHY

This indicates the host platform's file-system hierarchy style. It is of
informational character, only. Unless specific standards apply, this will
be the host's name as known to CMake (``CMAKE_HOST_SYSTEM_NAME``).

**See**:
- [CMAKE_HOST_SYSTEM_NAME](https://cmake.org/cmake/help/latest/variable/CMAKE_HOST_SYSTEM_NAME.html)

### MY_USER_HOME

The user's home folder.

### MY_USER_PREFIX

The user's application and data directory.

### MY_USER_PATHS

The list of paths where to find local cmake files.

### MY_INSTALL_STYLE

The installation style is a system dependent setting. Common to all styles is
``Default`` (which refers to CMake's default CMAKE_INSTALL_PREFIX), and,
``User`` for installation for the current user's access after compilation.

The default can be seeded using ``MY_INSTALL_STYLE_INIT``.

### MY_INSTALL_STYLE_LIST

This variable contains the list of available options to [MY_INSTALL_STYLE](#markdown-header-MY_INSTALL_STYLE).

### MY_<style>_PREFIX

Installation path for <style> (upper-case).

## Includes

[My/Platform/Linux](Platform/Linux.md)  
[My/Platform/Unix](Platform/Unix.md)  
[My/Platform/FreeDesktop](Platform/FreeDesktop.md)  

[My/Platform/Common/Unix](Platform/Common/Unix.md)  

[My/Platform/Debian/Seciont](Platform/Debian/Secion.md)  


#]=======================================================================]

include(My/Bits/Set)
include(My/Bits/Auxiliary)

# load platform settings (once)
if(NOT __MY_PLATFORM_SETTINGS_LOADED)
	# set defaults
	if(NOT DEFINED MY_INSTALL_STYLE_INIT)
		set(MY_INSTALL_STYLE_INIT Default)
	endif()

	set(MY_PLATFORM_FOUND FALSE)
	set(MY_PLATFORM_HIERARCHY "unknown")
	unset(MY_USER_HOME)
	unset(MY_USER_PREFIX)
	unset(MY_USER_PATHS)

	# load platform specific settings
	include(My/Platform/${CMAKE_HOST_SYSTEM_NAME} OPTIONAL)

	# system name
	string(TOUPPER ${CMAKE_HOST_SYSTEM_NAME} MY_SYSTEM_NAME)
	string(TOLOWER ${CMAKE_HOST_SYSTEM_NAME} my_system_name)
endif()
set(__MY_PLATFORM_SETTINGS_LOADED TRUE)

my_report(My/Variables %{BR} %{50} "    MY_PLATFORM_FOUND = $<MY_PLATFORM_FOUND>")
my_report(My/Variables %{BR} %{50} "    MY_PLATFORM_HIERARCHY = $<MY_PLATFORM_HIERARCHY>" "The platform's file-system hierarchy style.")
my_report(My/Variables %{BR}
					   %{BR} %{50} "    MY_USER_HOME = $<MY_USER_HOME>" "User's home folder.")
my_report(My/Variables %{BR} %{50} "    MY_USER_PATHS = $<MY_USER_PATHS>" "CMake module search paths.")

my_report(My/Variables %{BR})
my_report(My/Variables %{BR}
	"        MY_DEFAULT_PREFIX = $<MY_DEFAULT_PREFIX>"
)
foreach(__inststyle ${MY_INSTALL_STYLE_LIST})
	string(TOUPPER "${__inststyle}" __inststyle_uc)
	my_report(My/Variables %{BR}
		"        MY_${__inststyle_uc}_PREFIX = ${MY_${__inststyle_uc}_PREFIX}"
	)
endforeach()

