# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/NuGet

**See also**:
- [CPack NuGet Generator](https://cmake.org/cmake/help/latest/cpack_gen/nuget.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/NuGet...")

#[==[.md:
# my_generator_nuget

FIXME
    my_package(NuGet [COMMON]
        ...
    )

#]==]
macro(my_generator_nuget)
    message(TRACE "my_generator_nuget(${_MY_PACK_COMMON},${__MY_PACK_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()


# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack NuGet generator
# 
# [ ] CPACK_NUGET_COMPONENT_INSTALL
#        
#        Enable component packaging for CPack NuGet generator
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_NAME
# [ ] CPACK_NUGET_PACKAGE_NAME
#        
#        The NUGET package name. `CPACK_NUGET_PACKAGE_NAME` is used as the 
#        package `id` on [nuget.org](https://www.nuget.org)]
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_NAME`
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_VERSION
# [ ] CPACK_NUGET_PACKAGE_VERSION
#        
#        The NuGet package version.
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_VERSION`
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_DESCRIPTION
# [ ] CPACK_NUGET_PACKAGE_DESCRIPTION
#        
#        A long description of the package for UI display.
#        
#        **Mandatory**: Yes
#        **Default**: 
#        
#        - `CPACK_COMPONENT_<compName>_DESCRIPTION`,
#        - `!CPACK_COMPONENT_GROUP_<groupName>_DESCRIPTION`,
#        - `CPACK_PACKAGE_DESCRIPTION`
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_AUTHORS
# [ ] CPACK_NUGET_PACKAGE_AUTHORS
#        
#        A comma-separated list of packages authors, matching the profile names 
#        on [nuget.org](https://www.nuget.org)]. These are displayed in the 
#        NuGet Gallery on [nuget.org](https://www.nuget.org)] and are used to 
#        cross-reference packages by the same authors.
#        
#        **Mandatory**: Yes
#        **Default**: `CPACK_PACKAGE_VENDOR`
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_TITLE
# [ ] CPACK_NUGET_PACKAGE_TITLE
#        
#        A human-friendly title of the package, typically used in UI displays as
#        on [nuget.org](https://www.nuget.org)] and the Package Manager in 
#        Visual Studio. If not specified, the package ID is used.
#        
#        **Mandatory**: No
#        **Default**: 
#        
#        - `CPACK_COMPONENT_<compName>_DISPLAY_NAME`,
#        - `!CPACK_COMPONENT_GROUP_<groupName>_DISPLAY_NAME`
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_OWNERS
# [ ] CPACK_NUGET_PACKAGE_OWNERS
#        
#        A comma-separated list of the package creators using profile names on 
#        [nuget.org](https://www.nuget.org)]. This is often the same list as in 
#        authors, and is ignored when uploading the package to 
#        [nuget.org](https://www.nuget.org)].
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_HOMEPAGE_URL
# [ ] CPACK_NUGET_PACKAGE_HOMEPAGE_URL
#        
#        An URL for the package's home page, often shown in UI displays as well 
#        as [nuget.org](https://www.nuget.org)].
#        
#        **Mandatory**: No
#        **Default**: `CPACK_PACKAGE_HOMEPAGE_URL`
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_LICENSEURL
# [ ] CPACK_NUGET_PACKAGE_LICENSEURL
#        
#        **Deprecated**: 
#            
#            3.20 Use a local license file (
#            `CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME`) or a 
#            [SPDX license identifier](https://spdx.org/licenses)] (
#            `CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION`) instead.
#        
#        An URL for the package's license, often shown in UI displays as well as
#        on [nuget.org](https://www.nuget.org)].
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_LICENSE_EXPRESSION
# [ ] CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION
#        
#        A Software Package Data Exchange 
#        [SPDX license identifier](https://spdx.org/licenses)] such as `MIT`, 
#        `BSD-3-Clause`, or `LGPL-3.0-or-later`. In the case of a choice of 
#        licenses or more complex restrictions, compound license expressions may
#        be formed using boolean operators, for example `MIT OR BSD-3-Clause`. 
#        See the 
#        [SPDX specification](https://spdx.github.io/spdx-spec/v2.3/SPDX-license-expressions)]
#        for guidance on forming complex license expressions.
#        
#        If `CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME` is specified, 
#        `!CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION` is ignored.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_LICENSE_FILE_NAME
# [ ] CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME
#        
#        The package's license file in `.txt` or `.md` format.
#        
#        If `!CPACK_NUGET_PACKAGE_LICENSE_FILE_NAME` is specified, 
#        `!CPACK_NUGET_PACKAGE_LICENSE_EXPRESSION` is ignored.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_ICONURL
# [ ] CPACK_NUGET_PACKAGE_ICONURL
#        
#        **Deprecated**: 
#            
#            3.20 Use a local icon file (`CPACK_NUGET_PACKAGE_ICON`) instead.
#        
#        An URL for a 64x64 image with transparency background to use as the 
#        icon for the package in UI display.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_PACKAGE_REQUIRE_LICENSE_ACCEPTANCE
#        
#        When set to a true value, the user will be prompted to accept the 
#        license before installing the package.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_ICON
# [ ] CPACK_NUGET_PACKAGE_ICON
#        
#        The filename of a 64x64 image with transparency background to use as 
#        the icon for the package in UI display.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_DESCRIPTION_SUMMARY
# [ ] CPACK_NUGET_PACKAGE_DESCRIPTION_SUMMARY
#        
#        A short description of the package for UI display. If omitted, a 
#        truncated version of description is used.
#        
#        **Mandatory**: No
#        **Default**: `CPACK_PACKAGE_DESCRIPTION_SUMMARY`
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_RELEASE_NOTES
# [ ] CPACK_NUGET_PACKAGE_RELEASE_NOTES
#        
#        A description of the changes made in this release of the package, often
#        used in UI like the Updates tab of the Visual Studio Package Manager in
#        place of the package description.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_COPYRIGHT
# [ ] CPACK_NUGET_PACKAGE_COPYRIGHT
#        
#        Copyright details for the package.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_LANGUAGE
# [ ] CPACK_NUGET_PACKAGE_LANGUAGE
#        
#        Locale specifier for the package, for example `en_CA`.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_TAGS
# [ ] CPACK_NUGET_PACKAGE_TAGS
#        
#        A space-delimited list of tags and keywords that describe the package 
#        and aid discoverability of packages through search and filtering.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_PACKAGE_DEPENDENCIES
# [ ] CPACK_NUGET_PACKAGE_DEPENDENCIES
#        
#        A list of package dependencies.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_<compName>_
# [ ] CPACK_NUGET_PACKAGE_DEPENDENCIES_<dependency>_VERSION
# [ ] PACKAGE_DEPENDENCIES_<dependency>_VERSION
#        
#        A 
#        [version specification](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning#version-ranges)]
#        for the particular dependency, where `<dependency>` is an item of the 
#        dependency list (see above) transformed with 
#        `string(MAKE_C_IDENTIFIER)` command.
#        
#        **Mandatory**: No
#        **Default**: None
#        
#        
# [ ] CPACK_NUGET_PACKAGE_DEBUG
#        
#        Enable debug messages while executing CPack NuGet generator.
#        
#        **Mandatory**: No
#        **Default**: `OFF`
#        
#        
