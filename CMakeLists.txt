set(MYAKE_MINIMUM_MAJOR_VERSION 3)
set(MYAKE_MINIMUM_MINOR_VERSION 22)
cmake_minimum_required(VERSION ${MYAKE_MINIMUM_MAJOR_VERSION}.${MYAKE_MINIMUM_MINOR_VERSION})

set(PROJECT_UUID ede87400-1aad-11eb-86e2-195d0dbedd04)
set(PROJECT_VENDOR myake)

set(MY_INSTALL_STYLE_INIT System)

list(PREPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include(My/Init)
project(Myake
    VERSION 0.15.0
    LANGUAGES NONE)
include(My/Config)

if(NOT DEFINED CMAKE_INSTALL_DATAROOTDIR)
	if(UNIX AND NOT APPLE AND NOT WIN32)
		set(CMAKE_INSTALL_DATAROOTDIR share)
	endif()
endif()

if(UNIX AND NOT APPLE AND NOT WIN32)
	set(CMAKE_INSTALL_DATADIR ${CMAKE_INSTALL_DATAROOTDIR}/cmake/Myake)
	set(CMAKE_INSTALL_DOCDIR ${CMAKE_INSTALL_DATAROOTDIR}/doc/myake)
elseif(WIN32)
	set(CMAKE_INSTALL_DATADIR ${CMAKE_INSTALL_DATAROOTDIR}/Myake/cmake)
	set(CMAKE_INSTALL_DOCDIR ${CMAKE_INSTALL_DATAROOTDIR}/Myake/doc)
elseif(APPLE)
	set(CMAKE_INSTALL_DATADIR ${CMAKE_INSTALL_DATAROOTDIR}/Myake.framework/Resources)
	set(CMAKE_INSTALL_DOCDIR ${CMAKE_INSTALL_DATAROOTDIR}/Myake.framework/Documentation) # FIXME ???
else()
	set(CMAKE_INSTALL_DATADIR ${CMAKE_INSTALL_DATAROOTDIR}/Myake)
	set(CMAKE_INSTALL_DOCDIR ${CMAKE_INSTALL_DATAROOTDIR}/Myake/doc)
	message(AUTHOR_WARNING "Installation path defaults to: ${MYAKE_INSTALL_DIR}")
	# FIXME add feature/bug page to warning
endif()

set(CMAKE_INSTALL_DEFAULT_COMPONENT_NAME devel)

add_subdirectory(cmake)
add_subdirectory(tools)
add_subdirectory(docs)

install(FILES
    LICENSE
    README.md
    DESTINATION ${CMAKE_INSTALL_DOCDIR})

# package
include(My/Package)
my_package(
	ARCHITECTURE all
    CONTACT 
        "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"
    AUTHORS
    	"Jürgen 'George' Sawinski"
    	"Florian Franzen"
   	CATEGORY "Development"
    DESCRIPTION {
	    SUMMARY "CMake configuration personalization and utilities."
        FULL "\
Myake is an set of macros extending [CMake](https://cmake.org). It provides
three main features:

Personalized building:
When using Myake it is possible to store common and per-project CMake settings 
outside the source tree. Common settings may, for example, be standard compiler 
options (like -Wextra for gcc/clang compiler suites). Also, Myake provides
a style-based installation prefix selection (such as MY_INSTALL_STYLE=Local,
which will cause installation in an user-local path).

Packaging:
Myake provides a simplified approach for ``CPack``. Code authors may, then, 
provide settings common to all package generators and leave specific settings 
to maintainers.

Publishing:
Myake provides macros for dealing with external sites, provides down- and 
upload mechanisms, including source code revision suites, and more.

In addition, a flexible configuration report mechanism is introduced."
	}

    LICENSE "MIT" {
        FILE ${Myake_SOURCE_DIR}/LICENSE
   	}

    URL {
		# ABOUT
        HOMEPAGE "https://github.com/jsawinski/myake"
		HELP "https://jsawinski.github.io/${PROJECT_UUID}/"
		ICON "https://raw.githubusercontent.com/jsawinski/myake/master/docs/myake.png"
		LICENSE "https://raw.githubusercontent.com/jsawinski/myake/master/LICENSE"
	}

    SOURCE {
    	IGNORE_FILES
    		DEFAULTS
    		/build/
			/.myake/
    		/\\.gitignore\$

    	SUFFIX "source"
    }

    CHECKSUM SHA1
)

include(Package/All)

# final
include(My/Lists)
