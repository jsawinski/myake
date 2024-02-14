# My/External - External data management

This module provides the infrastructure for handling external or related data
of a project during either configuration or build stage.

For example, a project uses large test files which are not suitable for source
code distribution but are essential for developers. These file may be hosted
elsewhere but may be downloaded automatically during a CMake run if testing
is enabled.

Other scenarios may include development cycle steps, such as uploading project
documentation or packages at the project build stage (such as a "upload"
target).

Note, that by including this module, user settings may be loaded from
`User/External`.

**See also**:  
[``ExternalProject``](https://cmake.org/cmake/help/latest/module/ExternalProject.html)  
[``FetchContent``](https://cmake.org/cmake/help/latest/module/FetchContent.html)

## Overview

FIXME

## Reference
### my_external

	my_external(
		<property> <property-options>...
	)

This landing function calls the respective functions for  
``SITE`` ([my_external_site](#markdown-header-my_external_site)),  
``TARGET`` ([my_external_target](#markdown-header-my_external_target)),  
``DOWNLOAD``,``VERIFY``,``UPLOAD``, ... ([my_external_command](#markdown-header-my_external_command)),  
etc.

If multiple properties should be set, brace-enclosed lists may be used:

	my_external(
		<property1> { [<property1 options>...] }
		<property2> { [<property2 options>...] }
		...
	)

The parser is not sensitive to which options appear within braces (therefore,
an empty '{ }' may also separate properties), it is, though, strongly
recommended to use essential declarative options before the brace-enclosed
option list. For example:

	my_external(
		SITE my-site-name GIT {
			<git options>...
		}

		SITE my-sub-site-name {
			USE my-site-name
			<git options>...
		}

		DOWNLOAD my-site-name {}
	)

which is identical to

	my_external_site(my-site-name GIT
		<git options>...
	)
	my_external_site(my-sub-site-name
		USE my-site-name
		<git options>...
	)
	my_external_commandwnload(my-site-name)

### my_external_site

	my_external_site(<site-name> [<method>|USE <parent-site>]
		<site settings>...
	)

FIXME

### my_external_command

	my_external_command(
		DOWNLOAD|VERIFY|UPLOAD|... <site-name> [<options>...]
	)

FIXME

## Internals
### __my_external_load

This macro loads the respective method.

The result variable (following ``include``) is ``method_found``.

### __my_external_run

This function distributes the function or macro calls to the respective
handlers.

### __my_external_capture

This function captures arguments to either the end or end of next brace-enclosed
parameter list.

