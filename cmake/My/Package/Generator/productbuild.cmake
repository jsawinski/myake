# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/productbuild

**See also**:
- [CPack productbuild Generator](https://cmake.org/cmake/help/latest/cpack_gen/productbuild.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/productbuild...")



# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack productbuild generator
# 
# [ ] CPACK_COMMAND_PRODUCTBUILD
#        
#        Path to the `productbuild(1)` command used to generate a product 
#        archive for the macOS Installer or Mac App Store. This variable can be 
#        used to override the automatically detected command (or specify its 
#        location if the auto-detection fails to find it).
#        
# [ ] CPACK_PRODUCTBUILD_IDENTIFIER
#        
#        Set the unique (non-localized) product identifier to be associated with
#        the product (i.e., `com.kitware.cmake`). Any component product names 
#        will be appended to this value.
#        
# [ ] CPACK_PRODUCTBUILD_IDENTITY_NAME
#        
#        Adds a digital signature to the resulting package.
#        
# [ ] CPACK_PRODUCTBUILD_KEYCHAIN_PATH
#        
#        Specify a specific keychain to search for the signing identity.
#        
# [ ] CPACK_COMMAND_PKGBUILD
#        
#        Path to the `pkgbuild(1)` command used to generate an macOS component 
#        package on macOS. This variable can be used to override the 
#        automatically detected command (or specify its location if the 
#        auto-detection fails to find it).
#        
# [ ] CPACK_PKGBUILD_IDENTITY_NAME
#        
#        Adds a digital signature to the resulting package.
#        
# [ ] CPACK_PKGBUILD_KEYCHAIN_PATH
#        
#        Specify a specific keychain to search for the signing identity.
#        
# [ ] CPACK_PREFLIGHT_<COMP>_SCRIPT
#        
#        Full path to a file that will be used as the `preinstall` script for 
#        the named `<COMP>` component's package, where `<COMP>` is the 
#        uppercased component name. No `preinstall` script is added if this 
#        variable is not defined for a given component.
#        
# [ ] CPACK_POSTFLIGHT_<COMP>_SCRIPT
#        
#        Full path to a file that will be used as the `postinstall` script for 
#        the named `<COMP>` component's package, where `<COMP>` is the 
#        uppercased component name. No `postinstall` script is added if this 
#        variable is not defined for a given component.
#        
# [ ] CPACK_PRODUCTBUILD_RESOURCES_DIR
#        
#        If specified the productbuild generator copies files from this 
#        directory (including subdirectories) to the `Resources` directory. This
#        is done before the `CPACK_RESOURCE_FILE_WELCOME`, 
#        `CPACK_RESOURCE_FILE_README`, and `CPACK_RESOURCE_FILE_LICENSE` files 
#        are copied.
#        
# [ ] CPACK_PRODUCTBUILD_DOMAINS
#        
#        This option enables more granular control over where the product may be
#        installed. When it is set to true, a `domains` element of the following
#        form will be added to the productbuild Distribution XML:
#        ```
#        <domains enable_anywhere="true" enable_currentUserHome="false" enable_localSystem="true"/>
#        ```
#        
#        The default values are as shown above, but can be overridden with 
#        `CPACK_PRODUCTBUILD_DOMAINS_ANYWHERE`, 
#        `CPACK_PRODUCTBUILD_DOMAINS_USER`, and 
#        `CPACK_PRODUCTBUILD_DOMAINS_ROOT`.
#        
# [ ] CPACK_PRODUCTBUILD_DOMAINS_ANYWHERE
#        
#        May be used to override the `enable_anywhere` attribute in the 
#        `domains` element of the Distribution XML. When set to true, the 
#        product can be installed at the root of any volume, including 
#        non-system volumes.
#        
#        `CPACK_PRODUCTBUILD_DOMAINS` must be set to true for this variable to 
#        have any effect.
#        
# [ ] CPACK_PRODUCTBUILD_DOMAINS_USER
#        
#        May be used to override the `enable_currentUserHome` attribute in the 
#        `domains` element of the Distribution XML. When set to true, the 
#        product can be installed into the current user's home directory. Note 
#        that when installing into the user's home directory, the following 
#        additional requirements will apply:
#        - The installer may not write outside the user's home directory.
#        - The install will be performed as the current user rather than as 
#          `root`. This may have ramifications for 
#          `CPACK_PREFLIGHT_<COMP>_SCRIPT` and `CPACK_POSTFLIGHT_<COMP>_SCRIPT`.
#        - Administrative privileges will not be needed to perform the install.
#        
#        `CPACK_PRODUCTBUILD_DOMAINS` must be set to true for this variable to 
#        have any effect.
#        
# [ ] CPACK_PRODUCTBUILD_DOMAINS_ROOT
#        
#        May be used to override the `enable_localSystem` attribute in the 
#        `domains` element of the Distribution XML. When set to true, the 
#        product can be installed in the root directory. This should normally be
#        set to true unless the product should only be installed to the user's 
#        home directory.
#        
#        `CPACK_PRODUCTBUILD_DOMAINS` must be set to true for this variable to 
#        have any effect.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND
#        
#        Adds a background to Distribution XML if specified. The value contains 
#        the path to image in `Resources` directory.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_ALIGNMENT
#        
#        Adds an `alignment` attribute to the background in Distribution XML. 
#        Refer to Apple documentation for valid values.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_SCALING
#        
#        Adds a `scaling` attribute to the background in Distribution XML. Refer
#        to Apple documentation for valid values.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_MIME_TYPE
#        
#        Adds a `mime-type` attribute to the background in Distribution XML. The
#        option contains MIME type of an image.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_UTI
#        
#        Adds an `uti` attribute to the background in Distribution XML. The 
#        option contains UTI type of an image.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA
#        
#        Adds a background for the Dark Aqua theme to Distribution XML if 
#        specified. The value contains the path to image in `Resources` 
#        directory.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_ALIGNMENT
#        
#        Does the same as `CPACK_PRODUCTBUILD_BACKGROUND_ALIGNMENT` option, but 
#        for the dark theme.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_SCALING
#        
#        Does the same as `CPACK_PRODUCTBUILD_BACKGROUND_SCALING` option, but 
#        for the dark theme.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_MIME_TYPE
#        
#        Does the same as `CPACK_PRODUCTBUILD_BACKGROUND_MIME_TYPE` option, but 
#        for the dark theme.
#        
# [ ] CPACK_PRODUCTBUILD_BACKGROUND_DARKAQUA_UTI
#        
#        Does the same as `CPACK_PRODUCTBUILD_BACKGROUND_UTI` option, but for 
#        the dark theme.
#        
