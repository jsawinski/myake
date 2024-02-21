# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/String - String utilities.

This modules provides a couple of extensions to CMake's string handling
functions, such as very simply ([fmtlib](https://github.com/fmtlib/fmt) 
inspired) string formatting capabilities. This formatting is extensively 
used in the [report generator](../Report.md).

## Reference
#]=======================================================================]
include_guard(GLOBAL)

#[[.md:
### my_substring

    my_substring(<output-variable> <from> <to> "<text>")

Get a substring by indexes (starting from 0). Negative indexes are counted from 
one after the last character.

#]]
function(my_substring outvar from to text)
    string(LENGTH "${text}" N)
    if(${N} GREATER 0)
        # begin
        if(${from} LESS 0)
            math(EXPR begin "${from} + ${N}")
        else()
            set(begin ${from})
        endif()

        # length
        if(${to} LESS 0)
            math(EXPR to "${to} + ${N}")
        endif()

        math(EXPR length "${to} - ${from} + 1")

        string(SUBSTRING "${text}" ${begin} ${length} result)
        set(${outvar} "${result}" PARENT_SCOPE)
    else()
        set(${outvar} "" PARENT_SCOPE)
    endif()
endfunction()

#[[.md:
### my_titlecase

    my_titlecase(<output-variable> "<text>")

Make all words "titlecase". 

#]]
function(my_titlecase outvar text)
    set(result)

    string(REGEX MATCHALL "([^\ ]+\ |[^\ ]+$)" list "${text}")
    foreach(w ${list})
        my_substring(first 0 0 "${w}")
        my_substring(rest 1 -1 "${w}")
        string(TOUPPER "${first}" first)
        string(TOLOWER "${rest}" rest)

        list(APPEND result "${first}${rest}")
    endforeach()

    string(REPLACE ";" "" result "${result}")
    set(${outvar} "${result}" PARENT_SCOPE)
endfunction()

#[[.md:
### my_lowercase

    my_lowercase(<output-variable> "<text>")

Make all words "lowercase". 

#]]
function(my_lowercase outvar text)
    set(result)

    string(REGEX MATCHALL "([^\ ]+\ |[^\ ]+$)" list "${text}")
    foreach(w ${list})
        string(TOLOWER "${w}" lower)

        list(APPEND result "${lower}")
    endforeach()

    string(REPLACE ";" "" result "${result}")
    set(${outvar} "${result}" PARENT_SCOPE)
endfunction()

#[[.md:
### my_uppercase

    my_uppercase(<output-variable> "<text>")

Make all words "uppercase". 

#]]
function(my_uppercase outvar text)
    set(result)

    string(REGEX MATCHALL "([^\ ]+\ |[^\ ]+$)" list "${text}")
    foreach(w ${list})
        string(TOUPPER "${w}" upper)

        list(APPEND result "${upper}")
    endforeach()

    string(REPLACE ";" "" result "${result}")
    set(${outvar} "${result}" PARENT_SCOPE)
endfunction()

#[[.md:
### my_make_lower

    my_make_lower(<variable>)

Create a lower-case <variable> with lower-case content.

#]]
function(my_make_lower var)
    my_lowercase(outvar "${var}")
    my_lowercase(content "${${var}}")
    set(${outvar} ${content} PARENT_SCOPE)
endfunction()

#[==[.md:
### my_string_genex_expand

    my_string_genex_expand(<output-variable> "<string>")

Expand generator expressions in a string.

FIXME 

#]==]
function(my_string_genex_expand outvar text)
    # find inner-most $<generator expression> pattern
    string(REGEX MATCH "[$][<][^>]*[>]" pattern "${text}")
    if(NOT pattern)
        set(${outvar} "${text}" PARENT_SCOPE)
        return()
    endif()

    # replace $<generator expression>
    set(buffer ${text})

    # extract generator expression
    my_substring(genex 2 -2 "${pattern}")

    # sanity check
    if("${genex}" MATCHES ":")
        message(FATAL_ERROR "Only variable queries are supported here.")
    endif()

    # replace genex
    string(REGEX REPLACE "[$][<]${genex}[>]" "${${genex}}" buffer "${buffer}")

    # recurse and promote result to parent scope
    my_string_genex_expand(${outvar} "${buffer}")
    set(${outvar} "${${outvar}}" PARENT_SCOPE)
endfunction()

#[==[.md:
### my_string_format

    my_string_format(<prefix> [<arguments>...])

Format a string (and return parsing results).

If the first argument is a format string (of the form 
'%{<format-declaration>}'), result variables will be assigned. 
Extraneous arguments are ignored.

Common result variables:
    <prefix>_TYPE             Formatting type.
    <prefix>_ARGC            Format argument-count.
    <prefix>_FORMAT         The formatting instruction.
    <prefix>_TEXT            Formatting result.

In addition, ``TYPE`` dependent formatting settings will be set. If the format 
declaration is not recognized, ``TYPE`` will be set to ``EXTERNAL`` allowing 
further elements to be parsed (see e.g. [my_report](../Report.md)).

**Formatting**:

    %{<alignment>} "text..."

where alignment may use a symbol for horizontal alignment:

    <   left aligned (default),
    ^   centered, and,
    >   right aligned

followed by the width.

#]==]
function(my_string_format prefix)
    set(args ${ARGN})

    # format instruction
    list(POP_FRONT args format)
    if("${format}" MATCHES "^%{[^}]*}$")
        # strip enclosing %{}
        my_substring(format 2 -2 "${format}")
        string(TOLOWER "${format}" format_lc)

        # ALIGN
        if("${format_lc}" MATCHES "^[<^>]?[0-9]+$")
            set(${prefix}_TYPE ALIGN PARENT_SCOPE)

            if("${format_lc}" MATCHES "^[<^>]")
                string(SUBSTRING "${format_lc}" 0 1 align)
            else()
                set(align "<")
            endif()
            set(${prefix}_ALIGN ${align} PARENT_SCOPE)

            string(REGEX MATCH "[0-9]+" width "${format_lc}")
            set(${prefix}_WIDTH ${width} PARENT_SCOPE)

            list(POP_FRONT args text)
            set(${prefix}_ARGC 1 PARENT_SCOPE)

            __my_string_format_align(text ${align} ${width} "${text}")
            set(${prefix}_TEXT "${text}" PARENT_SCOPE)
        # EXTERNAL
        else()
            set(${prefix}_TYPE EXTERNAL PARENT_SCOPE)
            unset(${prefix}_ARGC PARENT_SCOPE)
            unset(${prefix}_TEXT PARENT_SCOPE)
        endif()

        set(${prefix}_FORMAT "${format}" PARENT_SCOPE)
    else()
        unset(${prefix}_TYPE PARENT_SCOPE)
        unset(${prefix}_ARGC PARENT_SCOPE)
        unset(${prefix}_FORMAT PARENT_SCOPE)
        unset(${prefix}_TEXT PARENT_SCOPE)
    endif()
endfunction()

#[[.md:
#### Internal
#]]

#[==[.md:
##### __my_string_format_align

    __my_string_format_align(<outvar> <align> <width> "<text>...")

#]==]
macro(__my_string_format_align outvar align width text)
    string(LENGTH "${text}" textlen)
    math(EXPR pad "${width} - ${textlen}")

    if(${pad} GREATER 0)
        set(padleft 0)
        set(padright 0)
        if("${align}" STREQUAL "<")
            set(padright ${pad})
        elseif("${align}" STREQUAL ">")
            set(padleft ${pad})
        else()
            math(EXPR padleft "${pad} / 2")
            math(EXPR padright "${pad} - ${padleft}")
        endif()

        string(REPEAT " " ${padleft} padleft)
        string(REPEAT " " ${padright} padright)
    else()
        unset(padleft)
        unset(padright)
    endif()

    set(${outvar} "${padleft}${text}${padright}")
endmacro()


