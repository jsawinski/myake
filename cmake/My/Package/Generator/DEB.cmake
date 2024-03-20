# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/DEB

**See also**:
- [CPack DEB Generator](https://cmake.org/cmake/help/latest/cpack_gen/deb.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/DEB...")


# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack Debian (DEB) generator
# 
# [ ] CPACK_DEB_COMPONENT_INSTALL
#        
#        Enable component packaging for CPackDEB
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        If enabled (`ON`) multiple packages are generated. By default a single 
#        package containing files of all components is generated.
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_NAME
# [ ] CPACK_DEBIAN_PACKAGE_NAME
#        
#        Set Package control field (variable is automatically transformed to 
#        lower case).
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_PACKAGE_NAME` for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_NAME` suffixed with `-<COMPONENT>` for 
#          component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-source
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_FILE_NAME
# [ ] CPACK_DEBIAN_FILE_NAME
#        
#        Package file name.
#        
#        **Mandatory**: Yes
#        **Default**: `<CPACK_PACKAGE_FILE_NAME>[-<component>].deb`
#        
#        This may be set to `DEB-DEFAULT` to allow the CPack DEB generator to 
#        generate package file name by itself in deb format:
#        ```
#        <PackageName>_<VersionNumber>-<DebianRevisionNumber>_<DebianArchitecture>.deb
#        ```
#        
#        Alternatively provided package file name must end with either `.deb` or
#        `.ipk` suffix.
#        
#        **Note**: 
#            
#            Preferred setting of this variable is `DEB-DEFAULT` but for 
#            backward compatibility with the CPack DEB generator in CMake prior 
#            to version 3.6 this feature is disabled by default.
#        
#        **Note**: 
#            
#            By using non default filenames duplicate names may occur. Duplicate
#            files get overwritten and it is up to the packager to set the 
#            variables in a manner that will prevent such errors.
#        
# [ ] CPACK_DEBIAN_PACKAGE_EPOCH
#        
#        The Debian package epoch
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        Optional number that should be incremented when changing versioning 
#        schemas or fixing mistakes in the version numbers of older packages.
#        
# [ ] CPACK_DEBIAN_PACKAGE_VERSION
#        
#        The Debian package version
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_VERSION`
#        
#        This variable may contain only alphanumerics (A-Za-z0-9) and the 
#        characters . + - ~ (full stop, plus, hyphen, tilde) and should start 
#        with a digit. If `CPACK_DEBIAN_PACKAGE_RELEASE` is not set then hyphens
#        are not allowed.
#        
#        **Note**: 
#            
#            For backward compatibility with CMake 3.9 and lower a failed test 
#            of this variable's content is not a hard error when both 
#            `CPACK_DEBIAN_PACKAGE_RELEASE` and `CPACK_DEBIAN_PACKAGE_EPOCH` 
#            variables are not set. An author warning is reported instead.
#        
# [ ] CPACK_DEBIAN_PACKAGE_RELEASE
#        
#        The Debian package release - Debian revision number.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        This is the numbering of the DEB package itself, i.e. the version of 
#        the packaging and not the version of the content (see 
#        `CPACK_DEBIAN_PACKAGE_VERSION`). One may change the default value if 
#        the previous packaging was buggy and/or you want to put here a fancy 
#        Linux distro specific numbering.
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_ARCHITECTURE
# [ ] CPACK_DEBIAN_PACKAGE_ARCHITECTURE
#        
#        The Debian package architecture
#        
#        **Mandatory**: Yes
#        **Default**: Output of `dpkg --print-architecture` (or `i386` if `dpkg`
#            is not found)
#        
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS
# [ ] CPACK_DEBIAN_PACKAGE_DEPENDS
#        
#        Sets the Debian dependencies of this package.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_DEPENDS` for component-based installations.
#        
#        **Note**: 
#            
#            If `CPACK_DEBIAN_PACKAGE_SHLIBDEPS` or more specifically 
#            `CPACK_DEBIAN_<COMPONENT>_PACKAGE_SHLIBDEPS` is set for this 
#            component, the discovered dependencies will be appended to 
#            `CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS` instead of 
#            `CPACK_DEBIAN_PACKAGE_DEPENDS`. If 
#            `CPACK_DEBIAN_<COMPONENT>_PACKAGE_DEPENDS` is an empty string, only
#            the automatically discovered dependencies will be set for this 
#            component.
#        
#        Example:
#        ```
#        set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.3.1-6), libc6 (< 2.4)")
#        ```
#        
# [ ] CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS
#        
#        Sets inter-component dependencies if listed with 
#        `CPACK_COMPONENT_<compName>_DEPENDS` variables.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_DEBIAN_PACKAGE_MAINTAINER
#        
#        The Debian package maintainer
#        
#        **Mandatory**: Yes
#        **Default**: `!CPACK_PACKAGE_CONTACT`
#        
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_DESCRIPTION
# [ ] CPACK_DEBIAN_PACKAGE_DESCRIPTION
#        
#        The Debian package description
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_DEBIAN_<COMPONENT>_DESCRIPTION` (component based installers 
#          only) if set, or `CPACK_DEBIAN_PACKAGE_DESCRIPTION` if set, or
#        - `CPACK_COMPONENT_<compName>_DESCRIPTION` (component based installers 
#          only) if set, or `CPACK_PACKAGE_DESCRIPTION` if set, or
#        - content of the file specified in `CPACK_PACKAGE_DESCRIPTION_FILE` if 
#          set
#        
#        If after that description is not set, 
#        `CPACK_PACKAGE_DESCRIPTION_SUMMARY` going to be used if set. Otherwise,
#        `CPACK_PACKAGE_DESCRIPTION_SUMMARY` will be added as the first line of 
#        description as defined in 
#        [Debian Policy Manual](https://www.debian.org/doc/debian-policy/ch-controlfields.html#description)]
#        .
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SECTION
# [ ] CPACK_DEBIAN_PACKAGE_SECTION
#        
#        Set Section control field e.g. admin, devel, doc, ...
#        
#        **Mandatory**: Yes
#        **Default**: `devel`
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-archive.html#s-subsections
#        
# [ ] CPACK_DEBIAN_ARCHIVE_TYPE
#        
#        **Deprecated**: 
#            
#            3.14
#        
#        The archive format used for creating the Debian package.
#        
#        **Mandatory**: Yes
#        **Default**: `gnutar`
#        
#        Possible value is: `gnutar`
#        
#        **Note**: 
#            
#            This variable previously defaulted to the `paxr` value, but `dpkg` 
#            has never supported that tar format. For backwards compatibility 
#            the `paxr` value will be mapped to `gnutar` and a deprecation 
#            message will be emitted.
#        
# [ ] CPACK_DEBIAN_COMPRESSION_TYPE
#        
#        The compression used for creating the Debian package.
#        
#        **Mandatory**: Yes
#        **Default**: `gzip`
#        
#        Possible values are:
#        
#        **`lzma`**: Lempel–Ziv–Markov chain algorithm
#        **`xz`**: XZ Utils compression
#        **`bzip2`**: bzip2 Burrows–Wheeler algorithm
#        **`gzip`**: GNU Gzip compression
#        **`zstd`**: Zstandard compression
#        
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_PRIORITY
# [ ] CPACK_DEBIAN_PACKAGE_PRIORITY
#        
#        Set Priority control field e.g. required, important, standard, 
#        optional, extra
#        
#        **Mandatory**: Yes
#        **Default**: `optional`
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-archive.html#s-priorities
#        
# [ ] CPACK_DEBIAN_PACKAGE_HOMEPAGE
#        
#        The URL of the web site for this package, preferably (when applicable) 
#        the site from which the original source can be obtained and any 
#        additional upstream documentation or information may be found.
#        
#        **Mandatory**: No
#        **Default**: `CMAKE_PROJECT_HOMEPAGE_URL`
#        
#        **Note**: 
#            
#            The content of this field is a simple URL without any surrounding 
#            characters such as <>.
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SHLIBDEPS
# [ ] CPACK_DEBIAN_PACKAGE_SHLIBDEPS
#        
#        May be set to ON in order to use `dpkg-shlibdeps` to generate better 
#        package dependency list.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - `CPACK_DEBIAN_PACKAGE_SHLIBDEPS` if set or
#        - `OFF`
#        
#        **Note**: 
#            
#            You may need set `CMAKE_INSTALL_RPATH` to an appropriate value if 
#            you use this feature, because if you don't `dpkg-shlibdeps` may 
#            fail to find your own shared libs. See 
#            https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/RPATH-handling
#        
#        **Note**: 
#            
#            You can also set `CPACK_DEBIAN_PACKAGE_SHLIBDEPS_PRIVATE_DIRS` to 
#            an appropriate value if you use this feature, in order to please 
#            `dpkg-shlibdeps`. However, you should only do this for private 
#            shared libraries that could not get resolved otherwise.
#        
# [ ] CPACK_DEBIAN_PACKAGE_SHLIBDEPS_PRIVATE_DIRS
#        
#        May be set to a list of directories that will be given to 
#        `dpkg-shlibdeps` via its `-l` option. These will be searched by 
#        `dpkg-shlibdeps` in order to find private shared library dependencies.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        **Note**: 
#            
#            You should prefer to set `CMAKE_INSTALL_RPATH` to an appropriate 
#            value if you use `dpkg-shlibdeps`. The current option is really 
#            only needed for private shared library dependencies.
#        
# [ ] CPACK_DEBIAN_PACKAGE_DEBUG
#        
#        May be set when invoking cpack in order to trace debug information 
#        during the CPack DEB generator run.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_PREDEPENDS
# [ ] CPACK_DEBIAN_PACKAGE_PREDEPENDS
#        
#        Sets the Pre-Depends field of the Debian package. Like 
#        `Depends <CPACK_DEBIAN_PACKAGE_DEPENDS>`, except that it also forces 
#        `dpkg` to complete installation of the packages named before even 
#        starting the installation of the package which declares the 
#        pre-dependency.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_PREDEPENDS` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_ENHANCES
# [ ] CPACK_DEBIAN_PACKAGE_ENHANCES
#        
#        Sets the `Enhances` field of the Debian package. Similar to 
#        `Suggests <CPACK_DEBIAN_PACKAGE_SUGGESTS>` but works in the opposite 
#        direction: declares that a package can enhance the functionality of 
#        another package.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_ENHANCES` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_BREAKS
# [ ] CPACK_DEBIAN_PACKAGE_BREAKS
#        
#        Sets the `Breaks` field of the Debian package. When a binary package 
#        (P) declares that it breaks other packages (B), `dpkg` will not allow 
#        the package (P) which declares `Breaks` be *unpacked* unless the 
#        packages that will be broken (B) are deconfigured first. As long as the
#        package (P) is configured, the previously deconfigured packages (B) 
#        cannot be reconfigured again.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_BREAKS` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-breaks
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONFLICTS
# [ ] CPACK_DEBIAN_PACKAGE_CONFLICTS
#        
#        Sets the Conflicts field of the Debian package. When one binary package
#        declares a conflict with another using a Conflicts field, `dpkg` will 
#        not allow them to be unpacked on the system at the same time.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_CONFLICTS` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-conflicts
#        
#        **Note**: 
#            
#            This is a stronger restriction than 
#            `Breaks <CPACK_DEBIAN_PACKAGE_BREAKS>`, which prevents the broken 
#            package from being configured while the breaking package is in the 
#            "Unpacked" state but allows both packages to be unpacked at the 
#            same time.
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_PROVIDES
# [ ] CPACK_DEBIAN_PACKAGE_PROVIDES
#        
#        Sets the Provides field of the Debian package. A virtual package is one
#        which appears in the Provides control field of another package.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_PROVIDES` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-virtual
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_REPLACES
# [ ] CPACK_DEBIAN_PACKAGE_REPLACES
#        
#        Sets the Replaces field of the Debian package. Packages can declare in 
#        their control file that they should overwrite files in certain other 
#        packages, or completely replace other packages.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_REPLACES` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_RECOMMENDS
# [ ] CPACK_DEBIAN_PACKAGE_RECOMMENDS
#        
#        Sets the `Recommends` field of the Debian package. Allows packages to 
#        declare a strong, but not absolute, dependency on other packages.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_RECOMMENDS` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SUGGESTS
# [ ] CPACK_DEBIAN_PACKAGE_SUGGESTS
#        
#        Sets the Suggests field of the Debian package. Allows packages to 
#        declare a suggested package install grouping.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_SUGGESTS` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-relationships.html#s-binarydeps
#        
# [ ] CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        Allows to generate shlibs control file automatically. Compatibility is 
#        defined by `CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY` variable 
#        value.
#        
#        **Note**: 
#            
#            Libraries are only considered if they have both library name and 
#            version set. This can be done by setting SOVERSION property with 
#            `set_target_properties` command.
#        
# [ ] CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY
#        
#        Compatibility policy for auto-generated shlibs control file.
#        
#        **Mandatory**: No
#        **Default**: `=`
#        
#        Defines compatibility policy for auto-generated shlibs control file. 
#        Possible values: `=`, `>=`
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-sharedlibs.html#s-sharedlibs-shlibdeps
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_EXTRA
# [ ] CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
#        
#        This variable allow advanced user to add custom script to the 
#        control.tar.gz. Typical usage is for conffiles, postinst, postrm, 
#        prerm.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        Usage:
#        ```
#        set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA
#            "${CMAKE_CURRENT_SOURCE_DIR}/prerm;${CMAKE_CURRENT_SOURCE_DIR}/postrm")
#        
#        ```
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_CONTROL_STRICT_PERMISSION
# [ ] CPACK_DEBIAN_PACKAGE_CONTROL_STRICT_PERMISSION
#        
#        This variable indicates if the Debian policy on control files should be
#        strictly followed.
#        
#        **Mandatory**: No
#        **Default**: `FALSE`
#        
#        Usage:
#        ```
#        set(CPACK_DEBIAN_PACKAGE_CONTROL_STRICT_PERMISSION TRUE)
#        ```
#        
#        This overrides the permissions on the original files, following the 
#        rules set by Debian policy 
#        https://www.debian.org/doc/debian-policy/ch-files.html#s-permissions-owners
#        
#        **Note**: 
#            
#            The original permissions of the files will be used in the final 
#            package unless this variable is set to `TRUE`. In particular, the 
#            scripts should have the proper executable flag prior to the 
#            generation of the package.
#        
# [ ] CPACK_DEBIAN_<COMPONENT>_PACKAGE_SOURCE
# [ ] CPACK_DEBIAN_PACKAGE_SOURCE
#        
#        Sets the `Source` field of the binary Debian package. When the binary 
#        package name is not the same as the source package name (in particular 
#        when several components/binaries are generated from one source) the 
#        source from which the binary has been generated should be indicated 
#        with the field `Source`.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - An empty string for non-component based installations
#        - `CPACK_DEBIAN_PACKAGE_SOURCE` for component-based installations.
#        
#        See 
#        https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-source
#        
#        **Note**: 
#            
#            This value is not interpreted. It is possible to pass an optional 
#            revision number of the referenced source package as well.
#        
# The following text was auto-generated from CPack's help files:
# 
# === Packaging of debug information
# 
# [ ] CPACK_DEBIAN_<component>_DEBUGINFO_PACKAGE
# [ ] CPACK_DEBIAN_DEBUGINFO_PACKAGE
#        
#        Enable generation of dbgsym .ddeb package(s).
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        
