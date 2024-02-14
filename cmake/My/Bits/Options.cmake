# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Bits/Options - Hierarchical argument parsing

CMake's [standard argument parser](https://cmake.org/cmake/help/latest/command/cmake_parse_arguments.html) 
might be adequate in most cases, but quite limited. Here, Myake provides a 
parser allowing tree-like structures.

## Reference
#]=======================================================================]
include_guard(GLOBAL)

#[==[.md:
### my_options_parse

    my_options_parse(<prefix> [RESET|REPLACE] [NODEFAULTS]
        [OPTIONS <key> [{
            <option-declaration>
        }]]
        <arguments>...
    }

Parse arguments automatically or using given options.

Option `RESET` indicates (only available if `OPTIONS` is given), that all 
result variables should be cleared.

Option `REPLACE` indicates, that variable results should be replaced and not 
appended.

Option `NODEFAULTS` indicates, that defaults from `OPTIONS` should not be 
assigned.

If `OPTIONS` is given, arguments are parsed according to given definition.

#### Options format

The general format for option declarations is:

    <name>:[<argn>][{ ... }][=<default>]

The ``name`` is expected to be an upper-case option key. The number of 
arguments following an option can be `-` (for none, equivalent of a 
``cmake_parse_arguments`` option), `[<number>]` (for a specified number of 
arguments), and, `*` (for multi-argument list in cmake_parse_arguments terms). 
If omitted, the default is a single argument.

Hierarchical declarations follow enclosed in curly braces.

To capture brace-enclosed contents, e.g. for later processing, use

    <name>:{}

The optional default value appears last, separated by an equal sign. To avoid 
ambiguities, a list can be written using space-separated items enclosed in 
curly braces.

#### Example

The following definition is used in Myake itself:

    my_options_parse(OPTIONS __TEST_MY_PACKAGE_BASE__
        {
            NAME:="$<PROJECT_NAME>"
            VENDOR:
            VERSION:="${PROJECT_VERSION}"
            DESCRIPTION:{
                FILE:
                FULL:
                SUMMARY:
                README:
                WELCOME:
            }
            LICENSE:[1]{
                FILE:
            }
            ARCHITECTURE:
            CONTACT:
            AUTHORS:*{
                FILE:
            }
            CATEGORY:
            URL:{
                HOMEPAGE:
                ABOUT:
                HELP:
                ICON:
                LICENSE:
            }
            ICON:{
                FILE:
                INSTALL:
                UNINSTALL:
            }
            SOURCE:{
                CONFIG:
                NAME:="$<NAME>-$<SUFFIX>"
                GENERATOR:*={ ZIP }
                SUFFIX:=source
                STRIP_FILES:*
                IGNORE_FILES:*={ DEFAULTS }
                FILE_NAME:="$<NAME>-$<VERSION>-$<SUFFIX>"
            }
            CHECKSUM:
            CONFIG:
            GENERATOR:*=ZIP
            FILE_NAME:="$<NAME>-$<VERSION>"
            TARGET:
        }
    )

which allows parsing of the following configuration:

    my_options_parse(TEST_MY_PKG RESET OPTIONS __TEST_MY_PACKAGE_BASE__
        VENDOR "${PROJECT_VENDOR}"
        VERSION "${Myake_VERSION}"
        ARCHITECTURE all
        CONTACT "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"
        AUTHORS
            "Jürgen 'George' Sawinski"
            "Florian Franzen"
           CATEGORY "Development"
        DESCRIPTION {
            SUMMARY "CMake configuration personalization and utilities."
            FULL "\
    Building software from scratch (as well as developing or maintaining 
    software) generally follows the same pattern: configuring, building, and, 
    installing or packaging. Especially when developing or contributing to 
    several software projects the configuration and installation (or packaging) 
    step may involve repetitively tweaking configuration options suitable for 
    the developer's or the target machine's setup.

    Myake offers to reduce much of this dance by introducing a 'personalized' 
    configuration system (i.e. it is possible to store additional global or 
    per-project settings in the user's home folder), and, as well, provides a 
    simplified interface for package generation and methods for uploading 
    packages and documentation."
        }

        LICENSE "MIT" {
            FILE ${Myake_SOURCE_DIR}/LICENSE
           }

        URL {
            HOMEPAGE "https://github.com/jsawinski/myake"
        }

        SOURCE {
            IGNORE_FILES
                DEFAULTS
                /\\.gitignore\$
                /\\.project\$
                /_ATTIC_/
                /test/
                SUFFIX "source"
        }

        CHECKSUM SHA1
    )

#]==]
function(my_options_parse prefix)
    message(TRACE "my_options_parse(${prefix} ...)")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    set(args ${ARGN})
    list(GET args 0 arg0)

    # parse function options
    if(prefix STREQUAL OPTIONS)
        list(PREPEND args ${prefix})
        unset(prefix)
    else()
        # check for RESET, NODEFAULTS, ...
        set(parameters RESET REPLACE NODEFAULTS)

        set(parameter_found TRUE)
        while(parameter_found)
            set(parameter_found FALSE)

            foreach(param ${parameters})
                if("${arg0}" STREQUAL "${param}")
                    set(parameter_found TRUE)
                    list(POP_FRONT args)
                    list(GET args 0 arg0)
                    set(${param} TRUE)
                endif()
            endforeach()
        endwhile()
    endif()

    # OPTIONS
    list(GET args 0 arg0)
    if(arg0 STREQUAL OPTIONS)
        list(POP_FRONT args)
        list(POP_FRONT args optkey)

        __my_options_cache(${optkey})

        if(NOT DEFINED CACHE{${optkey}})
            message(FATAL_ERROR "Options for tag '${optkey}' not defined.")
        endif()
    endif()

    # parse arguments
    if(prefix)
        if(RESET)
            if(NOT optkey)
                message(FATAL_ERROR "Cannot RESET without OPTIONS.")
            endif()
            __my_options_reset()
        endif()

        if(NOT NODEFAULTS)
            __my_options_set_defaults()
        endif()
        __my_options_parse()
    endif()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

#[==[.md:
### my_options_capture

    my_options_capture(<list> <output-variable>)

This function parses a list and captures brace-enclosed settings.

#]==]
function(my_options_capture listvar outvar)
    message(TRACE "my_options_capture(${listvar} ${outvar})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")
    message(TRACE "${listvar}=${${listvar}}")

    set(args ${${listvar}})
    set(result)

    list(LENGTH args n)
    if(${n} EQUAL 0)
        list(POP_BACK CMAKE_MESSAGE_INDENT)
        return()
    endif()

    # check first arg
    list(GET args 0 arg0)
    if(NOT "${arg0}" STREQUAL "{")
        message(FATAL_ERROR "Expected a curly opening brace.")
    endif()

    # capture { ... }
    list(POP_FRONT args)
    set(depth 1)

    list(LENGTH args n)
    while(n GREATER 0)
        list(POP_FRONT args item)

        if("${item}" STREQUAL "}")
            math(EXPR depth "${depth} - 1")
            if(${depth} EQUAL 0)
                break()
            endif()

            list(POP_BACK CMAKE_MESSAGE_INDENT)
            message(TRACE "}")
        elseif("${item}" STREQUAL "{")
            math(EXPR depth "${depth} + 1")

            message(TRACE "{")
            list(APPEND CMAKE_MESSAGE_INDENT "    ")
        else()
            message(TRACE "${item}")
        endif()

        list(APPEND result "${item}")

        list(LENGTH args n)
    endwhile()

    # check
    if(${depth} GREATER 0)
        message(FATAL_ERROR "Missing curly closing brace.")
    endif()

    # promote results
    set(${outvar} ${result} PARENT_SCOPE)
    set(${listvar} ${args} PARENT_SCOPE)

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

#[================================[.md:
## Internals
#]================================]

#[[.md:
##### __my_options_key_regex

Regular expression for identifying option keys ("^[A-Z]([A-Z_]*[A-Z])?$").

#]]
set(__my_options_key_regex "^[A-Z]([A-Z_]*[A-Z])?$" CACHE INTERNAL "Regular expression for identifying option keys.")

#[[.md:
##### __my_options_cache

Parse and cache options definition.

#]]
macro(__my_options_cache optkey)
    message(TRACE "__my_options_cache()")

    if(args)
        list(GET args 0 arg0)
    endif()
    if(arg0 STREQUAL "{")
        # reset ${optkey}
        get_cmake_property(allcachevars CACHE_VARIABLES)
        foreach(cachevar ${allcachevars})
            if(cachevar MATCHES "^${optkey}_")
                unset(${cachevar} CACHE)
            endif()
        endforeach()

        # prepare
        list(POP_FRONT args)
        set(${optkey} TRUE CACHE INTERNAL "Options prefix.")

        unset(name)                    # current option name
        unset(hierarchy)            # hierarchy of option names

        set(depth 1)                # curly brace nesting depth

        # loop over arguments
        list(LENGTH args n)
        while(n GREATER 0)
            list(POP_FRONT args item)

            # split off <default-value>
            string(REGEX REPLACE "^[^=]*=" "" default "${item}")
            string(REGEX REPLACE "=.*$" "" name "${item}")

            if(name STREQUAL default)
                unset(default)
            else()
                # unquote
                string(REGEX REPLACE "^\"(.*)\"$" "\\1" default "${default}")
            endif()

            # split off <argn>
            string(REGEX REPLACE "^[^:]*:" "" argn "${name}")
            string(REGEX REPLACE ":.*$" "" name "${name}")

            string(REGEX REPLACE "{$" "" argn "${argn}") # cleanup opening brace
            if(name STREQUAL argn OR argn STREQUAL "")
                unset(argn)
            else()
                if(NOT argn MATCHES "^[[][0-9]+[]]$" AND NOT argn MATCHES "^[*-]$" AND NOT argn STREQUAL "{}")
                    message(FATAL_ERROR "Invalid <argn> specification near '${item}': ${argn}")
                endif()
                string(REGEX REPLACE "[][]" "" argn "${argn}")
            endif()

            # handle item
            if(name STREQUAL "}")
                list(POP_BACK hierarchy name)
                math(EXPR depth "${depth} - 1")

                if(depth EQUAL 0)
                    break()
                endif()

                if(depth LESS 0)
                    list(POP_FRONT args item)
                    message(FATAL_ERROR "Unexpected curly closing brace near '${item}'.")
                endif()
            else()
                # sanity-check name
                if(NOT name MATCHES "${__my_options_key_regex}")
                    message(FATAL_ERROR "Invalid option name: '${name}'.")
                endif()

                # plain item
                __my_options_tag(tag ${hierarchy} ${name})
                set(${optkey}_${tag} TRUE
                    CACHE INTERNAL "Option flag for ${item}.")

                # sub-group
                if(item MATCHES "[^=]{$")
                    math(EXPR depth "${depth} + 1")
                    list(APPEND hierarchy "${name}")
                    unset(name)
                    if(NOT argn)
                        set(argn "-")
                    endif()
                endif()
            endif()

            # handle argn
            if(argn)
                if(argn STREQUAL "{}")
                    set(${optkey}_${tag}_CAPTURE__ TRUE
                            CACHE INTERNAL "Capture all for option ${item}.")
                else()
                    if(argn STREQUAL "-")
                        set(argn 0)
                    elseif(argn STREQUAL "*")
                        set(argn -1)
                    endif()

                    set(${optkey}_${tag}_ARGN__ "${argn}"
                            CACHE INTERNAL "Arg-count for option ${item}.")
                endif()
            endif()

            # handle default
            if(default)
                if(default STREQUAL "{}")
                    # empty list
                    unset(default)
                elseif(default STREQUAL "{")
                    # default is a list within curly braces
                    unset(default)
                    while(n GREATER 0)
                        list(POP_FRONT args item)
                        if(item STREQUAL "}")
                            break()
                        endif()

                        list(APPEND default "${item}")

                        list(LENGTH args n)
                    endwhile()
                endif()

                # sanity check argn
                if(DEFINED argn)
                    list(LENGTH default default_count)
                    if(argn GREATER_EQUAL 0 AND default_count GREATER argn)
                        list(POP_FRONT args item)
                        message(FATAL_ERROR "Default list exceeds given argument count (near '${item}').")
                    endif()
                endif()

                set(${optkey}_${tag}_DEFAULT__ "${default}"
                        CACHE INTERNAL "Default for option ${item}.")
            endif()

            list(LENGTH args n)
        endwhile()

        if(depth GREATER 0)
            message(FATAL_ERROR "Expected curly closing brace.")
        endif()
    endif()
endmacro()

#[[.md:
##### __my_options_tag

Utility for assembling a variable tag.

#]]
macro(__my_options_tag outvar)
    set(__my_options_tag_list ${ARGN})
    list(JOIN __my_options_tag_list "_" ${outvar})
endmacro()

#[[.md:
##### __my_options_reset

Reset internal settings.

#]]
macro(__my_options_reset)
    if(optkey)
        message(TRACE "__my_options_reset() [${optkey}]")

        get_cmake_property(allvars VARIABLES)

        foreach(var ${allvars})
            if("${var}" MATCHES "^${optkey}" AND NOT "${var}" MATCHES "__$")
                string(REGEX REPLACE "^${optkey}_" "" tag "${var}")
                string(REGEX REPLACE "_DEFAULT__$" "" tag "${tag}")

                unset(${prefix}_${tag} PARENT_SCOPE)
            endif()
        endforeach()
    endif()
endmacro()

#[[.md:
##### __my_options_set_defaults

This macro sets defaults given by `OPTIONS` parameter.

#]]
macro(__my_options_set_defaults)
    if(optkey)
        message(TRACE "__my_options_set_defaults() [${optkey}]")

        get_cmake_property(allvars VARIABLES)

        foreach(var ${allvars})
            if("${var}" MATCHES "^${optkey}.*_DEFAULT__$")
                string(REGEX REPLACE "^${optkey}_" "" tag "${var}")
                string(REGEX REPLACE "_DEFAULT__$" "" tag "${tag}")

                set(${prefix}_${tag} "${${var}}" PARENT_SCOPE)
            endif()
        endforeach()
    endif()
endmacro()

#[[.md:
##### __my_options_parse

This macro does the actual argument parsing.

#]]
macro(__my_options_parse)
    message(TRACE "__my_options_parse() [${optkey}]")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    # prepare
    unset(${prefix}_UNPARSED_ARGUMENTS)
    unset(${prefix}_UNPARSED_ARGUMENTS PARENT_SCOPE)

    set(depth 0)                # curly brace depth

    unset(name)                    # current option name
    unset(hierarchy)            # hierarchy of option names
    unset(argn)                    # number of expected option arguments (if applicable)
    set(array FALSE)            # flag set, when brace opens (may be a list)

    # loop over arguments
    list(LENGTH args n)
    while(n GREATER 0)
        __my_options_next()

        if(item STREQUAL "{")
            message(TRACE "'${item}' [${n}]")
            list(APPEND CMAKE_MESSAGE_INDENT "    ")

            list(APPEND hierarchy "${name}")
            unset(name)
            set(array TRUE)

            math(EXPR depth "${depth} + 1")
        elseif(item STREQUAL "}")
            list(POP_BACK hierarchy)
            unset(name)
            unset(argn)
            set(array FALSE)
            math(EXPR depth "${depth} + 1")

            list(POP_BACK CMAKE_MESSAGE_INDENT)
            message(TRACE "'${item}' [${n}]")
        else()
            message(TRACE "'${item}' [${n}]")
            __my_options_check(iskey optvar)

            if(NOT optkey)
                ### OPTIONS-less parsing
                if(NOT iskey)
                    list(APPEND ${prefix}_${tag} "${item}")
                endif()
            else()
                ### use OPTIONS
                if(optvar)
                    message(TRACE "--> OPTION ${optvar}")

                    # get number of expected arguments
                    set(argn 1)
                    if(DEFINED ${optvar}_ARGN__)
                        set(argn ${${optvar}_ARGN__})
                    endif()

                    # set option name
                    set(name ${item})
                    __my_options_tag(tag ${hierarchy} ${name})

                    if(REPLACE)
                        unset(${prefix}_${tag})
                    endif()

                    if(${optvar}_CAPTURE__)
                        my_options_capture(args ${prefix}_${tag})
                        set(${prefix}_${tag} "${${prefix}_${tag}}" PARENT_SCOPE)

                        unset(name)
                    else()
                        # handle argument count
                        if(argn EQUAL 0)
                            # boolean option
                            set(${prefix}_${tag} TRUE PARENT_SCOPE)

                            # handle curly braces
                            if(N GREATER 0)
                                list(GET args 0 peek)
                                if(NOT peek STREQUAL "{")
                                    unset(name) # see (NOT name) below
                                    unset(argn)
                                endif()
                            endif()
                        elseif(argn GREATER 0)
                            # option with counted arguments
                            list(GET args 0 peek)
                            if(NOT peek STREQUAL "{")
                                while(n GREATER 0 AND argn GREATER 0)
                                    list(GET args 0 peek)
                                    if(peek STREQUAL "{")
                                        break()
                                    endif()

                                    __my_options_next()
                                    list(APPEND ${prefix}_${tag} ${item})
                                    math(EXPR argn "${argn} - 1")
                                endwhile()

                                # end of argn?
                                if(argn EQUAL 0)
                                    if(NOT args STREQUAL "")
                                        list(GET args 0 peek)
                                        if(NOT peek STREQUAL "{")
                                            unset(name) # see (NOT name) below
                                            unset(argn)
                                        endif()
                                    endif()
                                endif()

                                # propagate to caller
                                set(${prefix}_${tag} "${${prefix}_${tag}}" PARENT_SCOPE)
                            endif()
                        else()
                            # multi-argument option (arbitrary count)
                            unset(argn)
                        endif()

                        set(array FALSE)
                    endif()
                else()
                    if(NOT name AND NOT array)
                        message(TRACE "--> ${prefix}_UNPARSED_ARGUMENTS")

                        # FIXME document
                        list(APPEND ${prefix}_UNPARSED_ARGUMENTS ${item})
                        set(${prefix}_UNPARSED_ARGUMENTS "${${prefix}_UNPARSED_ARGUMENTS}" PARENT_SCOPE)
                    else()
                        __my_options_tag(tag ${hierarchy} ${name})
                        message(TRACE "--> ${prefix}_${tag}")

                        list(APPEND ${prefix}_${tag} ${item})
                        set(${prefix}_${tag} "${${prefix}_${tag}}" PARENT_SCOPE)

                        if(argn)
                            math(EXPR argn "${argn} - 1")
                            if(argn LESS 0)
                                message(FATAL_ERROR "Too many arguments follow ${tag} (near '${item}').")
                            endif()
                        endif()
                    endif()
                endif()
            endif()
        endif()
    endwhile()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()

#[[.md:
##### __my_options_next

Get next argument.

Used by [__my_options_parse](#__my_options_parse).

#]]
macro(__my_options_next)
    list(POP_FRONT args item)
    list(LENGTH args n)
endmacro()

#[[.md:
##### __my_options_check

Check if "${item}" is a key, and if OPTIONS was used (ie. optkey is set), set 
optvar.

Used by [__my_options_parse](#__my_options_parse).

#]]
macro(__my_options_check iskey optvar)
    # check if item's a key
    __my_options_tag(tag ${hierarchy} ${item})
    set(${iskey} FALSE)
    if(tag MATCHES "${__my_options_key_regex}")
        set(${iskey} TRUE)
    endif()

    # check if option cached
    if(optkey)
        unset(${optvar})
        if(DEFINED ${optkey}_${tag} AND ${optkey}_${tag})
            set(${optvar} ${optkey}_${tag})
        endif()
    endif()
endmacro()

