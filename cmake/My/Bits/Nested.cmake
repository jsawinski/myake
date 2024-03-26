# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Nested - Nested lists and tree structures

This module provides handling of nested lists.

**Note**:
Myake uses (as far as known to the author) an undocumented pecularity 
concerning lists where brackets allow nested lists. For example, the
length of the following list is 1:

    [ 1 2 ]

even though represented as "[;1;2;]" in terms of lists.

## Reference
#]=======================================================================]
include_guard(GLOBAL)

include(My/Bits/Set)
include(My/Bits/String)

#[==[.md:
### my_nested_unpack

    my_nested_unpack(<variable> <output-variable>)

"Unpack" a nested list contained in <variable> and set the output ariable as 
in `my_nested_is`.

**Note**:
The values "[]" and "[;]" are recognized as an empty list.

#]==]
macro(my_nested_unpack var nested)
    if(("${${var}}" STREQUAL "[]") OR ("${${var}}" STREQUAL "[;]"))
        unset(${var})
        set(${nested} TRUE)
    elseif("${${var}}" MATCHES "^[[];.*;[]]$")
        string(REGEX REPLACE "^[[];(.*);[]]$" "\\1" ${var} "${${var}}")
        set(${nested} TRUE)
    else()
        set(${nested} FALSE)
    endif()
endmacro()

#[==[.md:
### my_nested_is

    my_nested_is(<list-variable> <output-variable>)

Check if contents of <list-variable> is a nested value and assign the output 
variable accordingly.

#]==]
macro(my_nested_is listvar outvar)
    if(("${${listvar}}" STREQUAL "[]") OR ("${${listvar}}" STREQUAL "[;]"))
        set(${outvar} TRUE)
    elseif("${${listvar}}" MATCHES "^[[];.*;[]]$")
        set(${outvar} TRUE)
    else()
        set(${outvar} FALSE)
    endif()
endmacro()

#[==[.md:
### my_nested_show

    my_nested_show(<log-level> <arguments>...)

Display contents of a nested list.

This function is merely a debugging aid.

#]==]
function(my_nested_show loglevel)
    __my_nested_show(${loglevel} 0 ${ARGN})
endfunction()

macro(__my_nested_show loglevel level)
    foreach(item ${ARGN})
        my_nested_unpack(item isnested)
        if(isnested) 
            math(EXPR nextlevel "${level}+1")
            __my_nested_show(${loglevel} ${nextlevel} ${item})
        else()
            string(REPEAT " " ${level} indent)
            message(${loglevel} "${indent}${item}")
        endif()
    endforeach()
endmacro()

