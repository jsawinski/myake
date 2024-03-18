# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Tree - Nested lists and tree structures

FIXME

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

# List behavior as described above was verified from 3.10 to 3.29. To be
# sure that this is retained in future versions, we add this test:
set(LIST_TEST [ 1 [ 2 3 ] 4 ])
list(LENGTH LIST_TEST LIST_TEST_LEN)
if(NOT ${LIST_TEST_LEN} EQUAL 1)
    my_issue_message(FATAL_ERROR "List nesting using brackets is not working as expected.")
endif()

#[==[.md:
### my_tree_parse

    my_tree_parse(<prefix> <options>
        <arguments...>
    )

FIXME

Example:

FIXME

#]==]
function(my_tree_parse PREFIX)
    set(ARGS ${ARGN})

    # check options
    list(POP_FRONT ARGS OPTIONS)
    my_nested_unpack(OPTIONS isnested)
    if(NOT isnested)
        message(FATAL_ERROR "Expected options after prefix.")
    else()
        # parse options
        unset(NODEFAULTS)
        unset(TEMPLATE)

        while(true)
            list(LENGTH OPTIONS OPTLEN)
            if(${OPTLEN} EQUAL 0)
                break()
            endif()

            list(POP_FRONT OPTIONS OPT)
            if(OPT STREQUAL "NODEFAULTS")
                set(NODEFAULTS TRUE)
            elseif(OPT STREQUAL "TEMPLATE")
                list(POP_FRONT OPTIONS TEMPLATE)
                my_nested_unpack(TEMPLATE argsnested)
                if(NOT argsnested)
                    message(FATAL_ERROR "Parameters after ARGUMENTS are not nested (insided brackets).")
                endif()
            else()
                message(FATAL_ERROR "Invalid option: ${OPT}")
            endif()
        endwhile()
    endif()

    # parse arguments
    if(TEMPLATE)
        message(NOTICE "FIXME")
    else()
        my_tree_parse_plain(${PREFIX} ${ARGS})
    endif()
endfunction()

#[==[.md:
### my_tree_parse_plain

    my_tree_parse_plain(<variable-prefix>)

FIXME

#]==]
function(my_tree_parse_plain PREFIX)
    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)

    set(i 0)
    while(i LESS NARGS)
        list(SUBLIST ARGS ${i} 3 KVT)
        list(POP_FRONT KVT K V T)

        if(NOT K MATCHES "^[A-Z][A-Z_]*$")
            message(FATAL_ERROR "Invalid key: ${K}")
        endif()

        my_nested_unpack(V Vnested)
        if(Vnested) 
            my_tree_parse_plain(${PREFIX}_${K} ${V})
        else()
            my_nested_unpack(T Tnested)
            if(Tnested)
                my_tree_parse_plain(${PREFIX}_${K}_${V} ${T})
                math(EXPR i "${i}+1")
            else()
                set(${PREFIX}_${K} ${V} CACHE INTERNAL "")
            endif()
        endif()

        math(EXPR i "${i}+2")
    endwhile()
endfunction()

#[==[.md:
### my_nested_is

    my_nested_is(<list-variable> <output-variable>)

FIXME

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
### my_nested_unpack

    my_nested_unpack(<variable> <nested-variable>)

FIXME

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
### my_nested_show

    my_nested_show(<log-level> <arguments>...)

FIXME

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
