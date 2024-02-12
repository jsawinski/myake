# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Platform/Linux

**See**:
- [My/Platform/FreeDesktop](FreeDesktop.md)
- [My/Platform/Unix](Unix.md)
#]=======================================================================]
my_report(My/Platform %{BR} "Loaded platform specific settings: 'Linux'.")

if(DEFINED ENV{XDG_DATA_DIRS})
	include(My/Platform/FreeDesktop)
else()
	include(My/Platform/Unix)
endif()

