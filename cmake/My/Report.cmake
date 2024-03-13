# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Report - Reporting

Myake keeps track of it's settings by creating a report file and offers the
possibility to either add options (such as additional build targets, e.g. for
packages) to the master report file or create ones own report file (owing to
the authors inability to memorize and/or laziness to UTSL).

The report is generally available in the project's binary folder or can be
displayed during a `cmake` run. See [``my_report``](#my_report)
for further details.

## Example

The internal Myake report is setup in the following way:

    my_report(My
        TOPIC "Myake settings"
        FILE ${CMAKE_BINARY_DIR}/ReportMyake.txt
    )

    my_report(My/Platform SECTION "Platform")
    my_report(My/Variables SECTION "Variables")
    my_report(My/Targets SECTION "Targets")
    my_report(My/External SECTION "External sites")
    my_report(My/Environment SECTION "Environment")

    my_report(My
        "The following settings were recorded during configuration of project '$<PROJECT_NAME>'."
        "Variables, environment and command-line arguments relevant for using Myake are listed below.")

    my_report(My/Environment 
        %{P} 
        %{50} "    MY_REPORT=$ENV{MY_REPORT}" 
        "Report generator setting (<topic> or HELP).")

Note here, as can be supposed from the '%{...}' elements, that limited output 
formatting is supported.

## Reference

#]=======================================================================]
include_guard(GLOBAL)

include(My/Bits/Set)
include(My/Bits/String)

#[==[.md:
### Environment variables and command-line arguments

To view a report it is possible, either to set the environment

    MY_REPORT=<topic> cmake .

or define the identical cache variable

    cmake -DMY_REPORT=<topic> .

(or clear the report using ``-UMY_REPORT``).

To show a list of topics, use 'help'.

Note, however, that, even if not displayed, a report file is always generated.

#]==]
unset(__MY_REPORT_DO)
if(DEFINED ENV{MY_REPORT})
    set(__MY_REPORT_DO $ENV{MY_REPORT})
elseif(DEFINED CACHE{MY_REPORT})
    set(__MY_REPORT_DO ${MY_REPORT})
endif()

#[==[.md:
### my_report

#### Create a report topic with sections

    my_report(<topic>
        TOPIC "title..."
        [FILE <output-file>]
    )

Create a report topic. The option ``FILE`` sets the output file for the report, 
by default this is ${CMAKE_BINARY_DIR}/Report<topic>.txt.

    my_report(<topic>/<section>...
        SECTION "title...")

Add a section to a topic.

#### Adding messages to the report

    my_report(<topic>[/<section...]
        <text>...)

The text can be a list of strings combined with format instructions as
understood by [`my_string_format`](Bits/String.md#my_string_format). It
understands the tags

    %{P}          Start a paragraph.
    %{BR}         Line break.

and genex-type variable expansion ("%<VARNAME>").

#]==]
function(my_report topic)
    ### check invocation
    cmake_parse_arguments(_ "" "" "TOPIC;SECTION" ${ARGN})

    # SHOW?
    if(topic STREQUAL SHOW)
        # generate files
        foreach(topic ${MY_REPORT_TOPICS})
            my_report_generate(${topic})
        endforeach()

        # display (if requested)
        string(TOUPPER "${__MY_REPORT_DO}" __MY_REPORT_DO_UC)
        if(__MY_REPORT_DO_UC STREQUAL HELP)
            my_report_show(HELP)
        else()
            foreach(topic ${__MY_REPORT_DO})
                my_report_show(${topic})
            endforeach()
        endif()
        return()
    endif()

    # define TOPIC or SECTION?
    if(__TOPIC OR __SECTION)
        my_report_create(${topic} ${ARGN})
        return()
    endif()

    ### handle message
    __my_report_topic(${topic} tag parent root)

    # sanity checks
    if(NOT DEFINED CACHE{MY_REPORT_${tag}})
        message(FATAL_ERROR "Topic or section not recognized: ${tag}")
    endif()

    # add message
    my_list(APPEND MY_REPORT_${tag}_CONTENT ${ARGN})
endfunction()

#[==[.md:
### my_report_create

Create a report topic or sections.

This command is called from [``my_report``](#my_report).

#]==]
function(my_report_create topic)
    ### parse arguments
    cmake_parse_arguments(_ "" "TOPIC;FILE;SECTION" "" ${ARGN})

    if(__TOPIC)
        if(__SECTION)
            message(FATAL_ERROR "Invalid arguments: TOPIC and SECTION are mutually exclusive.")
        endif()

        # setup topic
        my_set(MY_REPORT_${topic} "${__TOPIC}" CACHE INTERNAL)
        my_set(MY_REPORT_${topic}_CONTENT "" CACHE INTERNAL)
        my_set(MY_REPORT_${topic}_SECTIONS "" CACHE INTERNAL)
        if(__FILE)
            my_set(MY_REPORT_${topic}_FILE "${__FILE}" CACHE INTERNAL)
        else()
            my_set(MY_REPORT_${topic}_FILE "${CMAKE_BINARY_DIR}/Report${topic}.txt" CACHE INTERNAL)
        endif()

        my_list(APPEND MY_REPORT_TOPICS ${topic} UNIQUE)
    elseif(__SECTION)
        __my_report_topic(${topic} tag parent root)

        # sanity checks
        if(NOT parent)
            message(FATAL_ERROR "Not a section.")
        endif()

        if(NOT DEFINED CACHE{MY_REPORT_${root}})
            message(FATAL_ERROR "Topic not recognized: ${root}")
        endif()

        if(NOT DEFINED CACHE{MY_REPORT_${parent}})
            message(FATAL_ERROR "Section or topic not recognized: ${parent}")
        endif()

        # setup section
        my_set(MY_REPORT_${tag} "${__SECTION}" CACHE INTERNAL)
        my_set(MY_REPORT_${tag}_CONTENT "" CACHE INTERNAL)
        my_set(MY_REPORT_${tag}_SECTIONS "" CACHE INTERNAL)

        my_list(APPEND MY_REPORT_${parent}_SECTIONS ${tag} UNIQUE)
    else()
        message(FATAL_ERROR "Expected option TOPIC or SECTION.")
    endif()
endfunction()

my_set(MY_REPORT_TOPICS "" CACHE INTERNAL)

#[==[.md:
### my_report_generate

Generate report file.

This command is called from [my_report](#my_report).

#]==]
function(my_report_generate topic)
    # reset report file
    file(WRITE ${MY_REPORT_${topic}_FILE})

    # add content
    __my_report_generate(${topic} ${MY_REPORT_${topic}_FILE})
endfunction()

#[==[.md:
### my_report_show

Display report or help.

This command is called from [my_report](#my_report).

#]==]
function(my_report_show topic)
    if(topic STREQUAL HELP)
        message(NOTICE "** ")
        message(NOTICE "** Report topics:")
        foreach(topic ${MY_REPORT_TOPICS})
            message(NOTICE "**     ${topic} (${MY_REPORT_${topic}})")
        endforeach()
        message(NOTICE "** ")
    else()
        string(REGEX REPLACE "/.*$" "" master "${topic}")
        if("${master}" STREQUAL "${topic}")
            file(READ ${MY_REPORT_${topic}_FILE} content)
            message(NOTICE "${content}")
        else()
            string(REGEX REPLACE "^${topic}/" "" section "${topic}")
            if("${section}" STREQUAL "*") # FIXME undocumented feature
                message(NOTICE "** Report sections:")
                message(NOTICE "** ${master}")
                __my_report_show_sections(${master} "    ")
            else()
                message(NOTICE "** Displaying sections of report file is not supported.")
            endif()
        endif()
    endif()
endfunction()

#[================================[.md:
### Internals
#]================================]

#[[.md:
#### __my_report_topic

    __my_report_topic(<topic>[/<section>...] <tag-variable> <parent-variable> <top-variable>)

This helper splits a topic path into the current 'tag', the 'parent' and
the root. For example, 

    __my_report_topic(my/topic/section tag parent root)

is equivalent to

    set(tag "section")
    set(parent "my_topic")
    set(root "my")

#]]
macro(__my_report_topic topic tagvar parentvar topvar)
    string(REPLACE "/" "_" ${tagvar} "${topic}")
    string(REGEX REPLACE "_[^_]*$" "" ${parentvar} "${${tagvar}}")
    string(REGEX REPLACE "_.*$" "" ${topvar} "${${tagvar}}")

    if("${${tagvar}}" STREQUAL "${${parentvar}}")
        unset(${parentvar})
    endif()
endmacro()

#[[.md:
#### __my_report_generate

    __my_report_generate(<tag> <outfile>)

Helper macro to assemble the actual report consiting of multiple sections.

#]]
function(__my_report_generate tag outf)
    string(REGEX REPLACE "_.*$" "" topic "${tag}")

    ### title
    # section numbering
    if(ARGN)
        list(JOIN ARGN "." numbering)
        file(APPEND ${outf} "${numbering} ")
    endif()

    # title
    file(APPEND ${outf} ${MY_REPORT_${tag}} "\n")

    ### content
    # prepare
    set(output)                                 # formatted output

    set(content ${MY_REPORT_${tag}_CONTENT})    # content message list
    list(LENGTH content contentlen)             # content item count

    unset(hascontent)                           # flag if content is available
    if(contentlen GREATER 0)
        set(hascontent TRUE)
    endif()

    set(bol TRUE)                               # flag for beginning-of-line
    set(aftertitle TRUE)                        # flag for omitting line break after title

    # expand genex-type variables
    my_string_genex_expand(content "${content}")

    # empty line after title
    if(hascontent)
        string(APPEND output "\n")
    endif()

    # loop over content list
    set(n ${contentlen})
    while(n GREATER 0)
        # separate messages with a space
        if(NOT bol)
            string(APPEND output " ")
        endif()

        # get message text
        list(POP_FRONT content text)

        # format
        my_string_format(FMT "${text}" "${content}")

        if(FMT_TYPE)
            if(FMT_TYPE STREQUAL EXTERNAL)
                __my_report_output_tag(${FMT_FORMAT})
            else()
                if(FMT_TEXT)
                    set(text "${FMT_TEXT}")
                endif()

                if(FMT_ARGC)
                    foreach(ii RANGE 1 ${FMT_ARGC})
                        list(POP_FRONT content)
                    endforeach()
                endif()
            endif()
        endif()

        string(APPEND output "${text}")

        # beginning-of-line ?
        if(NOT "${text}" STREQUAL "")
            if("${text}" MATCHES "[\n]$")
                set(bol TRUE)
            else()
                set(bol FALSE)
            endif()
        endif()

        # after first output
        set(aftertitle FALSE) #FIXME

        # next
        list(LENGTH content n)
    endwhile()

    # newline after content
    if(hascontent)
        string(APPEND output "\n")
    endif()

    ### wrap
    # FIXME

    ### output
    file(APPEND ${outf} "${output}")

    ### sections
    set(n 1)
    foreach(sec ${MY_REPORT_${tag}_SECTIONS})
        file(APPEND ${outf} "\n")
        __my_report_generate(${sec} ${outf} ${ARGN} ${n})
        math(EXPR n "${n} + 1")
    endforeach()
endfunction()

macro(__my_report_output_tag tag)
    if(${tag} STREQUAL "BR")
        if(NOT aftertitle)
            set(text "\n")
        else()
            set(text "")
        endif()
        set(bol TRUE)
    elseif(${tag} STREQUAL "P")
        if(NOT ${aftertitle})
            set(text "\n\n")
        else()
            set(text "")
        endif()
        set(bol TRUE)
    else()
        message(FATAL_ERROR "Unrecognized formatting instruction: ${tag}")
    endif()
endmacro()


#[[.md:
#### __my_report_show_sections

    __my_report_show_sections(<topic> <indentation string>)

Helper to output a report section in the ``cmake`` messsage log.

#]]
function(__my_report_show_sections topic indent)
    foreach(section ${MY_REPORT_${topic}_SECTIONS})
        string(REPLACE "${topic}_" "" dispsec "${section}")
        message(NOTICE "** ${indent}${dispsec}")
        if(DEFINED MY_REPORT_${section}_SECTIONS)
            __my_report_show_sections(${section} "${indent}    ")
        endif()
    endforeach()
endfunction()

####################################################

my_report(My
    TOPIC "Myake settings"
    FILE ${CMAKE_BINARY_DIR}/ReportMyake.txt
)

my_report(My/Platform SECTION "Platform")
my_report(My/Variables SECTION "Variables")
my_report(My/Targets SECTION "Targets")
my_report(My/External SECTION "External sites")
my_report(My/Environment SECTION "Environment")

my_report(My
    "The following settings were recorded during configuration of project '$<PROJECT_NAME>'. Variables, environment and"
    "command-line arguments relevant for using Myake are listed below.")

my_report(My/Environment %{P} %{50} "    MY_REPORT=$ENV{MY_REPORT}" "Report generator setting (<topic> or HELP).")



