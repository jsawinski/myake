# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

#[=======================================================================[.md:
# My/Lists - Personalized configuration.

This file should be included at the end of the `CMakeLists.txt` file:

	include(My/Lists OPTIONAL)

In addition to loading `User/Lists`, a report about Myake's settings is generated.

**See**:  
[My/Init](Init.md)  
[My/Config](Config.md)  
[My/Report](Report.md)  
#]=======================================================================]

# load global user init
include(User/Lists OPTIONAL)

# generate report
my_report(SHOW)
