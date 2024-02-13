# Myake documentation

## Usage

The general skeleton for a `CMakeLists.txt` file taking advantage of Myake is:

	cmake_minimum_required(3.22)
	
	find_package(Myake QUIET)
	include(My/Init OPTIONAL)
	project(<...>)
	include(My/Config OPTIONAL)

	<...>

	if(Myake_FOUND)
		# ...
	endif()

	include(My/Lists OPTIONAL)

Here, []`My/Init`](Init.md) will initialize and []`My/Config`](Config.md) will 
configure Myake and, as well, load user specific settings from `User/Init` and 
`User\Config`, respectively, which can be used to store personalized settings. 
In the sameway, [`My/Lists`](List.md) (which is recommend to appear at the end 
of the file) loads `User/Lists`, which can be used to add additional configuration, 
such as package generator options. Note, that `OPTIONAL` must be used as Myake 
is not necessarily installed nor it's CMake version requirements are satisfied 
(at the time of writing Myake requires CMake version 3.22 or above).

## Reference

**Utilities**

[My/Bits](Bits.md)\n
[My/Platform](Platform.md)\n
[My/Build](Build.md)\n
[My/Report](Report.md)

**Personalized building**

[My/Init](Init.md)\n
[My/Config](Config.md)\n
[My/Lists](Lists.md)

**Packaging**

[My/Package](Package.md)

**Publishing**

[My/External](External.md)
