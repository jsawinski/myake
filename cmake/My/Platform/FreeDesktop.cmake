# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform/FreeDesktop

Platform settings if host is following Free Desktop specifications.

**See**:
- [My/Platform/Common/Unix](Common/Unix.md)
#]=======================================================================]

my_report(My/Platform %{BR} "Loaded platform specific settings: 'FreeDesktop'.")

# sanity checks
if(NOT DEFINED ENV{XDG_DATA_DIRS})
	message(FATAL_ERROR "Expected environment variable XDG_DATA_DIRS to be set.")
endif()

if(NOT EXISTS "$ENV{HOME}/.local")
	message(FATAL_ERROR "Following Free Desktop specifications, the folder .local must exist in the user home directory.")
endif()

# MY_PLATFORM_FOUND
set(MY_PLATFORM_FOUND TRUE)

# MY_PLATFORM_HIERARCHY
set(MY_PLATFORM_HIERARCHY "FreeDesktop")

# MY_USER_PREFIX
set(MY_USER_PREFIX "$ENV{HOME}/.local" CACHE PATH "User-local system installation prefix.")
set(MY_USER_PATHS "${MY_USER_PREFIX}/share/cmake" CACHE PATH "CMake module search path.")

# common
include(My/Platform/Common/Unix)

