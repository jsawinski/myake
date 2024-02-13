# Distributed under the OSI-approved MIT License. See accompanying
# file LICENSE or https://github.com/jsawinski/myake/src/master/LICENSE for details.

include_guard(GLOBAL)

include(My/Platform/Unix/Util)

# MY_USER_HOME
set(MY_USER_HOME "$ENV{HOME}" CACHE PATH "User's home folder.")

set(MY_INSTALL_STYLE_LIST
	System
	Package
	Provider
	User
	Local
)

# style prefixes
set(MY_SYSTEM_PREFIX "/usr" CACHE INTERNAL "Standard system installation prefix.")
set(MY_PACKAGE_PREFIX "/opt/$<PROJECT_NAME>" CACHE INTERNAL "Package style installation prefix.")
set(MY_PROVIDER_PREFIX "/opt/${PROJECT_VENDOR}/$<PROJECT_NAME>" CACHE INTERNAL "Provider or vendor style installation prefix.")
set(MY_LOCAL_PREFIX "/usr/local" CACHE INTERNAL "Local system installation prefix.")

if(DEFINED MY_PROVIDER_PREFIX)
	if(NOT DEFINED PROJECT_VENDOR)
		unset(MY_PROVIDER_PREFIX CACHE)
		my_list(MODIFY MY_INSTALL_STYLE_LIST REMOVE "Provider")
	endif()
endif()

# distribution
my_unix_distribution_info(MY_DISTRIBUTION_NAME MY_DISTRIBUTION_VERSION MY_DISTRIBUTION_CODENAME MY_DISTRIBUTION_ARCHITECTURE)
if(MY_DISTRIBUTION_NAME)
	include(My/Platform/Distribution/${MY_DISTRIBUTION_NAME})
endif()

# report
my_report(My/Platform %{BR} "Loaded common platform settings: 'Unix'.")
