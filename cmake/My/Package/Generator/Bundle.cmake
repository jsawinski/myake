# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/Bundle

**See also**:
- [CPack Bundle Generator](https://cmake.org/cmake/help/latest/cpack_gen/bundle.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/Bundle...")

#[==[.md:
# my_generator_bundle

FIXME
    my_package(Bundle [COMMON]
        ...
    )

#]==]
macro(my_generator_bundle)
    message(TRACE "my_generator_bundle(${_MY_PACK_COMMON},${__MY_PACK_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()


# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack Bundle generator
# 
# [ ] CPACK_BUNDLE_NAME
#        
#        The name of the generated bundle. This appears in the macOS Finder as 
#        the bundle name. Required.
#        
# [ ] CPACK_BUNDLE_PLIST
#        
#        Path to an macOS Property List (`.plist`) file that will be used for 
#        the generated bundle. This assumes that the caller has generated or 
#        specified their own `Info.plist` file. Required.
#        
# [ ] CPACK_BUNDLE_ICON
#        
#        Path to an macOS icon file that will be used as the icon for the 
#        generated bundle. This is the icon that appears in the macOS Finder for
#        the bundle, and in the macOS dock when the bundle is opened. Required.
#        
# [ ] CPACK_BUNDLE_STARTUP_COMMAND
#        
#        Path to a startup script. This is a path to an executable or script 
#        that will be run whenever an end-user double-clicks the generated 
#        bundle in the macOS Finder. Optional.
#        
# [ ] CPACK_BUNDLE_APPLE_CERT_APP
#        
#        The name of your Apple supplied code signing certificate for the 
#        application. The name usually takes the form 
#        `Developer ID Application: [Name]` or 
#        `3rd Party Mac Developer Application: [Name]`. If this variable is not 
#        set the application will not be signed.
#        
# [ ] CPACK_BUNDLE_APPLE_ENTITLEMENTS
#        
#        The name of the Property List (`.plist`) file that contains your Apple 
#        entitlements for sandboxing your application. This file is required for
#        submission to the macOS App Store.
#        
# [ ] CPACK_BUNDLE_APPLE_CODESIGN_FILES
#        
#        A list of additional files that you wish to be signed. You do not need 
#        to list the main application folder, or the main executable. You should
#        list any frameworks and plugins that are included in your app bundle.
#        
# [ ] CPACK_BUNDLE_APPLE_CODESIGN_PARAMETER
#        
#        Additional parameter that will passed to `codesign`. Default value: 
#        `--deep -f`
#        
# [ ] CPACK_COMMAND_CODESIGN
#        
#        Path to the `codesign(1)` command used to sign applications with an 
#        Apple cert. This variable can be used to override the automatically 
#        detected command (or specify its location if the auto-detection fails 
#        to find it).
#        
