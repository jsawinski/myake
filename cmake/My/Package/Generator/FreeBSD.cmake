# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/FreeBSD

**See also**:
- [CPack FreeBSD Generator](https://cmake.org/cmake/help/latest/cpack_gen/freebsd.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/FreeBSD...")

#[==[.md:
# my_generator_freebsd

FIXME
    my_package(FreeBSD [COMMON]
        ...
    )

#]==]
function(my_generator_freebsd)
    message(TRACE "my_generator_freebsd(${_MY_PACK_COMMON},${__MY_PACK_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()


# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack FreeBSD (pkg) generator
# 
# [ ] CPACK_FREEBSD_PACKAGE_NAME
#        
#        Sets the package name (in the package manifest, but also affects the 
#        output filename).
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_PACKAGE_NAME` (this is always set by CPack itself, based on 
#          CMAKE_PROJECT_NAME).
#        
# [ ] CPACK_FREEBSD_PACKAGE_COMMENT
#        
#        Sets the package comment. This is the short description displayed by 
#        pkg(8) in standard "pkg info" output.
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_PACKAGE_DESCRIPTION_SUMMARY` (this is always set by CPack 
#          itself, if nothing else sets it explicitly).
#        
# [ ] CPACK_FREEBSD_PACKAGE_DESCRIPTION
#        
#        Sets the package description. This is the long description of the 
#        package, given by "pkg info" with a specific package as argument.
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_DEBIAN_PACKAGE_DESCRIPTION` (this may be set already for 
#          Debian packaging, so it is used as a fallback).
#        - `CPACK_PACKAGE_DESCRIPTION_SUMMARY` (this is always set by CPack 
#          itself, if nothing else sets it explicitly).
#        - `PROJECT_DESCRIPTION` (this can be set with the `DESCRIPTION` 
#          parameter for `project`).
#        
# [ ] CPACK_FREEBSD_PACKAGE_WWW
#        
#        The URL of the web site for this package, preferably (when applicable) 
#        the site from which the original source can be obtained and any 
#        additional upstream documentation or information may be found.
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_PACKAGE_HOMEPAGE_URL`, or if that is not set,
#        - `CPACK_DEBIAN_PACKAGE_HOMEPAGE` (this may be set already for Debian 
#          packaging, so it is used as a fallback).
#        
# [ ] CPACK_FREEBSD_PACKAGE_LICENSE
#        
#        The license, or licenses, which apply to this software package. This 
#        must be one or more license-identifiers that pkg recognizes as 
#        acceptable license identifiers (e.g. "GPLv2").
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_RPM_PACKAGE_LICENSE`
#        
# [ ] CPACK_FREEBSD_PACKAGE_LICENSE_LOGIC
#        
#        This variable is only of importance if there is more than one license. 
#        The default is "single", which is only applicable to a single license. 
#        Other acceptable values are determined by pkg -- those are "dual" or 
#        "multi" --meaning choice (OR) or simultaneous (AND) application of the 
#        licenses.
#        
#        **Mandatory**: No
#        **Default**: single
#        
#        
# [ ] CPACK_FREEBSD_PACKAGE_MAINTAINER
#        
#        The FreeBSD maintainer (e.g. `kde@freebsd.org`) of this package.
#        
#        **Mandatory**: Yes
#        **Default**: none
#        
#        
# [ ] CPACK_FREEBSD_PACKAGE_ORIGIN
#        
#        The origin (ports label) of this package; for packages built by CPack 
#        outside of the ports system this is of less importance. The default 
#        puts the package somewhere under `misc/`, as a stopgap.
#        
#        **Mandatory**: Yes
#        **Default**: `misc/<package name>`
#        
#        
# [ ] CPACK_FREEBSD_PACKAGE_CATEGORIES
#        
#        The ports categories where this package lives (if it were to be built 
#        from ports). If none is set a single category is determined based on 
#        the package origin.
#        
#        **Mandatory**: Yes
#        **Default**: derived from `ORIGIN`
#        
#        
# [ ] CPACK_FREEBSD_PACKAGE_DEPS
#        
#        A list of package origins that should be added as package dependencies.
#        These are in the form `<category>/<packagename>`, e.g. `x11/libkonq`. 
#        No version information needs to be provided (this is not included in 
#        the manifest).
#        
#        **Mandatory**: No
#        **Default**: empty
#        
#        
