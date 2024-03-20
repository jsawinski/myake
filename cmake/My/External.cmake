# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/External - External data management

This module provides the infrastructure for handling external or related data
of a project during either configuration or build stage.

For example, a project uses large test files which are not suitable for source
code distribution but are essential for developers. These file may be hosted
elsewhere but may be downloaded automatically during a CMake run if testing
is enabled.

Other scenarios may include development cycle steps, such as uploading project
documentation or packages at the project build stage (such as a "upload"
target).

Note, that by including this module, user settings may be loaded from
`User/External`.

**See also**:\\
[``ExternalProject``](https://cmake.org/cmake/help/latest/module/ExternalProject.html)\\
[``FetchContent``](https://cmake.org/cmake/help/latest/module/FetchContent.html)

## Overview

FIXME

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Bits/Set)
include(My/Bits/String)

include(My/Report)

#[==[.md:
### my_external

    my_external(
        <property> <property-options>...
    )

This landing function calls the respective functions for\\
``SITE`` ([my_external_site](#markdown-header-my_external_site)),\\
``TARGET`` ([my_external_target](#markdown-header-my_external_target)),\\
``DOWNLOAD``,``VERIFY``,``UPLOAD``, ... ([my_external_command](#markdown-header-my_external_command)),\\
etc.

If multiple properties should be set, brace-enclosed lists may be used:

    my_external(
        <property1> { [<property1 options>...] }
        <property2> { [<property2 options>...] }
        ...
    )

The parser is not sensitive to which options appear within braces (therefore,
an empty '{ }' may also separate properties), it is, though, strongly
recommended to use essential declarative options before the brace-enclosed
option list. For example:

    my_external(
        SITE my-site-name GIT {
            <git options>...
        }

        SITE my-sub-site-name {
            USE my-site-name
            <git options>...
        }

        DOWNLOAD my-site-name {}
    )

which is identical to

    my_external_site(my-site-name GIT
        <git options>...
    )
    my_external_site(my-sub-site-name
        USE my-site-name
        <git options>...
    )
    my_external_commandwnload(my-site-name)

#]==]
function(my_external)
    __my_external(${ARGN})
endfunction()

macro(__my_external)
    set(commands SITE ${MY_EXTERNAL_COMMANDS})

    set(args ${ARGN})
    set(runargs)

    list(LENGTH args arglen)
    while(${arglen} GREATER 0)
        list(POP_FRONT args arg0)
        list(FIND commands "${arg0}" what)

        if(what GREATER_EQUAL 0)
            if(runargs)
                __my_external_run(${runargs})
            endif()

            set(runargs ${arg0} -)
            __my_external_capture(args runargs)
        else()
            message(FATAL_ERROR "Expected any of '${commands}' near: ${arg0}")
        endif()

        list(LENGTH args arglen)
    endwhile()

    # do command
    if(runargs)
        __my_external_run(${runargs})
    endif()
endmacro()

#[==[.md:
### my_external_site

    my_external_site(<site-name> [<method>|USE <parent-site>]
        <site settings>...
    )

FIXME

#]==]
function(my_external_site sitename)
    __my_external_site(${sitename};${ARGN})
endfunction()

macro(__my_external_site sitename)
    set(args ${ARGN})

    # check if second argument is a method
    list(GET args 0 method)
    __my_external_load(${method})
    if(method_found)
        list(POP_FRONT args)
    else()
        if(NOT DEFINED CACHE{MY_EXTERNAL_SITE_${sitename}_METHOD})
            message(FATAL_ERROR "Site '${sitename}' is not known.")
        endif()
        set(method ${MY_EXTERNAL_SITE_${sitename}_METHOD})
    endif()

    __my_external_set_sitedir(${sitename})
    __my_external_run(SITE ${method} ${sitename} ${args})
endmacro()

#[==[.md:
### my_external_command

    my_external_command(
        DOWNLOAD|VERIFY|UPLOAD|... <site-name> [<options>...]
    )

FIXME

#]==]
function(my_external_command what sitename)
    __my_external_command(${what};${sitename};${ARGN})
endfunction()

macro(__my_external_command what sitename)
    if(NOT DEFINED CACHE{MY_EXTERNAL_SITE_${sitename}_DIR})
        message(FATAL_ERROR "Site '${sitename}' is not known.")
    endif()

    # run script
    string(TOLOWER "${what}" what_lc)
    include(${MY_EXTERNAL_SITE_${sitename}_DIR}/${what_lc}.cmake)
endmacro()

#[================================[.md:
## Internals
#]================================]

#[[
### MY_EXTERNAL_SOURCE_DIR

Directory where templates and modules are located. This directory is
determined from the module location and cannot be changed.

### MY_EXTERNAL_BINARY_DIR

Directory where 'external' settings are stored. This directory (Myake/External)
is relative to CMAKE_BINARY_DIR and cannot be changed.

#]]
set(MY_EXTERNAL_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/External" CACHE INTERNAL "Myake/External module directory.")
set(MY_EXTERNAL_BINARY_DIR "${CMAKE_BINARY_DIR}/Myake/External" CACHE INTERNAL "Myake/External output directory.")

configure_file(${MY_EXTERNAL_SOURCE_DIR}/common.cmake.in ${MY_EXTERNAL_BINARY_DIR}/common.cmake @ONLY)

macro(__my_external_set_sitedir sitename)
    set(MY_EXTERNAL_SITE_${sitename}_DIR ${MY_EXTERNAL_BINARY_DIR}/${sitename}
        CACHE INTERNAL "Myake/External directory for site '${sitename}'")
endmacro()

#[[
### MY_EXTERNAL_COMMANDS

This variable contains the list of available commands (for my_external_command).
It will be extended by the respective modules.

#]]
set(MY_EXTERNAL_COMMANDS DOWNLOAD;VERIFY;UPLOAD CACHE INTERNAL "Myake/External commands.")

macro(__my_external_add_commands)
    list(APPEND MY_EXTERNAL_COMMANDS ${ARGN})
    list(REMOVE_DUPLICATES MY_EXTERNAL_COMMANDS)
    set(MY_EXTERNAL_COMMANDS ${MY_EXTERNAL_COMMANDS} CACHE INTERNAL "Myake/External commands.")
endmacro()

#[[.md:
### __my_external_load

This macro loads the respective method.

The result variable (following ``include``) is ``method_found``.

#]]
macro(__my_external_load method)
    string(TOLOWER "${method}" method_lc)
    string(TOUPPER "${method}" method_uc)

    string(SUBSTRING "${method_uc}" 0 1 first)
    string(SUBSTRING "${method_lc}" 1 -1 rest)

    set(Method "${first}${rest}")
    include(My/External/${Method}/Module OPTIONAL RESULT_VARIABLE method_found)
endmacro()

#[[.md:
### __my_external_run

This function distributes the function or macro calls to the respective
handlers.

#]]
macro(__my_external_run what method)
    if(NOT "${what}" MATCHES "^[A-Z]+$")
        message(FATAL_ERROR "Myake/External internal error: __my_external_run(${what} ...)")
    endif()
    if(NOT "${method}" MATCHES "^[A-Z]+$" AND NOT "${method}" STREQUAL "-")
        message(FATAL_ERROR "Myake/External internal error: __my_external_run(${what} ${method} ...)")
    endif()

    # load module
    if(NOT "${method}" STREQUAL "-")
        __my_external_load(${method})
        if(NOT method_found)
            message(FATAL_ERROR "Myake/External internal error: ${method} not found")
        endif()
    endif()

    # distribute calls
    # TODO when upgrading to CMake 3.18+, use cmake_language(EVAL...)
    if("${method}" STREQUAL "-")
        if("${what}" STREQUAL SITE)
            my_external_site(${ARGN})
        else()
            list(FIND MY_EXTERNAL_COMMANDS "${what}" cmdidx)
            if(cmdidx GREATER_EQUAL 0)
                my_external_command(${what} ${ARGN})
            else()
                message(FATAL_ERROR "Myake/External internal error: distribute to call '${what}' failed")
            endif()
        endif()
    else()
        if(method STREQUAL GIT)
            __my_external_git_run(${what} ${ARGN})
        elseif(method STREQUAL USE)
            __my_external_use_run(${what} ${ARGN})
        else()
            message(FATAL_ERROR "Myake/External internal error: distribute to module '${method}' failed")
        endif()
    endif()
endmacro()

#[[.md:
### __my_external_capture

This function captures arguments to either the end or end of next brace-enclosed
parameter list.

#]]
macro(__my_external_capture arglist outlist)
    list(LENGTH ${arglist} caplen)
    while(caplen GREATER 0)
        list(GET ${arglist} 0 caparg0)
        if("${caparg0}" STREQUAL "{")
            my_options_capture(${arglist} captured)
            list(APPEND ${outlist} ${captured})
            set(caplen 0)
        else()
            list(POP_FRONT ${arglist})
            list(APPEND ${outlist} ${caparg0})
            list(LENGTH ${arglist} caplen)
        endif()
    endwhile()
endmacro()

