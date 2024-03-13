
# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack External generator
# 
# [ ] CPACK_EXTERNAL_REQUESTED_VERSIONS
#        
#        This variable is used to request a specific version of the CPack 
#        External generator. It is a list of `major.minor` values, separated by 
#        semicolons.
#        
#        If this variable is set to a non-empty value, the CPack External 
#        generator will iterate through each item in the list to search for a 
#        version that it knows how to generate. Requested versions should be 
#        listed in order of descending preference by the client software, as the
#        first matching version in the list will be generated.
#        
#        The generator knows how to generate the version if it has a versioned 
#        generator whose major version exactly matches the requested major 
#        version, and whose minor version is greater than or equal to the 
#        requested minor version. For example, if 
#        `CPACK_EXTERNAL_REQUESTED_VERSIONS` contains 1.0, and the CPack 
#        External generator knows how to generate 1.1, it will generate 1.1. If 
#        the generator doesn't know how to generate a version in the list, it 
#        skips the version and looks at the next one. If it doesn't know how to 
#        generate any of the requested versions, an error is thrown.
#        
#        If this variable is not set, or is empty, the CPack External generator 
#        will generate the highest major and minor version that it knows how to 
#        generate.
#        
#        If an invalid version is encountered in 
#        `CPACK_EXTERNAL_REQUESTED_VERSIONS` (one that doesn't match 
#        `major.minor`, where `major` and `minor` are integers), it is ignored.
#        
# [ ] CPACK_EXTERNAL_ENABLE_STAGING
#        
#        This variable can be set to true to enable optional installation into a
#        temporary staging area which can then be picked up and packaged by an 
#        external packaging tool. The top level directory used by CPack for the 
#        current packaging task is contained in `CPACK_TOPLEVEL_DIRECTORY`. It 
#        is automatically cleaned up on each run before packaging is initiated 
#        and can be used for custom temporary files required by the external 
#        packaging tool. It also contains the staging area 
#        `CPACK_TEMPORARY_DIRECTORY` into which CPack performs the installation 
#        when staging is enabled.
#        
# [ ] CPACK_EXTERNAL_PACKAGE_SCRIPT
#        
#        This variable can optionally specify the full path to a CMake script 
#        file to be run as part of the CPack invocation. It is invoked after 
#        (optional) staging took place and may run an external packaging tool. 
#        The script has access to the variables defined by the CPack config 
#        file.
#        
# [ ] CPACK_EXTERNAL_BUILT_PACKAGES
#        
#        The `CPACK_EXTERNAL_PACKAGE_SCRIPT` script may set this list variable 
#        to the full paths of generated package files. CPack will copy these 
#        files from the staging directory back to the top build directory and 
#        possibly produce checksum files if the `CPACK_PACKAGE_CHECKSUM` is set.
#        
