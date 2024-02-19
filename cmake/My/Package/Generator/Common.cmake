#[================================[.md:
## Internals
#]================================]

#[[.md:
### MY_PKG_COMMON

Common package options prefix.

See [CPack documentation](https://cmake.org/cmake/help/latest/module/CPack.html)
for further information.
#]]
my_structure_parse(TEMPLATE MY_PACK {
    NAME:="${PROJECT_NAME}"                 # CPACK_PACKAGE_NAME
    VENDOR:="${PROJECT_VENDOR}"             # CPACK_PACKAGE_VENDOR
    VERSION:-{
        MAJOR:"${PROJECT_VERSION_MAJOR}"    # CPACK_PACKAGE_VERSION_MAJOR
        MINOR:"${PROJECT_VERSION_MINOR}"    # CPACK_PACKAGE_VERSION_MINOR
        PATCH:"${PROJECT_VERSION_PATCH}"    # CPACK_PACKAGE_VERSION_PATCH
    }

    ARCHITECTURE:="${MY_ARCHITECTURE}"
    CATEGORY:

    AUTHORS:*
    CONTACT:

    DESCRIPTION:-{  
        SUMMARY:                            # CPACK_PACKAGE_DESCRIPTION_SUMMARY
        FILE:                               # CPACK_PACKAGE_DESCRIPTION_FILE
        FULL:                               # CPACK_PACKAGE_DESCRIPTION
        README:                             # CPACK_RESOURCE_FILE_README
        WELCOME:                            # CPACK_RESOURCE_FILE_WELCOME
    }
    LICENSE:-{
        FILE:                               # CPACK_RESOURCE_FILE_LICENSE
    }
    URL:-{
        HOMEPAGE:                           # CPACK_PACKAGE_HOMEPAGE_URL
        ABOUT:
        HELP:
        ICON:
        LICENSE:
    }
    ICON:-{
        FILE:                               # CPACK_PACKAGE_ICON
        INSTALL:
        UNINSTALL:
    }

    GENERATOR:*="ZIP"
    CHECKSUM:                               # CPACK_PACKAGE_CHECKSUM
    CONFIG:
    SUFFIX:
    FILE_NAME:="$<NAME>-$<VERSION>$<[-]SUFFIX>"
                                            # CPACK_PACKAGE_FILE_NAME

    INSTALL:-{
        # FIXME
    }

    SOURCE:-{
        GENERATOR:*="ZIP"                   # CPACK_SOURCE_GENERATOR
        STRIP_FILES:*                       # CPACK_SOURCE_STRIP_FILES
        IGNORE_FILES:*                      # CPACK_SOURCE_IGNORE_FILES
        CONFIG:
        SUFFIX:="source"
        FILE_NAME:                          # CPACK_SOURCE_PACKAGE_FILE_NAME
    }

    COMPONENTS:-{
        GROUP:{
            PARENT_GROUP:
            DISPLAY:
            DESCRIPTION:
            EXPANDED:-
            BOLD_TITLE:-

            @GROUP->PARENT_GROUP
            @COMPONENT->GROUP
        }
        COMPONENT:{
            GROUP:
            DISPLAY:
            DESCRIPTION:
            HIDDEN:- REQUIRED:- DISABLED:-
            DEPENDS:*
            INSTALL_TYPES:*
            DOWNLOADED:-
            ARCHIVE_FILE:
            PLIST:
        }
        # INSTALL_TYPE <typename> {
        #     [DISPLAY <display-name>]
        # }
        # DOWNLOADS <sitename> {
        #     [UPLOAD_DIRECTORY <dirname>]
        #     [ALL]
        #     [ADD_REMOVE|NO_ADD_REMOVE]
        # }
    }
})

# CPACK_PACKAGE_INSTALL_DIRECTORY
# CPACK_PACKAGE_EXECUTABLES
# CPACK_VERBATIM_VARIABLES
# CPACK_PACKAGE_INSTALL_REGISTRY_KEY
# CPACK_CREATE_DESKTOP_LINKS
# CPACK_PACKAGE_VERSION
# CPACK_TOPLEVEL_TAG
# CPACK_INSTALL_COMMANDS
# CPACK_INSTALL_SCRIPTS
# CPACK_PRE_BUILD_SCRIPTS
# CPACK_POST_BUILD_SCRIPTS
# CPACK_PACKAGE_FILES
# CPACK_INSTALLED_DIRECTORIES