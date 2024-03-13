# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/DEB

**See also**:
- [CPack DEB Generator](https://cmake.org/cmake/help/latest/cpack_gen/deb.html)
#]=======================================================================]
include_guard(GLOBAL)

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
    # common options
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

            MAINTAINER:
            RELEASE:
            SECTION:

            DISTRIBUTION:=Debian
            DERIVATIVE:
            CODENAME:=${MY_DISTRIBUTION_CODENAME}
            VERSION:
            ARCHITECTURE:=${MY_ARCHITECTURE}

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
            PRIORITY:
            SHLIBDEPS:

            COMPONENTS:{
            }
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
        my_report(My/Packaging %{BR} "[x] DEB COMMON")
        return()
    endif()

    # check distribution
    set(DEB_TARGET_QUARTET debian)
    if(NOT "${MY_DEB_DISTRIBUTION}" STREQUAL "${MY_DISTRIBUTION_ID}")
        set(DERIVATIVE_MATCHED Off)
        if(MY_DEB_DERIVATIVE)
            foreach(ID ${MY_DISTRIBUTION_LIKE})
                if("${ID}" STREQUAL "${MY_DEB_DISTRIBUTION}")
                    set(DERIVATIVE_MATCHED On)
                    break()
                endif()
            endforeach()
        endif()

        if(NOT DERIVATIVE_MATCHED)
            my_report(My/Packaging %{BR} "[ ] DEB ${MY_DEB_DISTRIBUTION}")
            return()
        endif()
    endif()
    set(DEB_TARGET_QUARTET ${DEB_TARGET_QUARTET}-${MY_DEB_DISTRIBUTION})

    if(MY_DEB_VERSION)
        if(NOT "${MY_DEB_VERSION}" STREQUAL "${MY_DISTRIBUTION_VERSION}")
            my_report(My/Packaging %{BR} "[ ] DEB ${MY_DEB_DISTRIBUTION} (VERSION ${MY_DEB_VERSION})")
            return()
        endif()
        set(DEB_TARGET_QUARTET ${DEB_TARGET_QUARTET}-${MY_DEB_VERSION})
    endif()

    if(MY_DEB_CODENAME)
        if(NOT "${MY_DEB_CODENAME}" STREQUAL "${MY_DISTRIBUTION_CODENAME}")
            my_report(My/Packaging %{BR} "[ ] DEB ${MY_DEB_DISTRIBUTION} (CODENAME ${MY_DEB_CODENAME})")
            return()
        endif()
        set(DEB_TARGET_QUARTET ${DEB_TARGET_QUARTET}-${MY_DEB_CODENAME})
    endif()

    if(NOT "${MY_DEB_ARCHITECTURE}" STREQUAL "all")
        if(NOT "${MY_DEB_ARCHITECTURE}" STREQUAL "${MY_ARCHITECTURE}")
            my_report(My/Packaging %{BR} "[ ] DEB ${MY_DEB_DISTRIBUTION} (ARCHITECTURE ${MY_DEB_ARCHITECTURE})")
            return()
        endif()
    endif()
    set(DEB_TARGET_QUARTET ${DEB_TARGET_QUARTET}-${MY_DEB_ARCHITECTURE})

    # default target name
    string(TOLOWER "${DEB_TARGET_QUARTET}" DEB_TARGET_QUARTET)
    if(NOT MY_DEB_TARGET)
        string(TOLOWER "${DEB_TARGET_QUARTET}" MY_DEB_TARGET)
    endif()

    # section (https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections)
    if(NOT MY_DEB_SECTION)
        set(MY_DEB_SECTION ${MY_DEB_COMMON_SECTION})
        if(NOT MY_DEB_SECTION)
            message(AUTHOR_WARNING "SECTION is required (see https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections)")
            set(MY_DEB_SECTION ${MY_PACKAGE_COMMON_CATEGORY})
        endif()
    endif()

    # copyright
    if(MY_PACKAGE_COMMON_LICENSE_FILE)
        if(NOT CMAKE_INSTALL_DOCDIR)
            message(AUTHOR_WARNING "Debian: CMAKE_INSTALL_DOCDIR is undefined.")
        else()
            install(FILES
                ${MY_PACKAGE_COMMON_LICENSE_FILE}
                DESTINATION ${CMAKE_INSTALL_DOCDIR}
                COMPONENT documentation
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
        set(MY_DEB_CONFIG CPackDebian.cmake)
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
        set(CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS ON)
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

    my_target(package-binary
        COMMENT "Create deb package for ${MY_DISTRIBUTION_ID} ${MY_DISTRIBUTION_CODENAME} (${CONFIG})"
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

    # note: source packages are not supported

    # create CPack config
    my_generator_emit()

    my_report(My/Packaging %{BR} "[x] DEB ${MY_DEB_DISTRIBUTION}")
    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

# === Variables specific to CPack Debian (DEB) generator
# 
# [ ] CPACK_DEB_COMPONENT_INSTALL
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_NAME
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_NAME
# 
# 
# [ ] CPACK_DEBIAN_FILE_NAME
# [ ] CPACK_DEBIAN_<COMPONENT>_FILE_NAME
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_EPOCH
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_VERSION
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_RELEASE
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_ARCHITECTURE
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_ARCHITECTURE
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS
# [ ] CPACK_DEBIAN_PACKAGE_DEPENDS
# 
# 
# [ ] CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_MAINTAINER
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_DESCRIPTION
# [ ] CPACK_DEBIAN_PACKAGE_DESCRIPTION
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SECTION
# [ ] CPACK_DEBIAN_PACKAGE_SECTION
# 
# 
# [ ] CPACK_DEBIAN_ARCHIVE_TYPE
# 
# 
# [ ] CPACK_DEBIAN_COMPRESSION_TYPE
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_PRIORITY
# [ ] CPACK_DEBIAN_PACKAGE_PRIORITY
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_HOMEPAGE
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SHLIBDEPS
# [ ] CPACK_DEBIAN_PACKAGE_SHLIBDEPS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_SHLIBDEPS_PRIVATE_DIRS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_DEBUG
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_PREDEPENDS
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_PREDEPENDS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_ENHANCES
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_ENHANCES
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_BREAKS
# [ ] CPACK_DEBIAN_PACKAGE_BREAKS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_CONFLICTS
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONFLICTS
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_PROVIDES
# [ ] CPACK_DEBIAN_PACKAGE_PROVIDES
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_REPLACES
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_REPLACES
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_RECOMMENDS
# [ ] CPACK_DEBIAN_PACKAGE_RECOMMENDS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_SUGGESTS
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SUGGESTS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_EXTRA
# 
# 
# [ ] CPACK_DEBIAN_PACKAGE_CONTROL_STRICT_PERMISSION
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_STRICT_PERMISSION
# 
# 
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SOURCE
# [ ] CPACK_DEBIAN_PACKAGE_SOURCE
# 
# 
# === Packaging of debug information
# 
# [ ] CPACK_DEBIAN_DEBUGINFO_PACKAGE
# [ ] CPACK_DEBIAN_<component>_DEBUGINFO_PACKAGE
# 
# 
