# My/Build - Build utilities.

This file provides an interface to [`add_custom_target`](https://cmake.org/cmake/help/latest/command/add_custom_target.html)
and [`add_custom_command`](https://cmake.org/cmake/help/latest/command/add_custom_command.html) using Myake's
[reporting capabilities](Report.md#markdown-header-my_report), as well as some other tools.

## Reference

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

**See also**:
- [`add_custom_target`](https://cmake.org/cmake/help/latest/command/add_custom_target.html)
