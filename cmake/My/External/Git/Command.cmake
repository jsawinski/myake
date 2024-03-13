# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/External/Git/Command

## Reference
#]=======================================================================]
include_guard(GLOBAL)

find_package(Git)

#[==[.md:
### my_git

    my_git(<command>
        [SITE <site-name>]

        DIRECTORY <directory>
        REPOSITORY <repository-url>
        [BRANCH <branch>]
        [TAG <tag>]
        [SHALLOW <boolean>]
        [PROGRESS <boolean>]
        [CONFIG <config-options>...]
        [REMOTE {
            [NAME <remote-name>]
            [STRATEGY <strategy>]
        }]
        [SUBMODULES {
            [<sub-modules>...]
            [RECURSE <boolean>]
        }]
        [MESSAGE "commit-message"]

        [EXECUTE_PROCESS_ARGS <execute_program-args>...]
    )

#]==]
function(my_git command)
    __my_git(${command} ${ARGN})
endfunction()

macro(__my_git command)
    ### define options and reset arguments
    my_options_parse(GIT RESET
        OPTIONS __MY_GIT {
            SITE:
            EXECUTE_PROCESS_ARGS:*
            DIRECTORY:
            REPOSITORY:
            BRANCH:
            TAG:
            SHALLOW:
            PROGRESS:
            MESSAGE:
            CONFIG:*
            REMOTE:-{
                NAME:
                STRATEGY:
            }
            SUBMODULES:*{
                RECURSE:
            }
            TAINTED:=fail
            RATELIMIT:=5
        }
    )

    # load site config
    if(GIT_SITE)
        include(${MY_EXTERNAL_SITE_${GIT_SITE}}/config.cmake)
    endif()

    # argument overrides
    my_options_parse(GIT
        OPTIONS __MY_GIT
        ${ARGN}
    )

    if(NOT GIT_REPOSITORY)
        message(FATAL_ERROR "Option REPOSITORY is required.")
    endif()

    if(NOT GIT_DIRECTORY)
        message(FATAL_ERROR "Option DIRECTORY is required.")
    endif()

    ### handle command
    __my_git_command(${command})
endmacro()

#[==[.md:
### Internals
#]==]

#[[.md:
### __my_git_command

    __my_git_command(<command>)

This macro executes a git command. All options (except SITE, see [my_git](#markdown-header-my_git))
must be set in GIT_* variables.

This macro is intended for use in scripts.

#]]
macro(__my_git_command command)
    message(STATUS "Executing git ${command}...")

    # assemble git options and command args
    set(gitargs)
    set(gitoptions)

    # assemble command arguments
    if(${command} STREQUAL checkout)
        list(APPEND gitargs ${GIT_REPOSITORY})
    endif()

    if(GIT_BRANCH)
        if(${command} STREQUAL checkout)
            list(APPEND gitargs --branch ${GIT_BRANCH})
        endif()
    endif()

    if(GIT_TAG)
        if(${command} STREQUAL checkout)
            list(APPEND gitargs ${GIT_TAG})
        endif()
    endif()

    if(GIT_MESSAGE)
        if(${command} STREAQUAL commit)
            list(APPEND gitargs --message "${GIT_MESSAGE}")
        endif()
    endif()

    if(GIT_SHALLOW)
        if(${command} STREQUAL clone
            OR ${command} STREQUAL pull)
            list(APPEND gitargs --depth 1)
        endif()
    endif()

    if(GIT_PROGRESS)
        if(${command} STREQUAL checkout
            OR ${command} STREQUAL push
            OR ${command} STREQUAL pull)
            list(APPEND gitargs --progress)
        endif()
    endif()

    #REMOTE {
    #    NAME "orgin"
    #   STRATEGY "checkout"
    #}

    #SUBMODULES {
    #    ...
    #   RECURSE TRUE
    #}

    # assemble global options
    if(GIT_CONFIG)
        # FIXME
    endif()

    # rate limit
    set(ratelimit FALSE)
    if(${command} STREQUAL pull)
        file(TIMESTAMP "${GIT_DIRECTORY}/.git" __my_git_repo_ts "%s" UTC)
        string(TIMESTAMP __my_git_ts "%s" UTC)
        math(EXPR __my_git_ts "${__my_git_ts} - ${GIT_RATELIMIT}*60")
        if(${__my_git_repo_ts} GREATER_EQUAL ${__my_git_ts})
            set(ratelimit TRUE)
        endif()
    endif()

    ### execute...
    if(NOT ratelimit)
        message(STATUS "    ${GIT_EXECUTABLE} ${gitoptions} ${command} ${gitargs}")
        execute_process(
            COMMAND ${GIT_EXECUTABLE} ${gitoptions} ${command} ${gitargs}
            WORKING_DIRECTORY ${GIT_DIRECTORY}
            RESULT_VARIABLE result
            ${GIT_EXECUTE_PROCESS_ARGS}
        )

        if(NOT result EQUAL 0)
            message(FATAL_ERROR "Process exited with code: ${result}")
        endif()
    else()
        message(NOTICE "Already executed git ${command} within last ${GIT_RATELIMIT}min - skipping.")
    endif()
endmacro()

#[[.md:
### my_git_download()

Synchronize a down- or upload site.

FIXME

#]]
macro(my_git_download)
    message("${yellow}${bold}Downloading ${GIT_REPOSITORY}\n     in ${GIT_DIRECTORY} ...${reset}")

    set(command pull)
    if(NOT EXISTS ${GIT_DIRECTORY})
        file(MAKE_DIRECTORY ${GIT_DIRECTORY})
    endif()

    if(NOT EXISTS ${GIT_DIRECTORY}/.git)
        set(command checkout)
    endif()

    __my_git_command(${command} ${ARGN})
endmacro()

macro(my_git_upload)
endmacro()
