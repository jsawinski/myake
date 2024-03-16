# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Package/Generator/Cygwin

**See also**:
- [CPack Cygwin Generator](https://cmake.org/cmake/help/latest/cpack_gen/cygwin.html)
#]=======================================================================]
include_guard(GLOBAL)

message(TRACE "Loaded My/Package/Generator/Cygwin...")

#[==[.md:
# my_generator_cygwin

FIXME
    my_package(Cygwin [COMMON]
        ...
    )

#]==]
macro(my_generator_cygwin)
    message(TRACE "my_generator_cygwin(${_MY_PACK_COMMON},${__MY_PACK_ARGS})")
    list(APPEND CMAKE_MESSAGE_INDENT "    ")

    list(POP_BACK CMAKE_MESSAGE_INDENT)
endmacro()


# The following text was auto-generated from CPack's help files:
# 
# === Variables specific to CPack Cygwin generator
# 
# [ ] CPACK_CYGWIN_PATCH_NUMBER
#        
#        The Cygwin patch number. FIXME: This documentation is incomplete.
#        
# [ ] CPACK_CYGWIN_PATCH_FILE
#        
#        The Cygwin patch file. FIXME: This documentation is incomplete.
#        
# [ ] CPACK_CYGWIN_BUILD_SCRIPT
#        
#        The Cygwin build script. FIXME: This documentation is incomplete.
#        
