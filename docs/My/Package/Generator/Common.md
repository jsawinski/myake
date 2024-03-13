## Internals
### MY_PKG_COMMON

Common package options prefix.

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

See [CPack documentation](https://cmake.org/cmake/help/latest/module/CPack.html)
or end of file for further information.

