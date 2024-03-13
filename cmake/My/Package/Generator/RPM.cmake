# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

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
    my_package(RPM [COMMON]
        ...
    )

#]==]
function(my_generator_rpm)
endfunction()

# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack RPM generator
# 
# [ ] CPACK_RPM_COMPONENT_INSTALL
#        
#        Enable component packaging for CPack RPM generator
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        If enabled (`ON`) multiple packages are generated. By default a single 
#        package containing files of all components is generated.
#        
# [ ] CPACK_RPM_<component>_PACKAGE_SUMMARY
# [ ] CPACK_RPM_PACKAGE_SUMMARY
#        
#        The RPM package summary.
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_DESCRIPTION_SUMMARY`
#        
#        
# [ ] CPACK_RPM_<component>_PACKAGE_NAME
# [ ] CPACK_RPM_PACKAGE_NAME
#        
#        The RPM package name.
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_NAME`
#        
#        
# [ ] CPACK_RPM_<component>_FILE_NAME
# [ ] CPACK_RPM_FILE_NAME
#        
#        Package file name.
#        
#        **Mandatory**: Yes
#        **Default**: `<CPACK_PACKAGE_FILE_NAME>[-<component>].rpm` with spaces 
#            replaced by '-'
#        
#        This may be set to `RPM-DEFAULT` to allow `rpmbuild` tool to generate 
#        package file name by itself. Alternatively provided package file name 
#        must end with `.rpm` suffix.
#        
#        **Note**: 
#            
#            By using user provided spec file, rpm macro extensions such as for 
#            generating `debuginfo` packages or by simply using multiple 
#            components more than one rpm file may be generated, either from a 
#            single spec file or from multiple spec files (each component 
#            execution produces its own spec file). In such cases duplicate file
#            names may occur as a result of this variable setting or spec file 
#            content structure. Duplicate files get overwritten and it is up to 
#            the packager to set the variables in a manner that will prevent 
#            such errors.
#        
# [ ] CPACK_RPM_MAIN_COMPONENT
#        
#        Main component that is packaged without component suffix.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        This variable can be set to any component or group name so that 
#        component or group rpm package is generated without component suffix in
#        filename and package name.
#        
# [ ] CPACK_RPM_PACKAGE_EPOCH
#        
#        The RPM package epoch
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        Optional number that should be incremented when changing versioning 
#        schemas or fixing mistakes in the version numbers of older packages.
#        
# [ ] CPACK_RPM_PACKAGE_VERSION
#        
#        The RPM package version.
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_VERSION`
#        
#        
# [ ] CPACK_RPM_PACKAGE_ARCHITECTURE
# [ ] CPACK_RPM_<component>_PACKAGE_ARCHITECTURE
#        
#        The RPM package architecture.
#        
#        **Mandatory**: Yes
#        **Default**: Native architecture output by `uname -m`
#        
#        This may be set to `noarch` if you know you are building a `noarch` 
#        package.
#        
# [ ] CPACK_RPM_PACKAGE_RELEASE
#        
#        The RPM package release.
#        
#        **Mandatory**: Yes
#        **Default**: 1
#        
#        This is the numbering of the RPM package itself, i.e. the version of 
#        the packaging and not the version of the content (see 
#        `CPACK_RPM_PACKAGE_VERSION`). One may change the default value if the 
#        previous packaging was buggy and/or you want to put here a fancy Linux 
#        distro specific numbering.
#        
# [ ] CPACK_RPM_PACKAGE_RELEASE_DIST
#        
#        The dist tag that is added RPM `Release:` field.
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        This is the reported `%{dist}` tag from the current distribution or 
#        empty `%{dist}` if RPM macro is not set. If this variable is set then 
#        RPM `Release:` field value is set to 
#        `${CPACK_RPM_PACKAGE_RELEASE}%{?dist}`.
#        
# [ ] CPACK_RPM_PACKAGE_LICENSE
#        
#        The RPM package license policy.
#        
#        **Mandatory**: Yes
#        **Default**: "unknown"
#        
#        
# [ ] CPACK_RPM_<component>_PACKAGE_GROUP
# [ ] CPACK_RPM_PACKAGE_GROUP
#        
#        The RPM package group.
#        
#        **Mandatory**: Yes
#        **Default**: "unknown"
#        
#        
# [ ] CPACK_RPM_PACKAGE_VENDOR
#        
#        The RPM package vendor.
#        
#        **Mandatory**: Yes
#        **Default**: CPACK_PACKAGE_VENDOR if set or "unknown"
#        
#        
# [ ] CPACK_RPM_<component>_PACKAGE_URL
# [ ] CPACK_RPM_PACKAGE_URL
#        
#        The projects URL.
#        
#        **Mandatory**: No
#        **Default**: `CMAKE_PROJECT_HOMEPAGE_URL`
#        
#        
# [ ] CPACK_RPM_<component>_PACKAGE_DESCRIPTION
# [ ] CPACK_RPM_PACKAGE_DESCRIPTION
#        
#        RPM package description.
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_COMPONENT_<compName>_DESCRIPTION` (component based installers 
#          only) if set,
#        - `CPACK_PACKAGE_DESCRIPTION_FILE` if set, or
#        - `no package description available`
#        
# [ ] CPACK_RPM_COMPRESSION_TYPE
#        
#        RPM compression type.
#        
#        **Mandatory**: No
#        **Default**: (system default)
#        
#        May be used to override RPM compression type to be used to build the 
#        RPM. For example some Linux distribution now default to `lzma` or `xz` 
#        compression whereas older cannot use such RPM. Using this one can 
#        enforce compression type to be used.
#        
#        Possible values are:
#        
#        **`lzma`**: Lempel–Ziv–Markov chain algorithm
#        **`xz`**: XZ Utils compression
#        **`bzip2`**: bzip2 Burrows–Wheeler algorithm
#        **`gzip`**: GNU Gzip compression
#        
#        
# [ ] CPACK_RPM_<component>_PACKAGE_AUTOREQ
# [ ] CPACK_RPM_PACKAGE_AUTOREQ
#        
#        RPM spec autoreq field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to enable (`1`, `yes`) or disable (`0`, `no`) automatic 
#        shared libraries dependency detection. Dependencies are added to 
#        requires list.
#        
#        **Note**: 
#            
#            By default automatic dependency detection is enabled by rpm 
#            generator.
#        
# [ ] CPACK_RPM_<component>_PACKAGE_AUTOPROV
# [ ] CPACK_RPM_PACKAGE_AUTOPROV
#        
#        RPM spec autoprov field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to enable (`1`, `yes`) or disable (`0`, `no`) automatic 
#        listing of shared libraries that are provided by the package. Shared 
#        libraries are added to provides list.
#        
#        **Note**: 
#            
#            By default automatic provides detection is enabled by rpm 
#            generator.
#        
# [ ] CPACK_RPM_PACKAGE_AUTOREQPROV
# [ ] CPACK_RPM_<component>_PACKAGE_AUTOREQPROV
#        
#        RPM spec autoreqprov field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        Variable enables/disables autoreq and autoprov at the same time. See 
#        `CPACK_RPM_PACKAGE_AUTOREQ` and `CPACK_RPM_PACKAGE_AUTOPROV` for more 
#        details.
#        
#        **Note**: 
#            
#            By default automatic detection feature is enabled by rpm.
#        
# [ ] CPACK_RPM_<component>_PACKAGE_REQUIRES
# [ ] CPACK_RPM_PACKAGE_REQUIRES
#        
#        RPM spec requires field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM dependencies (requires). Note that you must 
#        enclose the complete requires string between quotes, for example:
#        ```
#        set(CPACK_RPM_PACKAGE_REQUIRES "python >= 2.5.0, cmake >= 2.8")
#        ```
#        
#        The required package list of an RPM file could be printed with:
#        ```
#        rpm -qp --requires file.rpm
#        ```
#        
# [ ] CPACK_RPM_<component>_PACKAGE_CONFLICTS
# [ ] CPACK_RPM_PACKAGE_CONFLICTS
#        
#        RPM spec conflicts field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set negative RPM dependencies (conflicts). Note that you
#        must enclose the complete requires string between quotes, for example:
#        ```
#        set(CPACK_RPM_PACKAGE_CONFLICTS "libxml2")
#        ```
#        
#        The conflicting package list of an RPM file could be printed with:
#        ```
#        rpm -qp --conflicts file.rpm
#        ```
#        
# [ ] CPACK_RPM_<component>_PACKAGE_REQUIRES_PRE
# [ ] CPACK_RPM_PACKAGE_REQUIRES_PRE
#        
#        RPM spec requires(pre) field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM preinstall dependencies (requires(pre)). Note 
#        that you must enclose the complete requires string between quotes, for 
#        example:
#        ```
#        set(CPACK_RPM_PACKAGE_REQUIRES_PRE "shadow-utils, initscripts")
#        ```
#        
# [ ] CPACK_RPM_<component>_PACKAGE_REQUIRES_POST
# [ ] CPACK_RPM_PACKAGE_REQUIRES_POST
#        
#        RPM spec requires(post) field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM postinstall dependencies (requires(post)). Note 
#        that you must enclose the complete requires string between quotes, for 
#        example:
#        ```
#        set(CPACK_RPM_PACKAGE_REQUIRES_POST "shadow-utils, initscripts")
#        ```
#        
# [ ] CPACK_RPM_PACKAGE_REQUIRES_POSTUN
# [ ] CPACK_RPM_<component>_PACKAGE_REQUIRES_POSTUN
#        
#        RPM spec requires(postun) field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM postuninstall dependencies (requires(postun)). 
#        Note that you must enclose the complete requires string between quotes,
#        for example:
#        ```
#        set(CPACK_RPM_PACKAGE_REQUIRES_POSTUN "shadow-utils, initscripts")
#        ```
#        
# [ ] CPACK_RPM_<component>_PACKAGE_REQUIRES_PREUN
# [ ] CPACK_RPM_PACKAGE_REQUIRES_PREUN
#        
#        RPM spec requires(preun) field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM preuninstall dependencies (requires(preun)). 
#        Note that you must enclose the complete requires string between quotes,
#        for example:
#        ```
#        set(CPACK_RPM_PACKAGE_REQUIRES_PREUN "shadow-utils, initscripts")
#        ```
#        
# [ ] CPACK_RPM_<component>_PACKAGE_SUGGESTS
# [ ] CPACK_RPM_PACKAGE_SUGGESTS
#        
#        RPM spec suggest field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set weak RPM dependencies (suggests). If `rpmbuild` 
#        doesn't support the `Suggests` tag, CPack will emit a warning and 
#        ignore this variable. Note that you must enclose the complete requires 
#        string between quotes.
#        
# [ ] CPACK_RPM_PACKAGE_PROVIDES
# [ ] CPACK_RPM_<component>_PACKAGE_PROVIDES
#        
#        RPM spec provides field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM dependencies (provides). The provided package 
#        list of an RPM file could be printed with:
#        ```
#        rpm -qp --provides file.rpm
#        ```
#        
# [ ] CPACK_RPM_<component>_PACKAGE_OBSOLETES
# [ ] CPACK_RPM_PACKAGE_OBSOLETES
#        
#        RPM spec obsoletes field.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set RPM packages that are obsoleted by this one.
#        
# [ ] CPACK_RPM_PACKAGE_RELOCATABLE
#        
#        build a relocatable RPM.
#        
#        **Mandatory**: No
#        **Default**: CPACK_PACKAGE_RELOCATABLE
#        
#        If this variable is set to TRUE or ON, the CPack RPM generator will try
#        to build a relocatable RPM package. A relocatable RPM may be installed 
#        using:
#        ```
#        rpm --prefix or --relocate
#        ```
#        
#        in order to install it at an alternate place see rpm(8). Note that 
#        currently this may fail if `CPACK_SET_DESTDIR` is set to `ON`. If 
#        `CPACK_SET_DESTDIR` is set then you will get a warning message but if 
#        there is file installed with absolute path you'll get unexpected 
#        behavior.
#        
# [ ] CPACK_RPM_SPEC_INSTALL_POST
#        
#        **Deprecated**: 
#            
#            2.8.12 Use `CPACK_RPM_SPEC_MORE_DEFINE` instead.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to override the `__spec_install_post` section within the 
#        generated spec file. This affects the install step during package 
#        creation, not during package installation. For adding operations to be 
#        performed during package installation, use 
#        `CPACK_RPM_POST_INSTALL_SCRIPT_FILE` instead.
#        
# [ ] CPACK_RPM_SPEC_MORE_DEFINE
#        
#        RPM extended spec definitions lines.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to add any `%define` lines to the generated spec file. An 
#        example of its use is to prevent stripping of executables (but note 
#        that this may also disable other default post install processing):
#        ```
#        set(CPACK_RPM_SPEC_MORE_DEFINE "%define __spec_install_post /bin/true")
#        ```
#        
# [ ] CPACK_RPM_PACKAGE_DEBUG
#        
#        Toggle CPack RPM generator debug output.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be set when invoking cpack in order to trace debug information 
#        during CPack RPM run. For example you may launch CPack like this:
#        ```
#        cpack -D CPACK_RPM_PACKAGE_DEBUG=1 -G RPM
#        ```
#        
# [ ] CPACK_RPM_<componentName>_USER_BINARY_SPECFILE
# [ ] CPACK_RPM_USER_BINARY_SPECFILE
#        
#        A user provided spec file.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be set by the user in order to specify a USER binary spec file to 
#        be used by the CPack RPM generator instead of generating the file. The 
#        specified file will be processed by configure_file( @ONLY).
#        
# [ ] CPACK_RPM_GENERATE_USER_BINARY_SPECFILE_TEMPLATE
#        
#        Spec file template.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        If set CPack will generate a template for USER specified binary spec 
#        file and stop with an error. For example launch CPack like this:
#        ```
#        cpack -D CPACK_RPM_GENERATE_USER_BINARY_SPECFILE_TEMPLATE=1 -G RPM
#        ```
#        
#        The user may then use this file in order to hand-craft is own binary 
#        spec file which may be used with `CPACK_RPM_USER_BINARY_SPECFILE`.
#        
# [ ] CPACK_RPM_PRE_UNINSTALL_SCRIPT_FILE
# [ ] CPACK_RPM_PRE_TRANS_SCRIPT_FILE
# [ ] CPACK_RPM_PRE_INSTALL_SCRIPT_FILE
#        
#        Path to file containing pre install/uninstall/transaction script.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to embed a pre installation/uninstallation/transaction 
#        script in the spec file. The referred script file (or both) will be 
#        read and directly put after the `%pre` or `%preun` section If 
#        `CPACK_RPM_COMPONENT_INSTALL` is set to ON the 
#        install/uninstall/transaction script for each component can be 
#        overridden with `!CPACK_RPM_<COMPONENT>_PRE_INSTALL_SCRIPT_FILE`, 
#        `!CPACK_RPM_<COMPONENT>_PRE_UNINSTALL_SCRIPT_FILE`, and 
#        `!CPACK_RPM_<COMPONENT>_PRE_TRANS_SCRIPT_FILE` One may verify which 
#        scriptlet has been included with:
#        ```
#        rpm -qp --scripts  package.rpm
#        ```
#        
# [ ] CPACK_RPM_POST_TRANS_SCRIPT_FILE
# [ ] CPACK_RPM_POST_UNINSTALL_SCRIPT_FILE
# [ ] CPACK_RPM_POST_INSTALL_SCRIPT_FILE
#        
#        Path to file containing post install/uninstall/transaction script.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to embed a post installation/uninstallation/transaction 
#        script in the spec file. The referred script file (or both) will be 
#        read and directly put after the `%post` or `%postun` section. If 
#        `CPACK_RPM_COMPONENT_INSTALL` is set to ON the 
#        install/uninstall/transaction script for each component can be 
#        overridden with `!CPACK_RPM_<COMPONENT>_POST_INSTALL_SCRIPT_FILE`, 
#        `!CPACK_RPM_<COMPONENT>_POST_UNINSTALL_SCRIPT_FILE`, and 
#        `!CPACK_RPM_<COMPONENT>_POST_TRANS_SCRIPT_FILE` One may verify which 
#        scriptlet has been included with:
#        ```
#        rpm -qp --scripts  package.rpm
#        ```
#        
# [ ] CPACK_RPM_<COMPONENT>_USER_FILELIST
# [ ] CPACK_RPM_USER_FILELIST
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to explicitly specify `%(<directive>)` file line in the 
#        spec file. Like `%config(noreplace)` or any other directive that be 
#        found in the `%files` section. Since the CPack RPM generator is 
#        generating the list of files (and directories) the user specified files
#        of the `!CPACK_RPM_<COMPONENT>_USER_FILELIST` list will be removed from
#        the generated list. If referring to directories do not add a trailing 
#        slash.
#        
# [ ] CPACK_RPM_CHANGELOG_FILE
#        
#        RPM changelog file.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to embed a changelog in the spec file. The referred file 
#        will be read and directly put after the `%changelog` section.
#        
# [ ] CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST
#        
#        list of path to be excluded.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        **
#        - `/etc`
#        - `/etc/init.d`
#        - `/usr`
#        - `/usr/bin`
#        - `/usr/include`
#        - `/usr/lib`
#        - `/usr/libx32`
#        - `/usr/lib64`
#        - `/usr/share`
#        - `/usr/share/aclocal`
#        - `/usr/share/doc`**: 
#        
#        May be used to exclude path (directories or files) from the 
#        auto-generated list of paths discovered by CPack RPM. The default value
#        contains a reasonable set of values if the variable is not defined by 
#        the user. If the variable is defined by the user then the CPack RPM 
#        generator will NOT any of the default path. If you want to add some 
#        path to the default list then you can use 
#        `CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION` variable.
#        
# [ ] CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION
#        
#        additional list of path to be excluded.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to add more exclude path (directories or files) from the 
#        initial default list of excluded paths. See 
#        `CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST`.
#        
# [ ] CPACK_RPM_RELOCATION_PATHS
#        
#        Packages relocation paths list.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to specify more than one relocation path per relocatable 
#        RPM. Variable contains a list of relocation paths that if relative are 
#        prefixed by the value of `CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX` or by 
#        the value of `CPACK_PACKAGING_INSTALL_PREFIX` if the component version 
#        is not provided. Variable is not component based as its content can be 
#        used to set a different path prefix for e.g. binary dir and 
#        documentation dir at the same time. Only prefixes that are required by 
#        a certain component are added to that component - component must 
#        contain at least one file/directory/symbolic link with 
#        `CPACK_RPM_RELOCATION_PATHS` prefix for a certain relocation path to be
#        added. Package will not contain any relocation paths if there are no 
#        files/directories/symbolic links on any of the provided prefix 
#        locations. Packages that either do not contain any relocation paths or 
#        contain files/directories/symbolic links that are outside relocation 
#        paths print out an `AUTHOR_WARNING <message>` that RPM will be 
#        partially relocatable.
#        
# [ ] CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX
#        
#        Per component relocation path install prefix.
#        
#        **Mandatory**: No
#        **Default**: `CPACK_PACKAGING_INSTALL_PREFIX`
#        
#        May be used to set per component `CPACK_PACKAGING_INSTALL_PREFIX` for 
#        relocatable RPM packages.
#        
# [ ] CPACK_RPM_NO_<COMPONENT>_INSTALL_PREFIX_RELOCATION
# [ ] CPACK_RPM_NO_INSTALL_PREFIX_RELOCATION
#        
#        Removal of default install prefix from relocation paths list.
#        
#        **Mandatory**: No
#        **Default**: `CPACK_PACKAGING_INSTALL_PREFIX` or 
#            `CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX` are treated as one of 
#            relocation paths
#        
#        May be used to remove `CPACK_PACKAGING_INSTALL_PREFIX` and 
#        `CPACK_RPM_<COMPONENT>_PACKAGE_PREFIX` from relocatable RPM prefix 
#        paths.
#        
# [ ] CPACK_RPM_ADDITIONAL_MAN_DIRS
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        **
#        - `/usr/man/man.*`
#        - `/usr/man/.*/man.*`
#        - `/usr/info.*`
#        - `/usr/share/man/man.*`
#        - `/usr/share/man/.*/man.*`
#        - `/usr/share/info.*`
#        - `/usr/kerberos/man.*`
#        - `/usr/X11R6/man/man.*`
#        - `/usr/lib/perl5/man/man.*`
#        - `/usr/share/doc/.*/man/man.*`
#        - `/usr/lib/.*/man/man.*`**: 
#        
#        May be used to set additional man dirs that could potentially be 
#        compressed by brp-compress RPM macro. Variable content must be a list 
#        of regular expressions that point to directories containing man files 
#        or to man files directly. Note that in order to compress man pages a 
#        path must also be present in brp-compress RPM script and that 
#        brp-compress script must be added to RPM configuration by the operating
#        system.
#        
# [ ] CPACK_RPM_<compName>_DEFAULT_USER
# [ ] CPACK_RPM_DEFAULT_USER
#        
#        default user ownership of RPM content
#        
#        **Mandatory**: No
#        **Default**: `root`
#        
#        Value should be user name and not UID. Note that `<compName>` must be 
#        in upper-case.
#        
# [ ] CPACK_RPM_DEFAULT_GROUP
# [ ] CPACK_RPM_<compName>_DEFAULT_GROUP
#        
#        default group ownership of RPM content
#        
#        **Mandatory**: No
#        **Default**: root
#        
#        Value should be group name and not GID. Note that `<compName>` must be 
#        in upper-case.
#        
# [ ] CPACK_RPM_DEFAULT_FILE_PERMISSIONS
# [ ] CPACK_RPM_<compName>_DEFAULT_FILE_PERMISSIONS
#        
#        default permissions used for packaged files
#        
#        **Mandatory**: No
#        **Default**: (system default)
#        
#        Accepted values are lists with PERMISSIONS. Valid permissions are:
#        - `OWNER_READ`
#        - `OWNER_WRITE`
#        - `OWNER_EXECUTE`
#        - `GROUP_READ`
#        - `GROUP_WRITE`
#        - `GROUP_EXECUTE`
#        - `WORLD_READ`
#        - `WORLD_WRITE`
#        - `WORLD_EXECUTE`
#        
#        Note that `<compName>` must be in upper-case.
#        
# [ ] CPACK_RPM_DEFAULT_DIR_PERMISSIONS
# [ ] CPACK_RPM_<compName>_DEFAULT_DIR_PERMISSIONS
#        
#        default permissions used for packaged directories
#        
#        **Mandatory**: No
#        **Default**: (system default)
#        
#        Accepted values are lists with PERMISSIONS. Valid permissions are the 
#        same as for `CPACK_RPM_DEFAULT_FILE_PERMISSIONS`. Note that 
#        `<compName>` must be in upper-case.
#        
# [ ] CPACK_RPM_INSTALL_WITH_EXEC
#        
#        force execute permissions on programs and shared libraries
#        
#        **Mandatory**: No
#        **Default**: (system default)
#        
#        Force set owner, group and world execute permissions on programs and 
#        shared libraries. This can be used for creating valid rpm packages on 
#        systems such as Debian where shared libraries do not have execute 
#        permissions set.
#        
# The following text was auto-generated from CPack's help files:
# 
# === Packaging of debug information
# 
# [ ] CPACK_RPM_<component>_DEBUGINFO_PACKAGE
# [ ] CPACK_RPM_DEBUGINFO_PACKAGE
#        
#        Enable generation of debuginfo RPM package(s).
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        
# [ ] CPACK_BUILD_SOURCE_DIRS
#        
#        Provides locations of root directories of source files from which 
#        binaries were built.
#        
#        **Mandatory**: Yes if `CPACK_RPM_DEBUGINFO_PACKAGE` is set
#        **Default**: 
#        
#        
# [ ] CPACK_RPM_BUILD_SOURCE_DIRS_PREFIX
# [ ] CPACK_RPM_<component>_BUILD_SOURCE_DIRS_PREFIX
#        
#        Prefix of location where sources will be placed during package 
#        installation.
#        
#        **Mandatory**: Yes if `CPACK_RPM_DEBUGINFO_PACKAGE` is set
#        **Default**: `/usr/src/debug/${CPACK_PACKAGE_FILE_NAME}` and for 
#            component packaging 
#            `/usr/src/debug/${CPACK_PACKAGE_FILE_NAME}-<component>`
#        
#        
# [ ] CPACK_RPM_DEBUGINFO_EXCLUDE_DIRS
#        
#        Directories containing sources that should be excluded from debuginfo 
#        packages.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        **
#        - `/usr`
#        - `/usr/src`
#        - `/usr/src/debug`**: 
#        
#        Listed paths are owned by other RPM packages and should therefore not 
#        be deleted on debuginfo package uninstallation.
#        
# [ ] CPACK_RPM_DEBUGINFO_EXCLUDE_DIRS_ADDITION
#        
#        Paths that should be appended to `CPACK_RPM_DEBUGINFO_EXCLUDE_DIRS` for
#        exclusion.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        
# [ ] CPACK_RPM_DEBUGINFO_SINGLE_PACKAGE
#        
#        Create a single debuginfo package even if components packaging is set.
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        When this variable is enabled it produces a single debuginfo package 
#        even if component packaging is enabled.
#        
#        When using this feature in combination with components packaging and 
#        there is more than one component this variable requires 
#        `CPACK_RPM_MAIN_COMPONENT` to be set.
#        
# [ ] CPACK_RPM_<component>_DEBUGINFO_FILE_NAME
# [ ] CPACK_RPM_DEBUGINFO_FILE_NAME
#        
#        Debuginfo package file name.
#        
#        **Mandatory**: No
#        **Default**: rpmbuild tool generated package file name
#        
#        Alternatively provided debuginfo package file name must end with `.rpm`
#        suffix and should differ from file names of other generated packages.
#        
#        Variable may contain `@cpack_component@` placeholder which will be 
#        replaced by component name if component packaging is enabled otherwise 
#        it deletes the placeholder.
#        
#        Setting the variable to `RPM-DEFAULT` may be used to explicitly set 
#        filename generation to default.
#        
# The following text was auto-generated from CPack's help files:
# 
# === Packaging of sources (SRPM)
# 
# [ ] CPACK_RPM_PACKAGE_SOURCES
#        
#        Should the content be packaged as a source rpm (default is binary rpm).
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        
# [ ] CPACK_RPM_SOURCE_PKG_BUILD_PARAMS
#        
#        Additional command-line parameters provided to `cmake(1)` executable.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        
# [ ] CPACK_RPM_SOURCE_PKG_PACKAGING_INSTALL_PREFIX
#        
#        Packaging install prefix that would be provided in 
#        `CPACK_PACKAGING_INSTALL_PREFIX` variable for producing binary RPM 
#        packages.
#        
#        **Mandatory**: Yes
#        **Default**: `/`
#        
#        
# [ ] CPACK_RPM_BUILDREQUIRES
#        
#        List of source rpm build dependencies.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to set source RPM build dependencies (BuildRequires). Note 
#        that you must enclose the complete build requirements string between 
#        quotes, for example:
#        ```
#        set(CPACK_RPM_BUILDREQUIRES "python >= 2.5.0, cmake >= 2.8")
#        ```
#        
# [ ] CPACK_RPM_REQUIRES_EXCLUDE_FROM
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        May be used to keep the dependency generator from scanning specific 
#        files or directories for dependencies. Note that you can use a regular 
#        expression that matches all of the directories or files, for example:
#        ```
#        set(CPACK_RPM_REQUIRES_EXCLUDE_FROM "bin/libqsqloci.*\.so.*")
#        ```
#        
