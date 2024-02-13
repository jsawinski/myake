# My/Bits/Auxiliary - Auxiliary tools.

## Reference
## my_add_cmake_module_path

	my_add_cmake_module_path([PREPEND] <paths>...)

Uniquely append or prepend (if ``PREPEND`` is given) paths to ``CMAKE_MODULE_PATH``.

### my_set_cache_property_strings

	my_set_cache_property_strings(<variable> <string-list...>)

Sets the strings property of a cached variable.

This is mostly useful for the CMake UI which presents a dropdown-menu if
this property is set.

### my_get_cache_property_strings

	my_get_cache_property_strings(<variable> <result>)

Retrieve the strings property of a cached ``<variable>`` and assign it
to the ``<result>``-variable.

### my_add_cache_property_strings

	my_add_cache_property_strings(<variable> <string-list...>)

Add strings to the property of a cached ``<variable>``.

