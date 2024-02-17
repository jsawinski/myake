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

include(My/Bits/Set)
include(My/Bits/String)

#[==[.md:
### my_structure_parse

Declare a parser template:

    my_structure_parse(TEMPLATE <prefix> 
        <template-declaration>
    }

Parse a structure:

    my_structure_parse(<prefix> 
        [RESET|REPLACE] 
        [NODEFAULTS]
        [TEMPLATE <key>]
        <arguments>...
    }

See the [structure test](https://github.com/jsawinski/myake/blob/master/tests/Test/Structure.cmake)
for an example.

#### Structure parsing

A structure, in contrast to linear lists of arguments, uses additional
decoration (braces) to distinguish blocks:

    OPTION
    VARIABLE "value"
    MULTIVARIABLE "a" "b" "c"
    BLOCK {
        OPTION
    }

with translates to (omitting a prefix):

    set(OPTION TRUE)
    set(VARIABLE "value")
    set(MULTIVARIABLE "a" "b" "c")
    set(BLOCK_OPTION TRUE)

When a template is provided, in addition, named blocks are provided.
For example

    BLOCK "name" {
        VARIABLE "value"
    }

then translates to

    set(BRANCH_name_VARIABLE "value")

It is even possible (see next paragraph) to implement nested blocks.

**Options**:

`RESET` will unset all variables starting with `<prefix>_`. In case a 
template is provided, only those, that are handled by the template.

`REPLACE` will only reset given keys, otherwise, `my_structure_parse` will
append them.

`NODEFAULTS` instructs the parser to ignore default values given in the 
template.

`TEMPLATE <key>` will instruct the parser to adhere to the given template.

#### Template declaration

The general format of a template declaration is this:

    <VARIABLE>:[<PARAMETER>][=<VALUE>]

`<VARIABLE>` is an upper-case identifier ("^[A-Z][A-Z]+$"), 

`<PARAMETER>` is 
`-` for an option (boolean flag as with `cmake_parse_arguments`),
`*` for multi-argument variables,
`<number>` for defined number of variable arguments.
If ommited, a single argument is expected.

Optionally a default `<VALUE>` can be provided.

Unnamed groups are declared using

    <BLOCK>:- {
        <...>
    }

while named groups use

    <BLOCK>: {
        <...>
    }

Nested groups support a linking mechanism, declared by

    [@<LINK>-><KEY>]

This instructs the parser to assign the blocks name in the `<LINK>` block
as `<...>_<KEY>`.

See the [structure test](https://github.com/jsawinski/myake/blob/master/tests/Test/Structure.cmake)
for an example.

#]==]
function(my_structure_parse __PREFIX)
    message(TRACE "my_structure_parse(${prefix} ...)")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    if(${__PREFIX} STREQUAL TEMPLATE)
        if(NOT "${ARGV1}" MATCHES "^[A-Z][A-Z_]*$")
            message(FATAL_ERROR "Template names must be of the form '^[A-Z][A-Z_]*$' (${ARGV1}).")
        endif()

        __my_structure_template(TMPL_${ARGN})
    else()
        cmake_parse_arguments(_ "RESET;REPLACE;NODEFAULTS" "TEMPLATE" "" ${ARGN})

        set(__TEMPLATE TMPL_${__TEMPLATE})
        if(__TEMPLATE)
            if(NOT DEFINED ${__TEMPLATE}-__KEYS__)
                message(FATAL_ERROR "Template '${__TEMPLATE}' is not defined.")
            endif()
        endif()

        if(__RESET)
            __my_structure_reset()            
        endif()

        __my_structure_parse(${__UNPARSED_ARGUMENTS})
    endif()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

#[================================[.md:
## Internals
#]================================]

#[[.md:
### __my_structure_template

This macro parses the template definition.

#]]
macro(__my_structure_template template_id)
    ### split arguments
    # the following splits the input into pieces for the DSM below,
    # e.g.
    #            NAME:*{}
    # is split into 
    #            NAME
    #            :
    #            *
    #            {
    #            }
    # 
    # This macro uses the following tags:
    #       __KEYS__        Value and branch keys.
    #       __ARGN__        Number of arguments.
    #       __NAME__        Boolean value indicating a named group.
    #       __CHLD__        List of keys allowed as children.
    #       __LINK__        Tag for setting links.
    #       __VALUE__       Default value.
    #
    set(arglist)
    foreach(arg ${ARGN})
        if("${arg}" MATCHES "[^A-Za-z_]")
            set(currentarg ${arg})
            while(currentarg)
                string(REGEX MATCH "^[A-Z_]+" tag "${currentarg}")
                if (tag)
                    string(REGEX REPLACE "^${tag}" "" currentarg "${currentarg}")
                    list(APPEND arglist "${tag}")
                    continue()
                endif()

                string(REGEX MATCH "^[1-9][0-9]*" number "${currentarg}")
                if (number)
                    string(REGEX REPLACE "^${number}" "" currentarg "${currentarg}")
                    list(APPEND arglist "${number}")
                    continue()
                endif()

                string(REGEX MATCH "^['\"]" quote "${currentarg}")
                if (quote)
                    string(LENGTH "${currentarg}" N)
                    set(escape Off)
                    set(len 0)
                    foreach(i RANGE 1 ${N})
                        my_substring(char ${i} ${i} "${currentarg}")
                        if ("${char}" STREQUAL "\\")
                            if(NOT escape)
                                set(escape On)
                                continue()
                            endif()
                        elseif (NOT escape AND "${char}" STREQUAL "${quote}")
                            set(len ${i})
                            break()
                        endif()

                        set(escape Off)
                    endforeach()

                    if(${len} EQUAL 0)
                        message(FATAL_ERROR "Missing closing quote: ${quote}")
                    endif()

                    my_substring(string 0 ${len} "${currentarg}")
                    list(APPEND arglist "${string}")

                    math(EXPR len "${len}+1")
                    my_substring(currentarg ${len} -1 "${currentarg}")
                endif()

                my_substring(char 0 0 "${currentarg}")
                list(APPEND arglist "${char}")

                my_substring(currentarg 1 -1 "${currentarg}")
            endwhile()
        else()
            list(APPEND arglist ${arg})
        endif()
    endforeach()

    ### parse
    # clear cache
    get_cmake_property(tmplvars CACHE_VARIABLES)
    foreach(tmpl ${tmplvars})
        if("${tmpl}" MATCHES "^${template_id}")
            unset(${tmpl} CACHE)
        endif()
    endforeach()

    # setup cache
    set(${template_id}-__KEYS__ ${${template_id}-__KEYS__} CACHE INTERNAL "")

    # state machine values
    set(dsm_key_or_grouping 0)
    set(dsm_colon 1)
    set(dsm_definition 2)
    set(dsm_grouping_name 3)
    set(dsm_grouping_minus 4)
    set(dsm_grouping_greater 5)
    set(dsm_grouping_key 6)
    set(dsm_default_value 7)

    set(state ${dsm_key_or_grouping})

    # temporaries
    set(depth 0)                  # brace depth
    set(namespace ${template_id}) # option list
    set(option)                   # current option
    set(node)                     # current node
    set(tmplprefix)               # variable prefix for current template entry
        
    # parse (using a discrete state machine)
    foreach(arg ${arglist})
        if(${state} EQUAL ${dsm_definition})
            if("${arg}" MATCHES "^[1-9][0-9]*$")
                my_set(${tmplprefix}-__ARGN__ ${arg} CACHE INTERNAL)
            elseif("${arg}" STREQUAL "-")
                my_set(${tmplprefix}-__ARGN__ 0 CACHE INTERNAL)
            elseif("${arg}" STREQUAL "*")
                my_set(${tmplprefix}-__ARGN__ -1 CACHE INTERNAL)
            elseif("${arg}" STREQUAL "=")
                set(state ${dsm_default_value})
                continue()
            else()
                set(state ${dsm_key_or_grouping})
            endif()
        endif()

        if(${state} EQUAL ${dsm_key_or_grouping}) 
            if("${arg}" MATCHES "^[A-Z_]+$")
                set(option ${arg})

                # template prefix
                list(JOIN namespace "-" varpart)
                set(tmplprefix ${varpart})
                list(APPEND ${tmplprefix}-__KEYS__ ${option})

                # store __KEYS__
                set(${tmplprefix}-__KEYS__ ${${tmplprefix}-__KEYS__} CACHE INTERNAL "") # FIXME

                # template variable part
                set(tmplprefix ${tmplprefix}-${option})

                # defaults
                my_set(${tmplprefix}-__ARGN__ 1 CACHE INTERNAL)

                set(state ${dsm_colon})
            elseif("${arg}" STREQUAL "{")
                # enter grouping
                math(EXPR depth "${depth}+1")
                list(APPEND namespace "${option}")
            elseif("${arg}" STREQUAL "}")
                # leave grouping
                math(EXPR depth "${depth}-1")

                # sanity check if named group
                list(JOIN namespace "-" groupprefix)
                if(DEFINED ${groupprefix}-__ARGN__)
                    if(${${groupprefix}-__ARGN__} EQUAL 0)
                    elseif(${${groupprefix}-__ARGN__} EQUAL 1)
                        set(${groupprefix}-__NAME__ TRUE CACHE INTERNAL "")
                    else()
                        list(POP_BACK namespace option)
                        message(FATAL_ERROR "Named groups may only have one argument before braces: ${option}")
                    endif()
                    unset(${groupprefix}-__ARGN__ CACHE )
                endif()

                list(POP_BACK namespace)
            elseif("${arg}" STREQUAL "@")
                # grouping link
                set(state ${dsm_grouping_name})
            else()
                message(FATAL_ERROR "Unexpected token: ${arg}")
            endif()
        elseif(${state} EQUAL ${dsm_colon}) 
            if(NOT "${arg}" STREQUAL ":")
                message(FATAL_ERROR "expected a colon after name '${option}'")
            endif()
            set(state ${dsm_definition})
        elseif(${state} EQUAL ${dsm_grouping_name})
            if(NOT "${arg}" MATCHES "^[A-Z_]+")
                message(FATAL_ERROR "expected an option after '@'")
            endif()

            # node, that needs a link
            set(node ${arg})

            set(state ${dsm_grouping_minus})
        elseif(${state} EQUAL ${dsm_grouping_minus})
            if(NOT "${arg}" STREQUAL "-")
                message(FATAL_ERROR "expected '-' after @${node}")
            endif()
            set(state ${dsm_grouping_greater})
        elseif(${state} EQUAL ${dsm_grouping_greater})
            if(NOT "${arg}" STREQUAL ">")
                message(FATAL_ERROR "expected '>' after @${node}-")
            endif()
            set(state ${dsm_grouping_key})
        elseif(${state} EQUAL ${dsm_grouping_key})
            if(NOT "${arg}" MATCHES "^[A-Z_]+")
                message(FATAL_ERROR "expected an option after '@${node}->'")
            endif()

            list(JOIN namespace "-" groupprefix)

            # make grouping a node
            list(APPEND ${groupprefix}-__CHLD__ ${node})
            set(${groupprefix}-__CHLD__ ${${groupprefix}-__CHLD__} CACHE INTERNAL "")

            set(${groupprefix}-__LINK__-${node} ${arg} CACHE INTERNAL "")

            set(state ${dsm_key_or_grouping})
        elseif(${state} EQUAL ${dsm_default_value}) 
            my_set(${tmplprefix}-__VALUE__ "${arg}" CACHE INTERNAL)
            set(state ${dsm_key_or_grouping})
        elseif(${state} EQUAL ${dsm_definition}) 
            # see above
        else()
            message(FATAL_ERROR "Internal error: invalid DSM state ${state} in __my_structure_template")
        endif()
    endforeach()

    # sanity checks
    if(${depth} GREATER 0)
        message(FATAL_ERROR "Missing closing brace")
    elseif(${depth} LESS 0)
        message(FATAL_ERROR "Too many closing braces")
    endif()
endmacro()

#[[.md:
### __my_structure_parse

This macro parses options.

#]]
macro(__my_structure_parse)
    if(NOT __TEMPLATE)
        message(FATAL_ERROR "Parsing without template is currently not supported.")
    endif()

    ### parse
    # discrete state machine
    set(dsm_option 0)               # expect an option
    set(dsm_values 1)               # expect values
    set(dsm_named_group 2)          # declaration of a named group
    set(dsm_enter_group 3)          # enter a (named or unnamed) group
    set(dsm_leave_group 4)          # leave a (named or unnamed) group

    set(state ${dsm_option})        # current DSM state

    # internals
    set(namespace ${__PREFIX})      # namespace, when joined with _, yields variable name
    set(tmplspace TMPL_${__PREFIX}) # template namespace, when joined with -, yields template declaration variable

    set(option)                     # current option key
    set(groupspace)                 # group names
    set(childspace)                 # tracking hierarchy of 'children'

    # prepare other variables
    __my_structure_get(__keys__ "-" ${tmplspace} __KEYS__)

    # loop over arguments (DSM)
    foreach(arg ${ARGN})
        if("${arg}" STREQUAL "}")
            set(state ${dsm_leave_group})
            # FALLTHROUGH
        endif()

        if (${state} EQUAL ${dsm_option})
            set(option ${arg})

            # sanity check: format
            if(NOT "${option}" MATCHES "^[A-Z][A-Z_]*$")
                message(FATAL_ERROR "Expected an option key ([A-Z][A-Z_]*) but found '${option}'.")
            endif()

            # handle key
            __my_structure_get(__chld__ "-" ${tmplspace} __CHLD__)
            if("${option}" IN_LIST __chld__)
                # prepare child node
                __my_structure_get(__name__ "-" ${tmplspace} __NAME__)
                if(NOT __name__)
                    message(FATAL_ERROR "Expected a named node under '${option}'.")
                endif()

                # transition state
                set(state ${dsm_named_group})
            elseif("${option}" IN_LIST __keys__)
                unset(__chld__)

                # valid key
                __my_structure_get(__argn__ "-" ${tmplspace} ${option} __ARGN__)

                # replace value?
                if(__REPLACE)
                    __my_structure_unset("_" ${namespace} ${option})
                endif()

                if(DEFINED __argn__)
                    # option, one or multi-value
                    if(__argn__ EQUAL 0)
                        __my_structure_set(TRUE "_" ${namespace} ${option})
                    else()
                        set(state ${dsm_values})
                    endif()
                else()
                    # group
                    __my_structure_get(__name__ "-" ${tmplspace} ${option} __NAME__)
                    if(__name__)
                        set(state ${dsm_named_group})
                    else()
                        set(state ${dsm_enter_group})
                    endif()
                endif()
            else()
                message(FATAL_ERROR "Expected a valid identifier but found '${option}' not defined in template.")
            endif()
        elseif(${state} EQUAL ${dsm_values})
            __my_structure_append(${arg} "_" ${namespace} ${option})

            math(EXPR __argn__ "${__argn__} - 1")
            if(__argn__ EQUAL 0)
                set(state ${dsm_option})
            endif()
        elseif(${state} EQUAL ${dsm_named_group})
            # enter named group
            list(PREPEND groupspace "${arg}")

            set(state ${dsm_enter_group})
        elseif(${state} EQUAL ${dsm_enter_group})
            if("${arg}" STREQUAL "{}")
                # skipping
            elseif(NOT "${arg}" STREQUAL "{")
                message(FATAL_ERROR "Expected an opening brace for option '${option}'.")
            endif()

            # child node
            unset(__link__)
            if(__chld__)
                # check link
                __my_structure_get(__link__ "-" ${tmplspace} __LINK__ ${option})

                # handle spaces
                list(POP_BACK tmplspace lastoption)
                list(POP_BACK namespace lastgroupname)
                if(__name__)
                    list(POP_BACK namespace)
                else()
                    message(FATAL_ERROR "Internal error.")
                endif()

                # child space
                list(PREPEND childspace ${lastoption})
            else()
                list(PREPEND childspace FALSE)
            endif()

            # update namespaces
            list(APPEND tmplspace "${option}")
            list(APPEND namespace "${option}")
            if(__name__)
                list(GET groupspace 0 groupname)

                __my_structure_append("${groupname}" _ ${namespace} ALL)
                list(APPEND namespace "${groupname}")
            endif()

            # link node
            if(__link__)
                __my_structure_set(${lastgroupname} "_" ${namespace} ${__link__})
            endif()
            
            # transition state
            __my_structure_get(__keys__ "-" ${tmplspace} __KEYS__)
            set(state ${dsm_option})
        elseif(${state} EQUAL ${dsm_leave_group})
            if(NOT "${arg}" STREQUAL "}")
                message(FATAL_ERROR "Expected a closing brace for option '${option}'.")
            endif()

            # update namespaces
            __my_structure_get(__name__ "-" ${tmplspace} __NAME__)
            list(POP_BACK tmplspace lastoption)            
            list(POP_BACK namespace)
            if(__name__)
                list(POP_BACK namespace)
                list(POP_FRONT groupspace groupname)
            endif()

            # children?
            list(POP_FRONT childspace __chld__)
            if(__chld__)
                list(APPEND tmplspace ${__chld__})
                list(APPEND namespace ${__chld__})

                list(GET groupspace 0 groupname)
                list(APPEND namespace ${groupname})
            endif()

            # transition state
            list(LENGTH tmplspace depth)
            if(depth LESS 1)
                message(FATAL_ERROR "Too many closing braces.")
            endif()

            __my_structure_get(__keys__ "-" ${tmplspace} __KEYS__)
            set(state ${dsm_option})
        else()
            message(FATAL_ERROR "Internal error.")
        endif()
    endforeach()

    ### defaults
    if(NOT __NODEFAULTS)
        get_cmake_property(varlist CACHE_VARIABLES)
        foreach(var ${varlist})
            if("${var}" MATCHES "^${__TEMPLATE}")
                if("${var}" MATCHES "__VALUE__$")
                    string(REGEX REPLACE "^${__TEMPLATE}-" "${__PREFIX}_" outvar "${var}")
                    string(REGEX REPLACE "-__VALUE__$" "" outvar "${outvar}")
                    string(REPLACE "-" "_" outvar "${outvar}")
                    set(${outvar} "${${var}}")
                endif()
            endif()
        endforeach()
    endif()

    ### debug
    # get_cmake_property(varlist VARIABLES)
    # foreach(var ${varlist})
    #     if("${var}" MATCHES "^${__PREFIX}_")
    #         message("*** ${var}=${${var}}")
    #     endif()
    # endforeach()
endmacro()

#[[.md:
### __my_structure_reset

This macro resets options.

#]]
macro(__my_structure_reset)
    get_cmake_property(varlist VARIABLES)
    if(__TEMPLATE)
        foreach(pattern ${${__TEMPLATE}-__KEYS__})
            foreach(var ${varlist})
                if("${var}" MATCHES "^${__PREFIX}_${pattern}")
                    unset(${var})
                    unset(${var} PARENT_SCOPE)
                endif()
            endforeach()
        endforeach()
    else()
        foreach(var ${varlist})
            if("${var}" MATCHES "^${__PREFIX}_")
                unset(${var})
                unset(${var} PARENT_SCOPE)
            endif()
        endforeach()
    endif()
endmacro()

#[[.md:
### __my_structure_get

    __my_structure_get(<variable-name> <glue> <...>)

Helper to retrieve a template or data value    
#]]
function(__my_structure_get outvar glue)
    set(tbl ${ARGN})
    list(JOIN tbl ${glue} result)
    if(DEFINED ${result})
        set(${outvar} ${${result}} PARENT_SCOPE)
    else()
        unset(${outvar} PARENT_SCOPE)
    endif()
endfunction()

#[[.md:
### __my_structure_set

    __my_structure_set(<value> <glue> <...>)

Helper to assign a template or data value    
#]]
macro(__my_structure_set value glue)
    set(tbl ${ARGN})
    list(JOIN tbl ${glue} outvar)
    set(${outvar} ${value} PARENT_SCOPE)
endmacro()

#[[.md:
### __my_structure_set

    __my_structure_set(<value> <glue> <...>)

Helper to add a template or data value    
#]]
macro(__my_structure_append value glue)
    set(tbl ${ARGN})
    list(JOIN tbl ${glue} outvar)
    list(APPEND ${outvar} ${value})
    set(${outvar} ${${outvar}})
    set(${outvar} ${${outvar}} PARENT_SCOPE)
endmacro()

#[[.md:
### __my_structure_unset

    __my_structure_set(<glue> <...>)

Helper to clear a template or data value    
#]]
macro(__my_structure_unset glue)
    set(tbl ${ARGN})
    list(JOIN tbl ${glue} outvar)
    unset(${outvar})
    unset(${outvar} PARENT_SCOPE)
endmacro()

