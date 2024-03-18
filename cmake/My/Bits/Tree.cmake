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
            else()
                message(FATAL_ERROR "Invalid option: ${OPT}")
            endif()
        endwhile()

        # prefix
        if(PREFIX MATCHES "^[@]")
            string(REGEX REPLACE "^@(.*)" "\\1" CALLBACK "${PREFIX}")    
            set(PREFIX "@")
        endif()
    endif()

    # parse arguments
    if(TEMPLATE)
        my_nested_unpack(TEMPLATE tmplnested)
        if(tmplnested)
            my_tree_template(${PREFIX} ${TEMPLATE})
        endif()
        my_tree_parse_template(${PREFIX} MY_TMPL_${PREFIX} ${ARGS})

        if(NOT NODEFAULTS)  
            # FIXME
        endif()
    else()
        if(CALLBACK)
            set(SEP -)
        else()
            set(SEP _)
        endif()
        my_tree_parse_plain(${PREFIX} ${ARGS})
    endif()

    # propagate to parent
    get_cmake_property(varlist VARIABLES)
    foreach(var ${varlist})
        if("${var}" MATCHES "^${PREFIX}_")
            set(${var} "${${var}}" PARENT_SCOPE)
        endif()
    endforeach()
endfunction()

#[==[.md:
### my_tree_template

    my_tree_template(<variable-prefix>)

Parse a tree template.

FIXME

#]==]
function(my_tree_template PREFIX)
    get_cmake_property(varlist CACHE_VARIABLES)
    foreach(var ${varlist})
        if("${var}" MATCHES "^MY_TMPL_${PREFIX}-")
            unset(${var} CACHE)
        endif()
    endforeach()

    __my_tree_template(MY_TMPL_${PREFIX} ${ARGN})
endfunction()

function(__my_tree_template PREFIX)
    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)

    set(i 0)
    while(i LESS NARGS)
        list(SUBLIST ARGS ${i} 3 KTG)
        list(POP_FRONT KTG K T G)

        if(K MATCHES "^@")
            string(REGEX MATCH "^[@]([A-Z][A-Z_]*)[-]>(.+)" _ ${K})
            list(APPEND ${PREFIX}-__CHLD__ ${CMAKE_MATCH_1})
            set(${PREFIX}-__CHLD__ "${${PREFIX}-__CHLD__}" CACHE INTERNAL "")
            set(${PREFIX}-__LINK__-${CMAKE_MATCH_1} "${CMAKE_MATCH_2}" CACHE INTERNAL "")
            math(EXPR i "${i}+1")
            continue()
        elseif(K MATCHES "^[A-Z][A-Z_]*$")
            list(APPEND ${PREFIX}-__KEYS__ ${K})
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
                set(${PREFIX}-${K}-__DEFAULT__ "${T}" CACHE INTERNAL "")
            endif()
        elseif(type STREQUAL "MULTI")
        elseif(type STREQUAL "GROUP")
        elseif(type STREQUAL "NAMED")
        else()
            message(FATAL_ERROR "Unknown type: ${type}")
        endif()
        set(${PREFIX}-${K}-__TYPE__ "${type}" CACHE INTERNAL "")

        # handle group
        my_nested_unpack(G Gnested)
        if(Gnested)
            __my_tree_template(${PREFIX}-${K} ${G})
            math(EXPR i "${i}+1")
        endif()

        math(EXPR i "${i}+2")
    endwhile()

    set(${PREFIX}-__KEYS__ "${${PREFIX}-__KEYS__}" CACHE INTERNAL "")
endfunction()

#[==[.md:
### my_nested_is

    my_nested_is(<list-variable> <output-variable>)

Check if contents of <list-variable> is a nested value and assign the output variable accordingly.

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

"Unpack" a nested list contained in <variable> and set the output ariable as in `my_nested_is`.

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

#[================================[.md:
### Internals
#]================================]

#[==[.md:
#### my_tree_parse_plain

    my_tree_parse_plain(<variable-prefix>)

FIXME

#]==]
macro(my_tree_parse_plain PREFIX)
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
            my_save(ARGS NARGS i)
            my_tree_parse_plain(${PREFIX}${SEP}${K} ${V})
            my_restore(ARGS NARGS i)
        else()
            my_nested_unpack(T Tnested)
            if(Tnested)
                my_save(ARGS NARGS i)
                my_tree_parse_plain(${PREFIX}${SEP}${K}${SEP}${V} ${T})
                my_restore(ARGS NARGS i)

                math(EXPR i "${i}+1")
            else()
                if(CALLBACK)
                    cmake_language(EVAL CODE "${CALLBACK}(${PREFIX}${SEP}${K} \"${V}\")")
                else()
                    set(${PREFIX}${SEP}${K} ${V})
                endif()
            endif()
        endif()

        math(EXPR i "${i}+2")
    endwhile()
endmacro()

#[==[.md:
#### my_tree_parse_template

    my_tree_parse_template(<variable-prefix> <template-prefix>)

Parse arguments according to the template.

#]==]
macro(my_tree_parse_template PREFIX TMPLPREFIX)
    set(ARGS ${ARGN})
    list(LENGTH ARGS NARGS)

    set(i 0)
    while(i LESS NARGS)
        # key
        list(GET ARGS ${i} KEY)
        if(KEY MATCHES "^[A-Z][A-Z_]*$")
            if(NOT KEY IN_LIST ${TMPLPREFIX}-__KEYS__)
                if(KEY IN_LIST ${TMPLPREFIX}-__CHLD__)
                    FIXME_child()
                else()
                    message(FATAL_ERROR "Unrecognized key: ${KEY}")
                endif()
            endif()
            math(EXPR i "${i}+1")
        else()
            message(FATAL_ERROR "Malformed key '${KEY}', maybe forgotten parameters?")
        endif()

        # handle types
        set(TYPE ${${TMPLPREFIX}-${KEY}-__TYPE__})
        if(TYPE STREQUAL "OPTION")
            set(${PREFIX}_${KEY} TRUE)
            continue()
        elseif(TYPE STREQUAL "VALUE")
            list(GET ARGS ${i} VALUE)
            math(EXPR i "${i}+1")

            set(${PREFIX}_${KEY} ${VALUE})
            continue()
        elseif(TYPE STREQUAL "MULTI")
            unset(${PREFIX}_${KEY} CACHE)
            while(i LESS NARGS)
                list(GET ARGS ${i} VALUE)
                if("${VALUE}" IN_LIST ${TMPLPREFIX}-__KEYS__)
                    break()
                endif()

                list(APPEND ${PREFIX}_${KEY} ${VALUE})

                math(EXPR i "${i}+1")
            endwhile()

            set(${PREFIX}_${KEY} "${${PREFIX}_${KEY}}" CACHE INTERNAL "")
        elseif(TYPE STREQUAL "GROUP")
            # group
            list(GET ARGS ${i} GROUP)
            my_nested_unpack(GROUP isgroup)
            math(EXPR i "${i}+1")

            if(NOT isgroup)
                message(FATAL_ERROR "Expected a group after ${KEY}.")
            endif()

            set(${PREFIX}_${KEY} TRUE)

            # parse it
            my_save(NARGS ARGS i)
            my_tree_parse_template(${PREFIX}_${KEY} ${TMPLPREFIX}-${KEY} ${GROUP})
            my_restore(NARGS ARGS i) 
        elseif(TYPE STREQUAL "NAMED")
            # name
            list(GET ARGS ${i} NAME)
            math(EXPR i "${i}+1")
            # FIXME check if in __KEYS__ ?

            list(APPEND ${PREFIX}_${KEY}_ALL ${NAME})

            # group
            list(GET ARGS ${i} GROUP)
            my_nested_unpack(GROUP isgroup)
            math(EXPR i "${i}+1")

            if(NOT isgroup)
                message(FATAL_ERROR "Expected a group after ${KEY}.")
            endif()

            # parse it
            my_save(NARGS ARGS i)
            my_tree_parse_template(${PREFIX}_${KEY}_${NAME} ${TMPLPREFIX}-${KEY} ${GROUP})
            my_restore(NARGS ARGS i) 
        else()
            message(FATAL_ERROR "Internal error: unrecognized type '${TYPE}'.")
        endif()
    endwhile()
endmacro()