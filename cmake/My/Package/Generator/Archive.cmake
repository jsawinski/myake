# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/Archive

**See also**:
- [CPack Archive Generator](https://cmake.org/cmake/help/latest/cpack_gen/archive.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/Archive...")

my_structure_parse(TEMPLATE MY_PACK_ARCHIVE USE MY_PACK_COMMON
    FILE:-{
        EXTENSION:
    }
)

#[==[.md:
# my_generator_archive

    my_package(Archive [COMMON]
        [<package options>...]
    )

Create binary and source archive files.

#]==]
function(my_generator_archive)
    message(TRACE "my_generator_archive(${_MY_PACK_COMMON},${__MY_PACK_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    
    if(NOT DEFINED __MY_PACK_COMMON)
    endif()

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

# defaults
set(CPACK_ARCHIVE_THREADS 0)

# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack Archive generator
# 
# [x] CPACK_ARCHIVE_FILE_NAME
# [x] CPACK_ARCHIVE_<component>_FILE_NAME
#        
#        Package file name without extension.
#        
#        **Default**: The default is `<CPACK_PACKAGE_FILE_NAME>[-<component>]`, 
#            with spaces replaced by '-'.
#        
#        The extension is determined from the archive format (see list above) 
#        and automatically appended to the file name. Note that `<component>` is
#        all uppercase in the variable name.
#        
# [x] CPACK_ARCHIVE_FILE_EXTENSION
#        
#        Package file extension.
#        
#        **Default**: Default values are given in the list above.
#        
#        
# [x] CPACK_ARCHIVE_COMPONENT_INSTALL
#        
#        Enable component packaging.
#        
#        **Default**: `OFF`
#        
#        If enabled (`ON`) multiple packages are generated. By default a single 
#        package containing files of all components is generated.
#        
# The following text was auto-generated from CPack's help files:
# 
# === Variables used by CPack Archive generator
# 
# [ ] CPACK_ARCHIVE_THREADS
