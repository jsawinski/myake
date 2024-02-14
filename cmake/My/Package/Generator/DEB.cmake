# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/DEB

**See also**:
- [CPack DEB Generator](https://cmake.org/cmake/help/latest/cpack_gen/deb.html)
#]=======================================================================]
include_guard(GLOBAL)

include(My/Platform/Distribution/Debian)

message(TRACE "Loaded My/Package/Generator/DEB...")

#[==[.md:
# my_generator_deb

FIXME
    my_package(DEB COMMON
        ...

#]==]
function(my_generator_deb)
    message(TRACE "my_generator_deb(${__MY_PACKAGE_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    ### parse options
    # COMMON?
    my_generator_iscommon(COMMON)

    if(COMMON)
        set(__my_generator_prefix MY_DEB_COMMON)
        if(MY_DEB_COMMON__INCLUDE_GUARD)
            return()
        else()
            set(MY_DEB_COMMON__INCLUDE_GUARD TRUE)
        endif()
    else()
        set(__my_generator_prefix MY_DEB)
    endif()

    # parse arguments
    my_options_parse(${__my_generator_prefix} RESET NODEFAULTS
        OPTIONS __MY_PACKAGE_COMMON__
        ${__MY_PACKAGE_ARGS}
    )
    set(__MY_PACKAGE_ARGS ${${__my_generator_prefix}_UNPARSED_ARGUMENTS})

    my_options_parse(${__my_generator_prefix} RESET
        OPTIONS __MY_PACKAGE_DEB__ {
            TARGET:

            DISTRIBUTION:=Debian
            MY_DISTRIBUTION_CODENAME:
            VERSION:
            ARCHITECTURE:=${MY_DISTRIBUTION_NAME}

            MAINTAINER:
            RELEASE:

            DEBIAN:{
                # FIXME
            }

            PREDEPENDS:*
            DEPENDS:*
            ENHANCES:*
            BREAKS:*
            CONFLICTS:*
            PROVIDES:*
            REPLACES:*
            RECOMMENDS:*
            SUGGESTS:*
            SOURCE:{
                PREFIX:=/usr/src
            }
            PRIORITY:
            SHLIBDEPS:
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
        return()
    endif()

    # check distribution/version/MY_DISTRIBUTION_CODENAME
    set(DEBCONFIG Deb)
    set(DEBTARGET deb)
    if(NOT "${MY_DEB_DISTRIBUTION}" STREQUAL "${MY_DISTRIBUTION_NAME}")
        message(DEBUG "Skipping (distribution mismatch)...")
        return()
    else()
        set(DEBCONFIG ${DEBCONFIG}${MY_DISTRIBUTION_NAME})
        set(DEBTARGET ${DEBTARGET}-${MY_DISTRIBUTION_NAME})
    endif()
    if(MY_DEB_VERSION)
        if(NOT "${MY_DEB_VERSION}" STREQUAL "${MY_DISTRIBUTION_VERSION}")
            message(DEBUG "Skipping (version mismatch)...")
            return()
        else()
            set(DEBCONFIG ${DEBCONFIG}${MY_DISTRIBUTION_VERSION})
            set(DEBTARGET ${DEBTARGET}-${MY_DISTRIBUTION_VERSION})
        endif()
    endif()
    if(MY_DEB_MY_DISTRIBUTION_CODENAME)
        if(NOT "${MY_DEB_MY_DISTRIBUTION_CODENAME}" STREQUAL "${MY_DISTRIBUTION_CODENAME}")
            message(DEBUG "Skipping (MY_DISTRIBUTION_CODENAME mismatch)...")
            return()
        else()
            set(DEBCONFIG ${DEBCONFIG}${MY_DISTRIBUTION_CODENAME})
            set(DEBTARGET ${DEBTARGET}-${MY_DISTRIBUTION_CODENAME})
        endif()
    endif()

    if(NOT "${MY_DEB_ARCHITECTURE}" STREQUAL "all")
        if(NOT "${MY_DEB_ARCHITECTURE}" STREQUAL "${MY_DISTRIBUTION_ARCHITECTURE}")
            message(DEBUG "Skipping (architecture mismatch)...")
            return()
        else()
            set(DEBCONFIG ${DEBCONFIG}${MY_DISTRIBUTION_ARCHITECTURE})
            set(DEBTARGET ${DEBTARGET}-${MY_DISTRIBUTION_ARCHITECTURE})
        endif()
    endif()

    # default target name
    string(TOLOWER "${DEBTARGET}" DEBTARGET)
    if(NOT MY_DEB_TARGET)
        string(TOLOWER "${DEBTARGET}" MY_DEB_TARGET)
    endif()

    # section (https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections)
    my_deb_section(MY_DEB_SECTION ${MY_PACKAGE_COMMON_CATEGORY})
    if(NOT MY_DEB_SECTION)
        message(AUTHOR_WARNING "Could not identify package section for category '${MY_PACKAGE_COMMON_CATEGORY}'.
The value SECTION should be set explicitly (see https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections)")
        set(MY_DEB_SECTION ${MY_PACKAGE_COMMON_CATEGORY})
    endif()

    # copyright
    if(MY_PACKAGE_COMMON_LICENSE_FILE)
        if(NOT CMAKE_INSTALL_DOCDIR)
            message(AUTHOR_WARNING "Debian: CMAKE_INSTALL_DOCDIR is undefined.")
        else()
            install(FILES
                ${MY_PACKAGE_COMMON_LICENSE_FILE}
                DESTINATION ${CMAKE_INSTALL_DOCDIR}
                RENAME copyright)
        endif()
    else()
        message(AUTHOR_WARNING "No license/copyright file was provided.")
    endif()

    # FIXME copyright, changelog.Debian, etc.

    ### generate
    # prepare
    set(MY_DEB_GENERATOR DEB)
    my_generator_reset()
    my_generator_config(
        VARIABLES MY_DEB MY_DEB_COMMON
        TEMPLATES NAME VERSION VENDOR SUFFIX
    )

    # setup config file name
    my_generator_config(GET CONFIG CONFIG)
    if(NOT CONFIG)
        set(MY_DEB_CONFIG CPack${DEBCONFIG}.cmake)
    endif()

    my_generator_config(GET CONFIG CONFIG)

    # check components
    my_generator_config(GET COMPONENTS COMPONENTS)
    my_generator_config(GET NOCOMPONENTS NOCOMPONENTS)

    if(NOCOMPONENTS)
        unset(COMPONENTS)
    endif()

    # handle components
    if(COMPONENTS)
        my_components("" ${COMPONENTS})
        set(CPACK_DEB_COMPONENT_INSTALL ON)
    endif()

    # populate CPACK_* variables
    my_generator_config(
        POPULATE CPACK
            OUTPUT_CONFIG_FILE=CONFIG
            GENERATOR
    )

    # filename
    my_generator_config(GET PACKAGE_NAME NAME)
    my_generator_config(GET PACKAGE_VERSION VERSION)
    set(MY_DEB_FILE_NAME_BASE "${PACKAGE_NAME}-${PACKAGE_VERSION}")
    string(TOLOWER "${MY_DEB_FILE_NAME_BASE}" MY_DEB_FILE_NAME_BASE)

    set(MY_DEB_FILE_NAME "${MY_DEB_FILE_NAME_BASE}")
    my_generator_config(
        POPULATE CPACK_PACKAGE
            FILE_NAME
            DESCRIPTION_SUMMARY
    )

    find_program(Lintian_COMMAND lintian)
    if(Lintian_COMMAND)
        set(Lintian_COMMAND_RUN COMMAND ${Lintian_COMMAND} ${${__my_generator_prefix}_FILE_NAME}.deb)
    else()
        set(Lintian_COMMAND_RUN)
    endif()

    my_target(package-${MY_DEB_TARGET}
        COMMENT "Create deb package for ${MY_DISTRIBUTION_NAME} ${MY_DISTRIBUTION_CODENAME} (${CONFIG})"
        # FIXME DEPENDS update-source-docs
        COMMAND ${CMAKE_CPACK_COMMAND} --config ${MY_DEB_CONFIG}
        ${Lintian_COMMAND_RUN}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    )
    
    # CPACK_DEBIAN_COMPRESSION_TYPE
    # CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS
    # CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS
    # CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY

    # CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
    # CPACK_DEBIAN_PACKAGE_CONTROL_STRICT_PERMISSION

    # CPACK_DEBIAN_DEBUGINFO_PACKAGE

    my_generator_config(
        POPULATE CPACK_DEBIAN_PACKAGE
            NAME
            EPOCH
            VERSION
            RELEASE
            ARCHITECTURE
            PREDEPENDS
            DEPENDS
            ENHANCES
            BREAKS
            CONFLICTS
            PROVIDES
            REPLACES
            RECOMMENDS
            SUGGESTS
            MAINTAINER
            DESCRIPTION=DESCRIPTION_FULL
            SECTION
            PRIORITY
            SHLIBDEPS
    )

    if(false)
        # populate CPACK_SOURCE_* variables - disabled, at the moment of writing

        # CPACK_DEBIAN_PACKAGE_SOURCE

        string(REGEX REPLACE "Config[.]cmake$" "SourceConfig.cmake" MY_DEB_SOURCE_CONFIG ${MY_DEB_CONFIG})
        my_target(package-${MY_DEB_TARGET}-source
            COMMENT "Create deb package for ${MY_DISTRIBUTION_NAME} (${MY_DEB_CONFIG})"
            DEPENDS update-source-docs
            COMMAND ${CMAKE_CPACK_COMMAND} --config ${MY_DEB_CONFIG}
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        )

        my_generator_config(
            VARIABLES MY_DEB_SOURCE MY_DEB_COMMON_SOURCE MY_DEB MY_DEB_COMMON MY_PACKAGE_COMMON_SOURCE
        )

        my_generator_config(
            POPULATE CPACK_SOURCE
                GENERATOR
                OUTPUT_CONFIG_FILE=CONFIG
                IGNORE_FILES
                STRIP_FILES
        )

        set(MY_DEB_FILE_NAME "${MY_DEB_FILE_NAME_BASE}-source")
        my_generator_config(
            POPULATE CPACK_SOURCE_PACKAGE
                FILE_NAME
        )
    endif()

    # create CPack config
    my_generator_emit()

    if(false)
        get_cmake_property(allvars VARIABLES)
        foreach(var ${allvars})
            if(var MATCHES "^CPACK")
                message("${var}=${${var}}")
            endif()
        endforeach()
    endif()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

