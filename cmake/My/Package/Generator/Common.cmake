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

    INSTALL:-{
        # FIXME
    }

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
