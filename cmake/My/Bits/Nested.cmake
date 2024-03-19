# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Nested - Nested lists and tree structures

This module provides handling of nested lists and templated tree-like 
structures.

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

#[==[.md:
### my_table_parse

    my_tree_parse(<prefix-or-callback> 
        <key-value pair>...
    )

This function parses a possibly nested key-value pair list into
a flat list of variables if a prefix is given, or, alternatively
calls a callback macro on each entry.

Example:

    my_table_parse(RESULT
        INTEGER 1
        STRING "string"
        NODE [
            ITEM "item"
        ]
        EMPTY []
    )

is equivalent to

    set(RESULT_INTEGER 1)
    set(RESULT_STRING "string")
    set(RESULT_NODE_ITEM "item")
    unset(RESULT_EMPTY)

Alternatively, if "RESULT" is replaced with "@callback", it would
be equivalent to

    block()
        callback(INTEGER 1)
        callback(STRING "string")
        callback(NODE;ITEM "item")
        callback(EMPTY)
    endblock()

#]==]
function(my_table_parse)
    set(ARGS ${ARGV})
    list(POP_FRONT ARGS PREFIX)
    if(PREFIX MATCHES "^@(.*)")
        set(CALLBACK ${CMAKE_MATCH_1})
        unset(PREFIX)
    endif()
    
    __my_table_parse("${PREFIX}" ${ARGS})
endfunction()

macro(__my_table_parse PREFIX)
    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)

    set(I 0)
    while(I LESS NARGS)
        list(SUBLIST ARGS ${I} 2 KV)
        list(POP_FRONT KV K V)

        if(NOT K MATCHES "^[A-Z][A-Z_]*$")
            message(FATAL_ERROR "Invalid key: ${K}")
        endif()

        if(CALLBACK)
            set(VAR "${PREFIX}")
            list(APPEND VAR "${K}")
        else()
            set(VAR ${PREFIX}_${K})
        endif()

        my_nested_unpack(V Vnested)
        if(Vnested) 
            if(NOT V) 
                if(CALLBACK)
                cmake_language(EVAL CODE "${CALLBACK}(\"${VAR}\")")
                else()
                    unset(${VAR} PARENT_SCOPE)
                endif()
            else()
                my_save(ARGS NARGS I)
                __my_table_parse("${VAR}" "${V}")
                my_restore(ARGS NARGS I)
            endif()
        else()
            my_nested_unpack(T Tnested)
            if(CALLBACK)
                cmake_language(EVAL CODE "${CALLBACK}(\"${VAR}\" \"${V}\")")
            else()
                set(${VAR} "${V}" PARENT_SCOPE)
            endif()
        endif()

        math(EXPR I "${I}+2")
    endwhile()
endmacro()

#[==[.md:
### my_tree_template

    my_tree_template(<template-name>
        <template-declaration...>
    )

Declare a template for tree parsing (see `my_tree_parse`).

Entries in the template are of the general format:

    KEY "[" <options> "]" [ "["
        <children...>
        [<link-definition>]
    "]" ]

with the options
OPTION      
            An option value.
VALUE [<default>]
            A single-argument key, optionally with a default value.
MULTI [<default>]
            Multi-argument key.
GROUP
            Key-value group.
NAMED
            Named group.

For named groups, there exists the possibility to define a link 
definition in the format "@SUBGROUP->KEY". 

Example:

    GROUP [ NAMED ] [ 
        PARENT_GROUP [ VALUE ]
        @GROUP->PARENT_GROUP
    ]

#]==]
function(my_tree_template NAME)
    # reset template
    my_reset(CACHE_VARIABLES "^MY_TMPL_${NAME}-")

    # parse
    __my_tree_template(MY_TMPL_${NAME} ${ARGN})
endfunction()

function(__my_tree_template NAME)
    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)

    set(I 0)
    while(I LESS NARGS)
        list(SUBLIST ARGS ${I} 3 KTG)
        list(POP_FRONT KTG K T G)

        if(K MATCHES "^@")
            string(REGEX MATCH "^[@]([A-Z][A-Z_]*)[-]>(.+)" _ ${K})
            list(APPEND ${NAME}-__CHLD__ ${CMAKE_MATCH_1})
            set(${NAME}-__CHLD__ "${${NAME}-__CHLD__}" CACHE INTERNAL "")
            set(${NAME}-__LINK__-${CMAKE_MATCH_1} "${CMAKE_MATCH_2}" CACHE INTERNAL "")
            math(EXPR I "${I}+1")
            continue()
        elseif(K MATCHES "^[A-Z][A-Z_]*$")
            list(APPEND ${NAME}-__KEYS__ ${K})
        else()
            message(FATAL_ERROR "Invalid key: ${K}")
        endif()

        # handle type
        my_nested_unpack(T Tnested)
        if(NOT Tnested) 
            message(FATAL_ERROR "Invalid template declaration (after ${K}).")
        endif()

        list(POP_FRONT T type)

        if(type STREQUAL "OPTION")
        elseif(type STREQUAL "VALUE")
            if(T)
                set(${NAME}-${K}-__DFLT__ "${T}" CACHE INTERNAL "")
            endif()
        elseif(type STREQUAL "MULTI")
            if(T)
                set(${NAME}-${K}-__DFLT__ "${T}" CACHE INTERNAL "")
            endif()
        elseif(type STREQUAL "GROUP")
        elseif(type STREQUAL "NAMED")
        else()
            message(FATAL_ERROR "Unknown type: ${type}")
        endif()
        set(${NAME}-${K}-__TYPE__ "${type}" CACHE INTERNAL "")

        # handle group
        my_nested_unpack(G Gnested)
        if(Gnested)
            __my_tree_template(${NAME}-${K} ${G})
            math(EXPR I "${I}+1")
        endif()

        math(EXPR I "${I}+2")
    endwhile()

    set(${NAME}-__KEYS__ "${${NAME}-__KEYS__}" CACHE INTERNAL "")
endfunction()

#[==[.md:
### my_tree_parse

    my_tree_parse(<prefix> "[" <options> "]"
        <arguments...>
    )

This function parses its (tree-like) arguments into a linear set
of variables. 

The prefix is used for constructing variables from the arguments.
Alternatively, it may be a function if preceded by "@" (without
template). 

The following options are available:
NODEFAULTS: If not provided, default values from the template will
            be automatically filled in.
TEMPLATE <name>: Tree template (see `my_tree_template`). If omitted,
                 the variable prefix will be used.

#]==]
function(my_tree_parse PREFIX)
    set(ARGS ${ARGN})

    # check options
    unset(NODEFAULTS)
    set(TEMPLATE ${PREFIX})

    list(POP_FRONT ARGS OPTIONS)
    my_nested_unpack(OPTIONS _)
    list(LENGTH OPTIONS NOPTIONS)
    while(NOPTIONS GREATER 0)
        list(POP_FRONT OPTIONS THEOPT)
        if(THEOPT STREQUAL "NODEFAULTS")
            set(NODEFAULTS ON)
        elseif(THEOPT STREQUAL "TEMPLATE")
            list(POP_FRONT OPTIONS TEMPLATE)
        else()
            message(FATAL_ERROR "Unrecognized option: ${THEOPT}")
        endif()

        list(LENGTH OPTIONS NOPTIONS)
    endwhile()

    # parse
    __my_tree_parse(${PREFIX} MY_TMPL_${TEMPLATE} ${ARGS})

    # propagate
    get_cmake_property(varlist VARIABLES)
    foreach(var ${varlist})
        if("${var}" MATCHES "^${PREFIX}_")
            set(${var} "${${var}}" PARENT_SCOPE)
        endif()
    endforeach()
endfunction()

macro(__my_tree_parse PREFIX TEMPLATE)
    unset(CHILDREN)

    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)

    set(I 0)
    while(I LESS NARGS)
        # key
        list(GET ARGS ${I} KEY)
        if(KEY MATCHES "^[A-Z][A-Z_]*$")
            if(NOT KEY IN_LIST ${TEMPLATE}-__KEYS__)
                if(KEY IN_LIST ${TEMPLATE}-__CHLD__)
                    list(SUBLIST ARGS ${I} 3 KNT)
                    list(POP_FRONT KNT K N T)

                    # FIXME sanity check

                    list(APPEND CHILDREN ${K} ${N} ${T})
                    math(EXPR I "${I}+3")
                    continue()
                else()
                    message(FATAL_ERROR "Unrecognized key: ${KEY}")
                endif()
            endif()
            math(EXPR I "${I}+1")
        else()
            message(FATAL_ERROR "Malformed key '${KEY}', maybe forgotten parameters?")
        endif()

        # handle types
        set(TYPE ${${TEMPLATE}-${KEY}-__TYPE__})
        if(TYPE STREQUAL "OPTION")
            set(${PREFIX}_${KEY} TRUE)
            continue()
        elseif(TYPE STREQUAL "VALUE")
            list(GET ARGS ${I} VALUE)
            math(EXPR I "${I}+1")

            set(${PREFIX}_${KEY} ${VALUE})
            continue()
        elseif(TYPE STREQUAL "MULTI")
            unset(${PREFIX}_${KEY} CACHE)
            while(I LESS NARGS)
                list(GET ARGS ${I} VALUE)
                if("${VALUE}" IN_LIST ${TEMPLATE}-__KEYS__)
                    break()
                endif()

                list(APPEND ${PREFIX}_${KEY} ${VALUE})

                math(EXPR I "${I}+1")
            endwhile()

            set(${PREFIX}_${KEY} "${${PREFIX}_${KEY}}" CACHE INTERNAL "")
        elseif(TYPE STREQUAL "GROUP")
            # group
            list(GET ARGS ${I} GROUP)
            my_nested_unpack(GROUP isgroup)
            math(EXPR I "${I}+1")

            if(NOT isgroup)
                message(FATAL_ERROR "Expected a group after ${KEY}.")
            endif()

            set(${PREFIX}_${KEY} TRUE)

            # parse it
            my_save(NARGS ARGS I)
            __my_tree_parse(${PREFIX}_${KEY} ${TEMPLATE}-${KEY} ${GROUP})
            my_restore(NARGS ARGS I) 
        elseif(TYPE STREQUAL "NAMED")
            # name
            list(GET ARGS ${I} NAME)
            math(EXPR I "${I}+1")
            # FIXME check if in __KEYS__ ?

            list(APPEND ${PREFIX}_${KEY}_ALL ${NAME})

            # group
            list(GET ARGS ${I} GROUP)
            my_nested_unpack(GROUP isgroup)
            math(EXPR I "${I}+1")

            if(NOT isgroup)
                message(FATAL_ERROR "Expected a group after ${KEY}.")
            endif()

            # parse it
            my_save(NARGS ARGS I NAME KEY)
            __my_tree_parse(${PREFIX}_${KEY}_${NAME} ${TEMPLATE}-${KEY} ${GROUP})
            my_restore(NARGS ARGS I NAME KEY) 

            # handle children (if any)
            if(CHILDREN)
                # link
                list(LENGTH CHILDREN NCHILDREN)
                set(C 0)
                while(C LESS NCHILDREN)
                    list(SUBLIST CHILDREN ${C} 3 KNT)
                    list(POP_FRONT KNT K N T)
                    
                    set(F ${${TEMPLATE}-${KEY}-__LINK__-${K}})
                    if(F)
                        set(${PREFIX}_${K}_${N}_${F} ${NAME})
                    endif()

                    math(EXPR C "${C}+3")
                endwhile()

                # parse
                my_save(NARGS ARGS I)
                __my_tree_parse(${PREFIX} ${TEMPLATE} ${CHILDREN})
                my_restore(NARGS ARGS I) 
            endif()            
        else()
            message(FATAL_ERROR "Internal error: unrecognized type '${TYPE}'.")
        endif()
    endwhile()

    if(NOT NODEFAULTS)  
        # FIXME
    endif()
endmacro()
