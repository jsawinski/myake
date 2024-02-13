# My/Bits/Options - Hierarchical argument parsing

CMake's [standard argument parser](https://cmake.org/cmake/help/latest/command/cmake_parse_arguments.html) 
might be adequate in most cases, but quite limited. Here, Myake provides a 
parser allowing tree-like structures.

## Reference
### my_options_parse

	my_options_parse(<prefix> [RESET|REPLACE] [NODEFAULTS]
		[OPTIONS <key> [{
			<option-declaration>
		}]]
		<arguments>...
	}

Parse arguments automatically or using given options.

Option `RESET` indicates (only available if `OPTIONS` is given), that all 
result variables should be cleared.

Option `REPLACE` indicates, that variable results should be replaced and not 
appended.

Option `NODEFAULTS` indicates, that defaults from `OPTIONS` should not be 
assigned.

If `OPTIONS` is given, arguments are parsed according to given definition.

#### Options format

The general format for option declarations is:

	<name>:[<argn>][{ ... }][=<default>]

The ``name`` is expected to be an upper-case option key. The number of 
arguments following an option can be `-` (for none, equivalent of a 
``cmake_parse_arguments`` option), `[<number>]` (for a specified number of 
arguments), and, `*` (for multi-argument list in cmake_parse_arguments terms). 
If omitted, the default is a single argument.

Hierarchical declarations follow enclosed in curly braces.

To capture brace-enclosed contents, e.g. for later processing, use

	<name>:{}

The optional default value appears last, separated by an equal sign. To avoid 
ambiguities, a list can be written using space-separated items enclosed in 
curly braces.

#### Example

FIXME

	my_options_parse(OPTIONS __TEST_MY_PACKAGE_BASE__
		{
			NAME:="$<PROJECT_NAME>"
			VENDOR:
			VERSION:="${PROJECT_VERSION}"
			DESCRIPTION:{
				FILE:
				FULL:
				SUMMARY:
				README:
				WELCOME:
			}
			LICENSE:[1]{
				FILE:
			}
			ARCHITECTURE:
			CONTACT:
			AUTHORS:*{
				FILE:
			}
			CATEGORY:
			URL:{
				HOMEPAGE:
				ABOUT:
				HELP:
				ICON:
				LICENSE:
			}
			ICON:{
				FILE:
				INSTALL:
				UNINSTALL:
			}
			SOURCE:{
				CONFIG:
				NAME:="$<NAME>-$<SUFFIX>"
				GENERATOR:*={ ZIP }
				SUFFIX:=source
				STRIP_FILES:*
				IGNORE_FILES:*={ DEFAULTS }
				FILE_NAME:="$<NAME>-$<VERSION>-$<SUFFIX>"
			}
			CHECKSUM:
			CONFIG:
			GENERATOR:*=ZIP
			FILE_NAME:="$<NAME>-$<VERSION>"
			TARGET:
		}
	)

	my_options_parse(TEST_MY_PKG RESET OPTIONS __TEST_MY_PACKAGE_BASE__
		VENDOR "${PROJECT_VENDOR}"
		VERSION "${Myake_VERSION}"
		ARCHITECTURE all
	    CONTACT "Jürgen 'George' Sawinski <juergen.sawinski@gmail.com>"
	    AUTHORS
	    	"Jürgen 'George' Sawinski"
	    	"Florian Franzen"
	   	CATEGORY "Development"
	    DESCRIPTION {
		    SUMMARY "CMake configuration personalization and utilities."
	        FULL "\
	Building software from scratch (as well as developing or maintaining 
	software) generally follows the same pattern: configuring, building, and, 
	installing or packaging. Especially when developing or contributing to 
	several software projects the configuration and installation (or packaging) 
	step may involve repetitively tweaking configuration options suitable for 
	the developer's or the target machine's setup.

	Myake offers to reduce much of this dance by introducing a 'personalized' 
	configuration system (i.e. it is possible to store additional global or 
	per-project settings in the user's home folder), and, as well, provides a 
	simplified interface for package generation and methods for uploading 
	packages and documentation."
		}

	    LICENSE "MIT" {
	        FILE ${Myake_SOURCE_DIR}/LICENSE
	   	}

	    URL {
	        HOMEPAGE "https://github.com/jsawinski/myake"
	    }

	    SOURCE {
	    	IGNORE_FILES
	    		DEFAULTS
	    		/  .gitignore\$
	    		/  .project\$
	    		/_ATTIC_/
	    		/test/
		    	SUFFIX "source"
	    }

	    CHECKSUM SHA1
	)

### my_options_capture

	my_options_capture(<list> <output-variable>)

This function parses a list and captures brace-enclosed settings.
## Internals
##### __my_options_key_regex

Regular expression for identifying option keys ("^[A-Z]([A-Z_]*[A-Z])?$").

##### __my_options_cache

Parse and cache options definition.

##### __my_options_tag

Utility for assembling a variable tag.

##### __my_options_reset

FIXME

##### __my_options_set_defaults

	__my_options_set_defaults()

This macro sets defaults given by `OPTIONS` parameter.

##### __my_options_parse

	__my_options_parse

This macro does the actual argument parsing.

##### __my_options_next

Get next argument.

Used by [__my_options_parse](#markdown-header-__my_options_parse).

##### __my_options_check

Check if "${item}" is a key, and if OPTIONS was used (ie. optkey is set), set 
optvar.

Used by [__my_options_parse](#markdown-header-__my_options_parse).

