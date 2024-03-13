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
#        The name of the package (or application). If not specified, it defaults
#        to the project name.
#        
# [ ] CPACK_PACKAGE_VENDOR
#        
#        The name of the package vendor. (e.g., "Kitware"). The default is 
#        "Humanity".
#        
# [ ] CPACK_PACKAGE_DIRECTORY
#        
#        The directory in which CPack is doing its packaging. If it is not set 
#        then this will default (internally) to the build dir. This variable may
#        be defined in a CPack config file or from the `cpack` command line 
#        option `-B`. If set, the command line option overrides the value found 
#        in the config file.
#        
# [ ] CPACK_PACKAGE_VERSION_MAJOR
#        
#        Package major version. This variable will always be set, but its 
#        default value depends on whether or not version details were given to 
#        the `project()` command in the top level CMakeLists.txt file. If 
#        version details were given, the default value will be 
#        `CMAKE_PROJECT_VERSION_MAJOR`. If no version details were given, a 
#        default version of 0.1.1 will be assumed, leading to 
#        `CPACK_PACKAGE_VERSION_MAJOR` having a default value of 0.
#        
# [ ] CPACK_PACKAGE_VERSION_MINOR
#        
#        Package minor version. The default value is determined based on whether
#        or not version details were given to the `project()` command in the top
#        level CMakeLists.txt file. If version details were given, the default 
#        value will be `CMAKE_PROJECT_VERSION_MINOR`, but if no minor version 
#        component was specified then `CPACK_PACKAGE_VERSION_MINOR` will be left
#        unset. If no project version was given at all, a default version of 
#        0.1.1 will be assumed, leading to `CPACK_PACKAGE_VERSION_MINOR` having 
#        a default value of 1.
#        
# [ ] CPACK_PACKAGE_VERSION_PATCH
#        
#        Package patch version. The default value is determined based on whether
#        or not version details were given to the `project()` command in the top
#        level CMakeLists.txt file. If version details were given, the default 
#        value will be `CMAKE_PROJECT_VERSION_PATCH`, but if no patch version 
#        component was specified then `CPACK_PACKAGE_VERSION_PATCH` will be left
#        unset. If no project version was given at all, a default version of 
#        0.1.1 will be assumed, leading to `CPACK_PACKAGE_VERSION_PATCH` having 
#        a default value of 1.
#        
# [ ] CPACK_PACKAGE_DESCRIPTION
#        
#        A description of the project, used in places such as the introduction 
#        screen of CPack-generated Windows installers. If not set, the value of 
#        this variable is populated from the file named by 
#        `CPACK_PACKAGE_DESCRIPTION_FILE`.
#        
# [ ] CPACK_PACKAGE_DESCRIPTION_FILE
#        
#        A text file used to describe the project when 
#        `CPACK_PACKAGE_DESCRIPTION` is not explicitly set. The default value 
#        for `CPACK_PACKAGE_DESCRIPTION_FILE` points to a built-in template file
#        `Templates/CPack.GenericDescription.txt`.
#        
# [ ] CPACK_PACKAGE_DESCRIPTION_SUMMARY
#        
#        Short description of the project (only a few words). If the 
#        `CMAKE_PROJECT_DESCRIPTION` variable is set, it is used as the default 
#        value, otherwise the default will be a string generated by CMake based 
#        on `CMAKE_PROJECT_NAME`.
#        
# [ ] CPACK_PACKAGE_HOMEPAGE_URL
#        
#        Project homepage URL. The default value is taken from the 
#        `CMAKE_PROJECT_HOMEPAGE_URL` variable, which is set by the top level 
#        `project()` command, or else the default will be empty if no URL was 
#        provided to `project()`.
#        
# [ ] CPACK_PACKAGE_FILE_NAME
#        
#        The name of the package file to generate, not including the extension. 
#        For example, `cmake-2.6.1-Linux-i686`. The default value is:
#        ```
#        ${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-${CPACK_SYSTEM_NAME}
#        ```
#        
# [ ] CPACK_PACKAGE_INSTALL_DIRECTORY
#        
#        Installation directory on the target system. This may be used by some 
#        CPack generators like NSIS to create an installation directory e.g., 
#        "CMake 2.5" below the installation prefix. All installed elements will 
#        be put inside this directory.
#        
# [ ] CPACK_PACKAGE_ICON
#        
#        A branding image that will be displayed inside the installer (used by 
#        GUI installers).
#        
# [ ] CPACK_PACKAGE_CHECKSUM
#        
#        An algorithm that will be used to generate an additional file with the 
#        checksum of the package. The output file name will be:
#        ```
#        ${CPACK_PACKAGE_FILE_NAME}.${CPACK_PACKAGE_CHECKSUM}
#        ```
#        
#        Supported algorithms are those listed by the 
#        `string(<HASH>) <Supported Hash Algorithms>` command.
#        
# [ ] CPACK_PROJECT_CONFIG_FILE
#        
#        CPack-time project CPack configuration file. This file is included at 
#        cpack time, once per generator after CPack has set `CPACK_GENERATOR` to
#        the actual generator being used. It allows per-generator setting of 
#        `CPACK_*` variables at cpack time.
#        
# [ ] CPACK_RESOURCE_FILE_LICENSE
#        
#        License to be embedded in the installer. It will typically be displayed
#        to the user by the produced installer (often with an explicit "Accept" 
#        button, for graphical installers) prior to installation. This license 
#        file is NOT added to the installed files but is used by some CPack 
#        generators like NSIS. If you want to use UTF-8 characters, the file 
#        needs to be encoded in UTF-8 BOM. If you want to install a license file
#        (may be the same as this one) along with your project, you must add an 
#        appropriate CMake `install()` command in your `CMakeLists.txt`.
#        
# [ ] CPACK_RESOURCE_FILE_README
#        
#        ReadMe file to be embedded in the installer. It typically describes in 
#        some detail the purpose of the project during the installation. Not all
#        CPack generators use this file.
#        
# [ ] CPACK_RESOURCE_FILE_WELCOME
#        
#        Welcome file to be embedded in the installer. It welcomes users to this
#        installer. Typically used in the graphical installers on Windows and 
#        Mac OS X.
#        
# [ ] CPACK_MONOLITHIC_INSTALL
#        
#        Disables the component-based installation mechanism. When set, the 
#        component specification is ignored and all installed items are put in a
#        single "MONOLITHIC" package. Some CPack generators do monolithic 
#        packaging by default and may be asked to do component packaging by 
#        setting `CPACK_<GENNAME>_COMPONENT_INSTALL` to `TRUE`.
#        
# [ ] CPACK_GENERATOR
#        
#        List of CPack generators to use. If not specified, CPack will create a 
#        set of options following the naming pattern `CPACK_BINARY_<GENNAME>` 
#        (e.g. `CPACK_BINARY_NSIS`) allowing the user to enable/disable 
#        individual generators. If the `-G <cpack -G>` option is given on the 
#        `cpack` command line, it will override this variable and any 
#        `CPACK_BINARY_<GENNAME>` options.
#        
# [ ] CPACK_OUTPUT_CONFIG_FILE
#        
#        The name of the CPack binary configuration file. This file is the CPack
#        configuration generated by the CPack module for binary installers. 
#        Defaults to `CPackConfig.cmake`.
#        
# [ ] CPACK_PACKAGE_EXECUTABLES
#        
#        Lists each of the executables and associated text label to be used to 
#        create Start Menu shortcuts. For example, setting this to the list 
#        `ccmake;CMake` will create a shortcut named "CMake" that will execute 
#        the installed executable `ccmake`. Not all CPack generators use it (at 
#        least NSIS, Inno Setup and WIX do).
#        
# [ ] CPACK_STRIP_FILES
#        
#        List of files to be stripped. Starting with CMake 2.6.0, 
#        `CPACK_STRIP_FILES` will be a boolean variable which enables stripping 
#        of all files (a list of files evaluates to `TRUE` in CMake, so this 
#        change is compatible).
#        
# [ ] CPACK_VERBATIM_VARIABLES
#        
#        If set to `TRUE`, values of variables prefixed with `CPACK_` will be 
#        escaped before being written to the configuration files, so that the 
#        cpack program receives them exactly as they were specified. If not, 
#        characters like quotes and backslashes can cause parsing errors or 
#        alter the value received by the cpack program. Defaults to `FALSE` for 
#        backwards compatibility.
#        
# [ ] CPACK_THREADS
#        
#        Number of threads to use when performing parallelized operations, such 
#        as compressing the installer package.
#        
#        Some compression methods used by CPack generators such as Debian or 
#        Archive may take advantage of multiple CPU cores to speed up 
#        compression. `CPACK_THREADS` can be set to specify how many threads 
#        will be used for compression.
#        
#        A positive integer can be used to specify an exact desired thread 
#        count.
#        
#        When given a negative integer CPack will use the absolute value as the 
#        upper limit but may choose a lower value based on the available 
#        hardware concurrency.
#        
#        Given 0 CPack will try to use all available CPU cores.
#        
#        By default `CPACK_THREADS` is set to `1`.
#        
#        The following compression methods may take advantage of multiple cores:
#        
#        **`xz`**: Supported if CMake is built with a `liblzma` that supports 
#        parallel compression.
#        **`zstd`**: Supported if CMake is built with libarchive 3.6 or higher. 
#        Official CMake binaries available on `cmake.org` support it.
#        
#        Other compression methods ignore this value and use only one thread.
#        
# === Variables for Source Package Generators
# 
# [ ] CPACK_SOURCE_PACKAGE_FILE_NAME
#        
#        The name of the source package. For example `cmake-2.6.1`.
#        
# [ ] CPACK_SOURCE_STRIP_FILES
#        
#        List of files in the source tree that will be stripped. Starting with 
#        CMake 2.6.0, `CPACK_SOURCE_STRIP_FILES` will be a boolean variable 
#        which enables stripping of all files (a list of files evaluates to 
#        `TRUE` in CMake, so this change is compatible).
#        
# [ ] CPACK_SOURCE_GENERATOR
#        
#        List of generators used for the source packages. As with 
#        `CPACK_GENERATOR`, if this is not specified then CPack will create a 
#        set of options (e.g. `CPACK_SOURCE_ZIP`) allowing users to select which
#        packages will be generated.
#        
# [ ] CPACK_SOURCE_OUTPUT_CONFIG_FILE
#        
#        The name of the CPack source configuration file. This file is the CPack
#        configuration generated by the CPack module for source installers. 
#        Defaults to `CPackSourceConfig.cmake`.
#        
# [ ] CPACK_SOURCE_IGNORE_FILES
#        
#        Pattern of files in the source tree that won't be packaged when 
#        building a source package. This is a list of regular expression 
#        patterns (that must be properly escaped), e.g., 
#        `/CVS/;/\\.svn/;\\.swp$;\\.#;/#;.*~;cscope.*`
#        
# === Variables for Advanced Use
# 
# [ ] CPACK_CMAKE_GENERATOR
#        
#        What CMake generator should be used if the project is a CMake project. 
#        Defaults to the value of `CMAKE_GENERATOR`. Few users will want to 
#        change this setting.
#        
# [ ] CPACK_INSTALL_CMAKE_PROJECTS
#        
#        List of four values that specify what project to install. The four 
#        values are: Build directory, Project Name, Project Component, 
#        Directory. If omitted, CPack will build an installer that installs 
#        everything.
#        
# [ ] CPACK_SYSTEM_NAME
#        
#        System name, defaults to the value of `CMAKE_SYSTEM_NAME`, except on 
#        Windows where it will be `win32` or `win64`.
#        
# [ ] CPACK_PACKAGE_VERSION
#        
#        Package full version, used internally. By default, this is built from 
#        `CPACK_PACKAGE_VERSION_MAJOR`, `CPACK_PACKAGE_VERSION_MINOR`, and 
#        `CPACK_PACKAGE_VERSION_PATCH`.
#        
# [ ] CPACK_TOPLEVEL_TAG
#        
#        Directory for the installed files.
#        
# [ ] CPACK_INSTALL_COMMANDS
#        
#        Extra commands to install components. The environment variable 
#        `CMAKE_INSTALL_PREFIX` is set to the temporary install directory during
#        execution.
#        
# [ ] CPACK_INSTALL_SCRIPTS
#        
#        Extra CMake scripts executed by CPack during its local staging 
#        installation. They are executed before installing the files to be 
#        packaged. The scripts are not called by a standalone install (e.g.: 
#        `make install`). For every script, the following variables will be set:
#        `CMAKE_CURRENT_SOURCE_DIR`, `CMAKE_CURRENT_BINARY_DIR` and 
#        `CMAKE_INSTALL_PREFIX` (which is set to the staging install directory).
#        The singular form `CMAKE_INSTALL_SCRIPT` is supported as an alternative
#        variable for historical reasons, but its value is ignored if 
#        `CMAKE_INSTALL_SCRIPTS` is set and a warning will be issued.
#        
#        See also `CPACK_PRE_BUILD_SCRIPTS` and `CPACK_POST_BUILD_SCRIPTS` which
#        can be used to specify scripts to be executed later in the packaging 
#        process.
#        
# [ ] CPACK_PRE_BUILD_SCRIPTS
#        
#        List of CMake scripts to execute after CPack has installed the files to
#        be packaged into a staging directory and before producing the 
#        package(s) from those files. See also `CPACK_INSTALL_SCRIPTS` and 
#        `CPACK_POST_BUILD_SCRIPTS`.
#        
# [ ] CPACK_POST_BUILD_SCRIPTS
#        
#        List of CMake scripts to execute after CPack has produced the resultant
#        packages and before copying them back to the build directory. See also 
#        `CPACK_INSTALL_SCRIPTS`, `CPACK_PRE_BUILD_SCRIPTS` and 
#        `CPACK_PACKAGE_FILES`.
#        
# [ ] CPACK_PACKAGE_FILES
#        
#        List of package files created in the staging directory, with each file 
#        provided as a full absolute path. This variable is populated by CPack 
#        just before invoking the post-build scripts listed in 
#        `CPACK_POST_BUILD_SCRIPTS`. It is the preferred way for the post-build 
#        scripts to know the set of package files to operate on. Projects should
#        not try to set this variable themselves.
#        
# [ ] CPACK_INSTALLED_DIRECTORIES
#        
#        Extra directories to install.
#        
# [ ] CPACK_PACKAGE_INSTALL_REGISTRY_KEY
#        
#        Registry key used when installing this project. This is only used by 
#        installers for Windows. The default value is based on the installation 
#        directory.
#        
# [ ] CPACK_CREATE_DESKTOP_LINKS
#        
#        List of desktop links to create. Each desktop link requires a 
#        corresponding start menu shortcut as created by 
#        `CPACK_PACKAGE_EXECUTABLES`.
#        
# [ ] CPACK_BINARY_<GENNAME>
#        
#        CPack generated options for binary generators. The `CPack.cmake` module
#        generates (when `CPACK_GENERATOR` is not set) a set of CMake options 
#        (see CMake `option()` command) which may then be used to select the 
#        CPack generator(s) to be used when building the `package` target or 
#        when running `cpack` without the `-G <cpack -G>` option.
#        
# [ ] CPACK_READELF_EXECUTABLE
#        
#        Specify the `readelf` executable path used by CPack. The default value 
#        will be `CMAKE_READELF` when set. Otherwise, the default value will be 
#        empty and CPack will use `find_program()` to determine the `readelf` 
#        path when needed.
#        
# [ ] CPACK_OBJCOPY_EXECUTABLE
#        
#        Specify the `objcopy` executable path used by CPack. The default value 
#        will be `CMAKE_OBJCOPY` when set. Otherwise, the default value will be 
#        empty and CPack will use `find_program()` to determine the `objcopy` 
#        path when needed.
#        
# [ ] CPACK_OBJDUMP_EXECUTABLE
#        
#        Specify the `objdump` executable path used by CPack. The default value 
#        will be `CMAKE_OBJDUMP` when set. Otherwise, the default value will be 
#        empty and CPack will use `find_program()` to determine the `objdump` 
#        path when needed.
#        
