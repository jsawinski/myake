# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/Archive

**See also**:
- [CPack Archive Generator](https://cmake.org/cmake/help/latest/cpack_gen/archive.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/Archive...")

#[==[.md:
# my_generator_archive

    my_package(Archive [COMMON]
        [TARGET <target-name>]
        [MAINTAINER <package-maintainer-email>]
        [<common package options>...]
    )

Create binary and source archive files.

#]==]
function(my_generator_archive)
    message(TRACE "my_generator_archive(${__MY_PACKAGE_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    ### parse options
    # COMMON?
    my_generator_iscommon(COMMON)

    if(COMMON)
        set(__my_generator_prefix MY_ARCHIVE_COMMON)
    else()
        set(__my_generator_prefix MY_ARCHIVE)
    endif()

    # parse arguments
    my_options_parse(${__my_generator_prefix} RESET NODEFAULTS
        OPTIONS __MY_PACKAGE_COMMON__
        ${__MY_PACKAGE_ARGS}
    )
    set(__MY_PACKAGE_ARGS ${${__my_generator_prefix}_UNPARSED_ARGUMENTS})

    my_options_parse(${__my_generator_prefix} RESET
        OPTIONS __MY_PACKAGE_ARCHIVE__ {
            TARGET:
            MAINTAINER:
            NOCOMPONENTS:-
        }
        ${__MY_PACKAGE_ARGS}
    )

    if(${__my_generator_prefix}_UNPARSED_ARGUMENTS)
        message(FATAL_ERROR "Unrecognized arguments passed to my_generator_archive: ${__MY_PACKAGE_ARGS}")
    endif()

    # handle COMMON
    if(COMMON)
        # promote to parent scope
        get_cmake_property(allvars VARIABLES)
        foreach(var ${allvars})
            if(var MATCHES "^${__my_generator_prefix}")
                set(${var} ${${var}} PARENT_SCOPE)
            endif()
        endforeach()

        # done
        my_report(My/Packaging %{BR} "[x] Archive COMMON")
        return()
    endif()

    # handle TARGET
    if(MY_ARCHIVE_TARGET)
        FIXME()
    endif()

    ### generate
    # prepare
    my_generator_reset()
    my_generator_config(
        VARIABLES MY_ARCHIVE MY_ARCHIVE_COMMON
        TEMPLATES NAME VERSION VENDOR SUFFIX
    )

    # check components
    my_generator_config(GET COMPONENTS COMPONENTS)
    my_generator_config(GET NOCOMPONENTS NOCOMPONENTS)

    if(NOCOMPONENTS)
        unset(COMPONENTS)
    endif()

    # handle components
    if(COMPONENTS)
        my_components("" ${COMPONENTS})
    endif()

    # populate CPACK_* variables
    my_generator_config(
        POPULATE CPACK
            OUTPUT_CONFIG_FILE=CONFIG
            GENERATOR
    )

    my_generator_config(
        POPULATE CPACK_RESOURCE
            FILE_LICENSE=LICENSE_FILE
            FILE_README=DESCRIPTION_README
            FILE_WELCOME=DESCRIPTION_WELCOME
    )

    my_generator_config(
        POPULATE CPACK_PACKAGE
            NAME
            VENDOR
            VERSION
            DESCRIPTION=DESCRIPTION_SUMMARY
            DESCRIPTION_FILE=DESCRIPTION_FILE
            HOMEPAGE_URL=URL_HOMEPAGE
            CHECKSUM
            FILE_NAME
    )

    # populate CPACK_SOURCE_* variables
    my_generator_config(
        VARIABLES MY_ARCHIVE_SOURCE MY_ARCHIVE_COMMON_SOURCE MY_ARCHIVE MY_ARCHIVE_COMMON MY_PACKAGE_COMMON_SOURCE
    )
    my_generator_config(
        POPULATE CPACK_SOURCE
            GENERATOR
            PACKAGE_FILE_NAME=FILE_NAME
            OUTPUT_CONFIG_FILE=CONFIG
            IGNORE_FILES
            STRIP_FILES
    )

    # targets and report
    if(MY_ARCHIVE_TARGET)
        FIXME()
    else()
        # my_report(My/Targets %{BR} %{50} "    package" "Create binary archive.")
        # my_report(My/Targets %{BR} %{50} "    package_source" "Create source archive.")
    endif()

    # create info file
    #FIXME

    # build target
    my_target(package-source
        COMMENT "Create source archive(s)..."
        DEPENDS update-source-docs
        COMMAND ${CMAKE_CPACK_COMMAND} --config CPackSourceConfig.cmake
        ${Lintian_COMMAND_RUN}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )

    # create CPack config
    my_generator_emit()
    my_report(My/Packaging %{BR} "[x] Archive configuration")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

