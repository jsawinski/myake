# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/Archive

**See also**:
- [CPack Archive Generator](https://cmake.org/cmake/help/latest/cpack_gen/archive.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/Archive...")

#[==[.md:
# my_generator_archive

    my_package(Archive [COMMON]
        [TARGET <target-suffix>]
        [MAINTAINER <package-maintainer-email>]
        [<common package options>...]
    )

Create binary and source archive files.

#]==]
function(my_generator_archive)
    message(TRACE "my_generator_archive(${__MY_PACKAGE_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endfunction()

# === Variables specific to CPack Archive generator
# 
# [ ] CPACK_ARCHIVE_FILE_NAME
# [ ] CPACK_ARCHIVE_<component>_FILE_NAME
# 
# 
# [ ] CPACK_ARCHIVE_FILE_EXTENSION
# 
# 
# [ ] CPACK_ARCHIVE_COMPONENT_INSTALL
# 
# 
# === Variables used by CPack Archive generator
# 
# [ ] CPACK_ARCHIVE_THREADS
# 
# 
