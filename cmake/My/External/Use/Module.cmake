# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/External/Use/Module

## Reference
#]=======================================================================]
include_guard(GLOBAL)

function(my_external_use)
    __my_external_use(${ARGN})
endfunction()

macro(__my_external_use)
endmacro()

function(my_external_use_site sitename)
    __my_external_use_site(${sitename} ${ARGN})
endfunction()

macro(__my_external_use_site sitename)
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





