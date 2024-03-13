# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Toplevel

Check if this project is the top-level project.

## Reference
#]=======================================================================]

#[==[.md:
### MY_PROJECT_TOPLEVEL

If this project is the top-level project, the variable `MY_PROJECT_TOPLEVEL` is
``TRUE``, ``FALSE`` otherwise.

#]==]
if(CMAKE_SOURCE_DIR STREQUAL PROJECT_SOURCE_DIR)
    set(MY_PROJECT_TOPLEVEL TRUE)
else()
    set(MY_PROJECT_TOPLEVEL FALSE)
endif()

