# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/blob/master/LICENSE for details.

#[=======================================================================[.md:
# My/Build - Build utilities.

This file provides an interface to [`add_custom_target`](https://cmake.org/cmake/help/latest/command/add_custom_target.html)
and [`add_custom_command`](https://cmake.org/cmake/help/latest/command/add_custom_command.html) 
using Myake's [reporting capabilities](#my_report), as well as some other tools.

## Reference

#]=======================================================================]
include_guard(GLOBAL)

include(My/Report)

#[==[.md:
### my_target

    my_target(Name [ALL] [command1 [args1...]]
        [COMMAND command2 [args2...] ...]
        [DEPENDS depend depend depend ... ]
        [BYPRODUCTS [files...]]
        [WORKING_DIRECTORY dir]
        [COMMENT comment]
        [JOB_POOL job_pool]
        [VERBATIM] [USES_TERMINAL]
        [COMMAND_EXPAND_LISTS]
        [SOURCES src1 [src2...]])

This command offers the same capability as [`add_custom_target`](https://cmake.org/cmake/help/latest/command/add_custom_target.html).
In addition, the target name is added to Myake's report (which also shows the COMMENT).

**See**:  
[`add_custom_target`](https://cmake.org/cmake/help/latest/command/add_custom_target.html)  
#]==]
macro(my_target name)
    add_custom_target(${name} ${ARGN})

    cmake_parse_arguments(__my_target "" "COMMENT" "" ${ARGN})
    my_report(My/Targets %{BR} %{50} "    ${name}" "${__my_target_COMMENT}")
endmacro()
