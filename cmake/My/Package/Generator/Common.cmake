#[================================[.md:
## Internals
#]================================]

#[[.md:
### MY_PKG_COMMON

Common package options prefix.

See [CPack documentation](https://cmake.org/cmake/help/latest/module/CPack.html)
for further information.

    my_package(<generator>|COMMON
        [NAME <project-name>]
        [VENDOR <project-vendor>]
        [VERSION <project-version>]
        [DESCRIPTION {
            [SUMMARY <summary>]
            [FILE <description-file>]
            [FULL <full-description>]
            [README <readme-file>]
            [WELCOME <welcome-file>]
        }]

        [INSTALL {
            [DIRECTORY <installation-directory>]
            [FILE <filename-template>]
            [PREFIX <installation-prefix>
        }]

        [AUTHORS <authors>]
        [CONTACT <contact-email>]

        LICENSE <license-tag> [{
            [FILE <license-file>]
        }]

        [ARCHITECTURE <target-architecture>]
        [CATEGORY <application-category>]

        [URL {
            [HOMEPAGE <homepage-url>]
            [ABOUT <about-url>]
            [HELP <help-url>]
            [ICON <icon-url>]
            [LICENSE <license-url>]
        }]
        [ICON {
            [FILE <icon-file>]
            [INSTALL <install-icon-file>]
            [UNINSTALL <uninstall-icon-file>]
        }]

        [GENERATOR <generator-list>...]
        [CHECKSUM <checksum-type>]
        [CONFIG <output-config-suffix>]
        [SUFFIX <filename-suffix>]

        [SOURCE {
            [GENERATOR <generator-list>...]
            [STRIP_FILES <FIXME>...]
            [IGNORE_FILES [DEFAULTS] <filename-ignore-patterns>...]
            [SUFFIX <filename-suffix>]
            [FILE_NAME <filename-template>]
        }]

        [COMPONENTS {
            <component-settings>...
        }]
    )

FIXME

#]]
my_structure_parse(TEMPLATE MY_PACK {
    NAME:="${PROJECT_NAME}"
    VENDOR:="${PROJECT_VENDOR}"
    VERSION:-{
        MAJOR:"${PROJECT_VERSION_MAJOR}"
        MINOR:"${PROJECT_VERSION_MINOR}"
        PATCH:"${PROJECT_VERSION_PATCH}"
    }

    ARCHITECTURE:="${MY_ARCHITECTURE}"
    CATEGORY:

    AUTHORS:*
    CONTACT:

    DESCRIPTION:-{  
        SUMMARY:
        FILE:
        FULL:
        README:
        WELCOME:
    }
    LICENSE:-{
        FILE:
    }
    URL:-{
        HOMEPAGE:
        ABOUT:
        HELP:
        ICON:
        LICENSE:
    }
    ICON:-{
        FILE:
        INSTALL:
        UNINSTALL:
    }

    GENERATOR:*="ZIP"
    CHECKSUM:
    CONFIG:
    SUFFIX:
    FILE_NAME:="$<NAME>-$<VERSION>$<[-]SUFFIX>"

    SOURCE:-{
        GENERATOR:*="ZIP"
        STRIP_FILES:*
        IGNORE_FILES:*
        CONFIG:
        SUFFIX:="source"
        FILE_NAME:
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

        INSTALL:-{
            # FIXME
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

# === Variables common to all CPack Generators
# 
# [ ] CPACK_PACKAGE_NAME
# 
# 
# [ ] CPACK_PACKAGE_VENDOR
# 
# 
# [ ] CPACK_PACKAGE_DIRECTORY
# 
# 
# [ ] CPACK_PACKAGE_VERSION_MAJOR
# 
# 
# [ ] CPACK_PACKAGE_VERSION_MINOR
# 
# 
# [ ] CPACK_PACKAGE_VERSION_PATCH
# 
# 
# [ ] CPACK_PACKAGE_DESCRIPTION
# 
# 
# [ ] CPACK_PACKAGE_DESCRIPTION_FILE
# 
# 
# [ ] CPACK_PACKAGE_DESCRIPTION_SUMMARY
# 
# 
# [ ] CPACK_PACKAGE_HOMEPAGE_URL
# 
# 
# [ ] CPACK_PACKAGE_FILE_NAME
# 
# 
# [ ] CPACK_PACKAGE_INSTALL_DIRECTORY
# 
# 
# [ ] CPACK_PACKAGE_ICON
# 
# 
# [ ] CPACK_PACKAGE_CHECKSUM
# 
# 
# [ ] CPACK_PROJECT_CONFIG_FILE
# 
# 
# [ ] CPACK_RESOURCE_FILE_LICENSE
# 
# 
# [ ] CPACK_RESOURCE_FILE_README
# 
# 
# [ ] CPACK_RESOURCE_FILE_WELCOME
# 
# 
# [ ] CPACK_MONOLITHIC_INSTALL
# 
# 
# [ ] CPACK_GENERATOR
# 
# 
# [ ] CPACK_OUTPUT_CONFIG_FILE
# 
# 
# [ ] CPACK_PACKAGE_EXECUTABLES
# 
# 
# [ ] CPACK_STRIP_FILES
# 
# 
# [ ] CPACK_VERBATIM_VARIABLES
# 
# 
# [ ] CPACK_THREADS
# 
# 
# === Variables for Source Package Generators
# 
# [ ] CPACK_SOURCE_PACKAGE_FILE_NAME
# 
# 
# [ ] CPACK_SOURCE_STRIP_FILES
# 
# 
# [ ] CPACK_SOURCE_GENERATOR
# 
# 
# [ ] CPACK_SOURCE_OUTPUT_CONFIG_FILE
# 
# 
# [ ] CPACK_SOURCE_IGNORE_FILES
# 
# 
# === Variables for Advanced Use
# 
# [ ] CPACK_CMAKE_GENERATOR
# 
# 
# [ ] CPACK_INSTALL_CMAKE_PROJECTS
# 
# 
# [ ] CPACK_SYSTEM_NAME
# 
# 
# [ ] CPACK_PACKAGE_VERSION
# 
# 
# [ ] CPACK_TOPLEVEL_TAG
# 
# 
# [ ] CPACK_INSTALL_COMMANDS
# 
# 
# [ ] CPACK_INSTALL_SCRIPTS
# 
# 
# [ ] CPACK_PRE_BUILD_SCRIPTS
# 
# 
# [ ] CPACK_POST_BUILD_SCRIPTS
# 
# 
# [ ] CPACK_PACKAGE_FILES
# 
# 
# [ ] CPACK_INSTALLED_DIRECTORIES
# 
# 
# [ ] CPACK_PACKAGE_INSTALL_REGISTRY_KEY
# 
# 
# [ ] CPACK_CREATE_DESKTOP_LINKS
# 
# 
# [ ] CPACK_BINARY_<GENNAME>
# 
# 
# [ ] CPACK_READELF_EXECUTABLE
# 
# 
# [ ] CPACK_OBJCOPY_EXECUTABLE
# 
# 
# [ ] CPACK_OBJDUMP_EXECUTABLE
# 
# 
