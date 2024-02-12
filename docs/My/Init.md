# My/Init - Initialization

This module initializes Myake and loads the users `User/Init`.

Use the following two lines

	find_package(Myake QUIET)
	include(My/Init OPTIONAL)

before the ``project`` command.

Note, that the keyword ``OPTIONAL`` is essential in case /Myake/ is not
installed on the target system so that the project will configure and build
without.

If `Myake` is present, discovered settings are recorded in a report file
(use ``MY_REPORT=My cmake .`` from your build directory).

The author uses the following ``User/Init`` (see MY_USER_PATHS in the report
file):

	message(NOTICE "Using User/Init")
	list(APPEND CMAKE_MODULE_PATH "$ENV{HOME}/build/.settings")
	include(Project/Init)

Alternatively, if the directory ``.myake`` is present in the projects top
source directory, the file is loaded from this directory.

**See also**:  
[My/Platform](Platform.md)  
[My/Config](Config.md)  
[My/Lists](Lists.md)  
[My/Report](Report.md)
