# Myake documentation

## Usage

The general skeleton for a `CMakeLists.txt` file taking advantage of Myake is:

	cmake_minimum_required(3.22)

	<...>

	find_package(Myake QUIET)
	project(<...>)

	<...>

When `find_package(Myake QUIET)` is placed before the `project` command,
Myake will use CMake's code injection facility to load [`My/Init`](Init.md) 
before and [`My/Config`](Config.md) during the 'project()' commands execution
using the variables CMAKE_PROJECT_INCLUDE and CMAKE_PROJECT_INCLUDE_BEFORE
(see [Code Injection](https://cmake.org/cmake/help/latest/command/project.html#code-injection)).

To support the simplified packaging provided by Myake, developers are 
encouraged to add 

	if(Myake_FOUND)
		# ...
	endif()
	include(My/Lists OPTIONAL)

at the end of the CMakeLists.txt file (see [`My/Lists`](Lists.md) for 
further information).

## Includes

**Utilities**

[My/Bits](Bits.md)  
[My/Platform](Platform.md)  
[My/Build](Build.md)  
[My/Report](Report.md)

**Personalized building**

[My/Init](Init.md)  
[My/Config](Config.md)  
[My/Lists](Lists.md)

**Packaging**

[My/Package](Package.md)  

**External sites**

[My/External](External.md)  
