# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/IFW

**See also**:
- [CPack IFW Generator](https://cmake.org/cmake/help/latest/cpack_gen/ifw.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/IFW...")

# The following text was auto-generated from CPack's help files:
# 
# === Variables
# 
# [ ] CPACK_IFW_VERBOSE
#        
#        Set to `ON` to enable addition debug output. By default is `OFF`.
#        
# [ ] CPACK_IFW_PACKAGE_TITLE
#        
#        Name of the installer as displayed on the title bar. If not specified, 
#        it defaults to `CPACK_PACKAGE_DESCRIPTION_SUMMARY`.
#        
# [ ] CPACK_IFW_PACKAGE_PUBLISHER
#        
#        Publisher of the software (as shown in the Windows Control Panel). If 
#        not specified, it defaults to `CPACK_PACKAGE_VENDOR`.
#        
# [ ] CPACK_IFW_PRODUCT_URL
#        
#        URL to a page that contains product information on your web site.
#        
# [ ] CPACK_IFW_PACKAGE_ICON
#        
#        Filename for a custom installer icon. It must be an absolute path. This
#        should be a `.icns` file on macOS and a `.ico` file on Windows. It is 
#        ignored on other platforms.
#        
# [ ] CPACK_IFW_PACKAGE_WINDOW_ICON
#        
#        Filename for a custom window icon in PNG format for the Installer 
#        application. It must be an absolute path.
#        
# [ ] CPACK_IFW_PACKAGE_LOGO
#        
#        Filename for a logo image in PNG format, used as `QWizard::LogoPixmap`.
#        It must be an absolute path.
#        
# [ ] CPACK_IFW_PACKAGE_WATERMARK
#        
#        Filename for a watermark image in PNG format, used as 
#        `QWizard::WatermarkPixmap`. It must be an absolute path.
#        
# [ ] CPACK_IFW_PACKAGE_BANNER
#        
#        Filename for a banner image in PNG format, used as 
#        `QWizard::BannerPixmap`. It must be an absolute path.
#        
# [ ] CPACK_IFW_PACKAGE_BACKGROUND
#        
#        Filename for a background image in PNG format, used as 
#        `QWizard::BackgroundPixmap` (only used by `MacStyle`). It must be an 
#        absolute path.
#        
# [ ] CPACK_IFW_PACKAGE_WIZARD_STYLE
#        
#        Wizard style to be used (`Modern`, `Mac`, `Aero` or `Classic`).
#        
# [ ] CPACK_IFW_PACKAGE_WIZARD_DEFAULT_WIDTH
#        
#        Default width of the wizard in pixels. Setting a banner image will 
#        override this.
#        
# [ ] CPACK_IFW_PACKAGE_WIZARD_DEFAULT_HEIGHT
#        
#        Default height of the wizard in pixels. Setting a watermark image will 
#        override this.
#        
# [ ] CPACK_IFW_PACKAGE_WIZARD_SHOW_PAGE_LIST
#        
#        Set to `OFF` if the widget listing installer pages on the left side of 
#        the wizard should not be shown.
#        
#        It is `ON` by default, but will only have an effect if using QtIFW 4.0 
#        or later.
#        
# [ ] CPACK_IFW_PACKAGE_TITLE_COLOR
#        
#        Color of the titles and subtitles (takes an HTML color code, such as 
#        `#88FF33`).
#        
# [ ] CPACK_IFW_PACKAGE_STYLE_SHEET
#        
#        Filename for a stylesheet. It must be an absolute path.
#        
# [ ] CPACK_IFW_TARGET_DIRECTORY
#        
#        Default target directory for installation. If 
#        `CPACK_PACKAGE_INSTALL_DIRECTORY` is set, this defaults to 
#        `@ApplicationsDir@/${CPACK_PACKAGE_INSTALL_DIRECTORY}`. If that 
#        variable isn't set either, the default used is `@RootDir@/usr/local`. 
#        Predefined variables of the form `@...@` are expanded by the 
#        [QtIFW scripting engine](https://doc.qt.io/qtinstallerframework/scripting.html)]
#        .
#        
# [ ] CPACK_IFW_ADMIN_TARGET_DIRECTORY
#        
#        Default target directory for installation with administrator rights.
#        
#        You can use predefined variables.
#        
# [ ] CPACK_IFW_PACKAGE_REMOVE_TARGET_DIR
#        
#        Set to `OFF` if the target directory should not be deleted when 
#        uninstalling.
#        
#        Is `ON` by default
#        
# [ ] CPACK_IFW_PACKAGE_GROUP
#        
#        The group, which will be used to configure the root package.
#        
# [ ] CPACK_IFW_PACKAGE_NAME
#        
#        The root package name, which will be used if the configuration group is
#        not specified.
#        
# [ ] CPACK_IFW_PACKAGE_START_MENU_DIRECTORY
#        
#        Name of the default program group for the product in the Windows Start 
#        menu. If not specified, it defaults to `CPACK_IFW_PACKAGE_NAME`.
#        
# [ ] CPACK_IFW_PACKAGE_MAINTENANCE_TOOL_NAME
#        
#        Filename of the generated maintenance tool. The platform-specific 
#        executable file extension will be appended.
#        
#        If not specified, QtIFW provides a default name (`maintenancetool`).
#        
# [ ] CPACK_IFW_PACKAGE_MAINTENANCE_TOOL_INI_FILE
#        
#        Filename for the configuration of the generated maintenance tool.
#        
#        If not specified, QtIFW uses a default file name (`maintenancetool.ini`
#        ).
#        
# [ ] CPACK_IFW_PACKAGE_ALLOW_NON_ASCII_CHARACTERS
#        
#        Set to `ON` if the installation path can contain non-ASCII characters. 
#        Only supported for QtIFW 2.0 and later. Older QtIFW versions will 
#        always allow non-ASCII characters.
#        
# [ ] CPACK_IFW_PACKAGE_ALLOW_SPACE_IN_PATH
#        
#        Set to `OFF` if the installation path cannot contain space characters.
#        
#        Is `ON` for QtIFW less 2.0 tools.
#        
# [ ] CPACK_IFW_PACKAGE_DISABLE_COMMAND_LINE_INTERFACE
#        
#        Set to `ON` if command line interface features should be disabled. It 
#        is `OFF` by default and will only have an effect if using QtIFW 4.0 or 
#        later.
#        
# [ ] CPACK_IFW_PACKAGE_CONTROL_SCRIPT
#        
#        Filename for a custom installer control script.
#        
# [ ] CPACK_IFW_PACKAGE_RESOURCES
#        
#        List of additional resources (`.qrc` files) to include in the installer
#        binary. They should be specified as absolute paths and no two resource 
#        files can have the same file name.
#        
#        You can use the `cpack_ifw_add_package_resources` command to resolve 
#        relative paths.
#        
# [ ] CPACK_IFW_PACKAGE_FILE_EXTENSION
#        
#        The target binary extension.
#        
#        On Linux, the name of the target binary is automatically extended with 
#        `.run`, if you do not specify the extension.
#        
#        On Windows, the target is created as an application with the extension 
#        `.exe`, which is automatically added, if not supplied.
#        
#        On Mac, the target is created as an DMG disk image with the extension 
#        `.dmg`, which is automatically added, if not supplied.
#        
# [ ] CPACK_IFW_REPOSITORIES_ALL
#        
#        The list of remote repositories.
#        
#        The default value of this variable is computed by CPack and contains 
#        all repositories added with `cpack_ifw_add_repository` or updated with 
#        `cpack_ifw_update_repository`.
#        
# [ ] CPACK_IFW_DOWNLOAD_ALL
#        
#        If this is `ON`, all components will be downloaded. If not set, the 
#        behavior is determined by whether `cpack_configure_downloads` has been 
#        called with the `ALL` option or not.
#        
# [ ] CPACK_IFW_PACKAGE_PRODUCT_IMAGES
#        
#        A list of images to be shown on the `PerformInstallationPage`. These 
#        must be absolute paths and the images must be in PNG format.
#        
#        This feature is available for QtIFW 4.0.0 and later.
#        
# [ ] CPACK_IFW_PACKAGE_RUN_PROGRAM
#        
#        Command executed after the installer is finished, if the user accepts 
#        the action. Provide the full path to the application, as found when 
#        installed. This typically means the path should begin with the QtIFW 
#        predefined variable `@TargetDir@`.
#        
#        This feature is available for QtIFW 4.0.0 and later.
#        
# [ ] CPACK_IFW_PACKAGE_RUN_PROGRAM_ARGUMENTS
#        
#        List of arguments passed to the program specified in 
#        `CPACK_IFW_PACKAGE_RUN_PROGRAM`.
#        
#        This feature is available for QtIFW 4.0.0 and later.
#        
# [ ] CPACK_IFW_PACKAGE_RUN_PROGRAM_DESCRIPTION
#        
#        Text shown next to the check box for running the program after the 
#        installation. If `CPACK_IFW_PACKAGE_RUN_PROGRAM` is set but no 
#        description is provided, QtIFW will use a default message like 
#        `Run <Name> now`.
#        
#        This feature is available for QtIFW 4.0.0 and later.
#        
# [ ] CPACK_IFW_PACKAGE_SIGNING_IDENTITY
#        
#        Allows specifying a code signing identity to be used for signing the 
#        generated app bundle. Only available on macOS, ignored on other 
#        platforms.
#        
# [ ] CPACK_IFW_ARCHIVE_FORMAT
#        
#        Set the format used when packaging new component data archives. If you 
#        omit this option, the `7z` format will be used as a default. Supported 
#        formats:
#        - 7z
#        - zip
#        - tar.gz
#        - tar.bz2
#        - tar.xz
#        
#        **Note**: 
#            
#            If the Qt Installer Framework tools were built without libarchive 
#            support, only `7z` format is supported.
#        
#        This feature is available for QtIFW 4.2.0 and later.
#        
# [ ] CPACK_IFW_ARCHIVE_COMPRESSION
#        
#        Archive compression level. The allowable values are:
#        - 0 (_No compression_)
#        - 1 (_Fastest compression_)
#        - 3 (_Fast compression_)
#        - 5 (_Normal compression_)
#        - 7 (_Maximum compression_)
#        - 9 (_Ultra compression_)
#        
#        If this variable is not set, QtIFW will use a default compression 
#        level, which will typically be 5 (_Normal compression_).
#        
#        **Note**: 
#            
#            Some formats do not support all the possible values. For example 
#            `zip` compression only supports values from 1 to 7.
#        
#        This feature is available for QtIFW 4.2.0 and later.
#        
# [ ] CPACK_IFW_RESOLVE_DUPLICATE_NAMES
#        
#        Resolve duplicate names when installing components with groups.
#        
# [ ] CPACK_IFW_PACKAGES_DIRECTORIES
#        
#        Additional prepared packages directories that will be used to resolve 
#        dependent components.
#        
# [ ] CPACK_IFW_REPOSITORIES_DIRECTORIES
#        
#        Additional prepared repository directories that will be used to resolve
#        and repack dependent components.
#        
#        This feature is available for QtIFW 3.1 and later.
#        
# [ ] CPACK_IFW_FRAMEWORK_VERSION
#        
#        The version of the QtIFW tools that will be used. This variable is set 
#        by the `CPackIFW` module.
#        
# [ ] CPACK_IFW_ARCHIVEGEN_EXECUTABLE
#        
#        The path to `archivegen`.
#        
# [ ] CPACK_IFW_BINARYCREATOR_EXECUTABLE
#        
#        The path to `binarycreator`.
#        
# [ ] CPACK_IFW_REPOGEN_EXECUTABLE
#        
#        The path to `repogen`.
#        
# [ ] CPACK_IFW_INSTALLERBASE_EXECUTABLE
#        
#        The path to `installerbase`.
#        
# [ ] CPACK_IFW_DEVTOOL_EXECUTABLE
#        
#        The path to `devtool`.
#        
# [ ] CPACK_IFW_ROOT
#        
#        CMake variable
#        
# [ ] QTIFWDIR
#        
#        CMake variable
#        
