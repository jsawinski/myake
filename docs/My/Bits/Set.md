# My/Bits/Set - Extensions to CMake's set and related commands

Some programming patterns with respect to CMake ``set`` are recurring
frequently, such as, for example, setting a variable only if it is not yet set
(read defined) previously. Here, we extend the ``set``, as well as the
accompanying commands ``unset`` and ``list``, by such features.

## Reference
### my_set

	my_set(<variable> <value>
		[UNSET]
		[PARENT_SCOPE]
		[FORCE]
		[CACHE AUTO|<type> [<docstring>]] [FORCE]]
		[ONCE
			[FATAL_ERROR "message"]
			[WARNING "warning message"]]
		[MODIFIED <outvar>]
	)

This macro is an extended version of CMake's `set`.

``UNSET`` indicates, that the variable should be cleared (see
[`my_unset`](Utils.md#markdown-header-my_unset)).

``PARENT_SCOPE`` indicates, that the variable will be set in the scope above
the current scope.

``CACHE`` will set or update a cache entry. If ``AUTO`` is provided it
determines the type (and docstring) of the existing cache entry, otherwise the
type defaults to INTERNAL (and the docstring to "undocumented").

``FORCE`` indicates that a cache value update should be enforced. This option
is ignored for normal variables.

``ONCE`` indicates that an already defined ``<variable>`` should not be changed.
If defined, either a ``FATAL_ERROR`` or ``WARNING`` message can be printed.

``MODIFIED`` will return ``TRUE`` if the variable was changed by this set
command.

**See**:
- [`my_unset`](Utils.md#markdown-header-my_unset)
- [`my_list`](Utils.md#markdown-header-my_list)
### my_unset

	my_unset(<variable> ...)

Unset a variable. This macro internally only calls [my_set](Utils.md#markdown-header-my_set)
### my_list

	my_list(<operation> <list> ... [UNIQUE] [PARENT_SCOPE])
	my_list(FRONT <list> ...)
	my_list(MODIFY <list> ...)

This macro extends the standard CMake ``list`` command with some operations.

After modification this function calls [`my_set`](Utils.md#markdown-header-my_set)
to ensure that CACHE variables are updated.

Option ``UNIQUE`` indicates, that duplicates should be automatically removed.
Option ``PARENT_SCOPE`` indicates, that the list operations should be
propagated to parent scope.

#### ``FRONT``

	my_list(FRONT <list> <out-var>...)

In addition to standard list features, ``FRONT`` behaves akin to ``POP_FRONT``,
except that it will not remove elements from the list.

#### ``MODIFY``

	my_list(MODIFY <list> REMOVE [REGEX] <pattern>)
	my_list(MODIFY <list> REPLACE [REGEX] <pattern> <value>)
	my_list(MODIFY <list> APPEND <value>)

Option ``REMOVE`` removes a pattern from the list.

Option ``REPLACE`` replaces a pattern from the list with a value.

Option ``APPEND`` appends a value.

Option ``REGEX`` indicates that regular expression matching instead of string
equality should be used for pattern matching.

**See**:
- [`my_set`](Utils.md#markdown-header-my_set)
