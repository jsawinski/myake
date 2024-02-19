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
    NAME:="${PROJECT_NAME}"
    VENDOR:="${PROJECT_VENDOR}"
    VERSION:="${PROJECT_VERSION}"

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
            DISPLAY_NAME:
            DESCRIPTION:
            EXPANDED:-
            BOLD_TITLE:-

            @GROUP->PARENT_GROUP
            @COMPONENT->GROUP
        }
        COMPONENT:{
            GROUP:
            DISPLAY_NAME:
            DESCRIPTION:
            HIDDEN:- REQUIRED:- DISABLED:-
            DEPENDS:*
            INSTALL_TYPES:*
            DOWNLOADED:-
            ARCHIVE_FILE:
            PLIST:
        }
    }
})

