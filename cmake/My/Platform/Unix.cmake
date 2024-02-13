# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform/Unix

**See**:  
[My/Platform](../Platform.md)  
[My/Platform/Common/Unix](Common/Unix.md)  
#]=======================================================================]

my_report(My/Platform %{BR} "Loaded platform settings: 'Unix'.")

# MY_PLATFORM_HIERARCHY
set(MY_PLATFORM_HIERARCHY "Unix")

# MY_USER_PREFIX
set(MY_USER_PREFIX "$ENV{HOME}" CACHE PATH "User-local system installation prefix.")
set(MY_USER_PATHS "${MY_USER_PREFIX}/share/cmake" CACHE PATH "CMake module search path.")

# common
include(My/Platform/Common/Unix)

