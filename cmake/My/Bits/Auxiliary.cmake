# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Auxiliary - Auxiliary tools.

## Reference
#]=======================================================================]
include_guard(GLOBAL)

#[==[.md:
## my_add_cmake_module_path

    my_add_cmake_module_path([PREPEND] <paths>...)

Uniquely append or prepend (if ``PREPEND`` is given) paths to ``CMAKE_MODULE_PATH``.

#]==]
macro(my_add_cmake_module_path)
    cmake_parse_arguments(__my "PREPEND" "" "" ${ARGV})
    foreach(__my_path ${__my_UNPARSED_ARGUMENTS})
        list(FIND CMAKE_MODULE_PATH ${__my_path} __my_found)
        if(${__my_found} LESS 0)
            if(__my_PREPEND)
                list(PREPEND CMAKE_MODULE_PATH ${__my_path})
                message(TRACE "Prepended '${__my_path}' to CMAKE_MODULE_PATH.")
            else()
                list(APPEND CMAKE_MODULE_PATH ${__my_path})
                message(TRACE "Appended '${__my_path}' to CMAKE_MODULE_PATH.")
            endif()
        endif()
    endforeach()
endmacro()

#[==[.md:
### my_set_cache_property_strings

    my_set_cache_property_strings(<variable> <string-list...>)

Sets the strings property of a cached variable.

This is mostly useful for the CMake UI which presents a dropdown-menu if
this property is set.

#]==]
macro(my_set_cache_property_strings VARIABLE)
    set_property(CACHE ${VARIABLE} PROPERTY STRINGS ${ARGN})
endmacro()

#[==[.md:
### my_get_cache_property_strings

    my_get_cache_property_strings(<variable> <result>)

Retrieve the strings property of a cached ``<variable>`` and assign it
to the ``<result>``-variable.

#]==]
macro(my_get_cache_property_strings VARIABLE RESULT)
    get_property(${RESULT} CACHE ${VARIABLE} PROPERTY STRINGS)
    set(${RESULT} "${${RESULT}}")
endmacro()

#[==[.md:
### my_add_cache_property_strings

    my_add_cache_property_strings(<variable> <string-list...>)

Add strings to the property of a cached ``<variable>``.

#]==]
macro(my_add_cache_property_strings VARIABLE)
    get_property(__my_list CACHE ${VARIABLE} PROPERTY STRINGS)
    list(APPEND __my_list ${ARGN})
    list(REMOVE_DUPLICATES __my_list)
    set_property(CACHE ${VARIABLE} PROPERTY STRINGS ${__my_list})
endmacro()

#[==[.md:
### my_read_variables

    my_read_variables(<input-file-name> <variable-prefix>)

Read shell-like variable assignments from a file.

Copyright 2015 by Florian Franzen  
Published under GPL v2 as part of Neurosuite.  
#]==]
macro(my_read_variables filename varprefix)
    file(READ "${filename}" __my_contents)
    string(REGEX REPLACE ";" "\\\\;" __my_contents "${__my_contents}")
    string(REGEX REPLACE "\n" ";" __my_contents "${__my_contents}")
    foreach(__my_line ${__my_contents})
        string(REGEX REPLACE "=.*" "" __my_var "${__my_line}")
        string(REGEX REPLACE "[^=]*=" "" __my_value "${__my_line}")
        string(REGEX REPLACE "^\"" "" __my_value "${__my_value}")
        string(REGEX REPLACE "\"$" "" __my_value "${__my_value}")
        set(${varprefix}_${__my_var} "${__my_value}")
    endforeach()
endmacro()

#[==[.md:
### my_issue_message

    my_issue_message(<message-arguments>)

This is a helper to emit a message (standard CMake message arguments) which 
adds a line with a link to the repositories issue page.

#]==]
function(my_issue_message)
    message(${ARGN}
        "\nPlease report this issue on https://github.com/jsawinski/myake/issues\n"
    )
endfunction()