# My/Bits/Options - Hierarchical argument parsing

CMake's [standard argument parser](https://cmake.org/cmake/help/latest/command/cmake_parse_arguments.html) 
might be adequate in most cases, but quite limited. Here, Myake provides a 
parser allowing tree-like structures.

## Reference
### my_structure_parse

Declare a parser template:

    my_structure_parse(TEMPLATE <prefix> 
        <template-declaration>
    }

Parse a structure:

    my_structure_parse(<prefix> 
        [RESET|REPLACE] 
        [NODEFAULTS]
        [TEMPLATE <key>]
        <arguments>...
    }

See the [structure test](https://github.com/jsawinski/myake/blob/master/tests/Test/Structure.cmake)
for an example.

#### Structure parsing

A structure, in contrast to linear lists of arguments, uses additional
decoration (braces) to distinguish blocks:

    OPTION
    VARIABLE "value"
    MULTIVARIABLE "a" "b" "c"
    BLOCK {
        OPTION
    }

with translates to (omitting a prefix):

    set(OPTION TRUE)
    set(VARIABLE "value")
    set(MULTIVARIABLE "a" "b" "c")
    set(BLOCK_OPTION TRUE)

When a template is provided, in addition, named blocks are provided.
For example

    BLOCK "name" {
        VARIABLE "value"
    }

then translates to

    set(BRANCH_name_VARIABLE "value")

and a BRANCH_ALL list is created which will contain "name".

It is even possible (see next paragraph) to implement nested blocks.

**Options**:

`RESET` will unset all variables starting with `<prefix>_`. In case a 
template is provided, only those, that are handled by the template.

`REPLACE` will only reset given keys, otherwise, `my_structure_parse` will
append them.

`NODEFAULTS` instructs the parser to ignore default values given in the 
template.

`TEMPLATE <key>` will instruct the parser to adhere to the given template.

#### Template declaration

The general format of a template declaration is this:

    <VARIABLE>:[<PARAMETER>][=<VALUE>]

`<VARIABLE>` is an upper-case identifier ("^[A-Z][A-Z]+$"), 

`<PARAMETER>` is 
`-` for an option (boolean flag as with `cmake_parse_arguments`),
`*` for multi-argument variables,
`<number>` for defined number of variable arguments.
If ommited, a single argument is expected.

Optionally a default `<VALUE>` can be provided.

Unnamed groups are declared using

    <BLOCK>:- {
        <...>
    }

while named groups use

    <BLOCK>: {
        <...>
    }

Nested groups support a linking mechanism, declared by

    [@<LINK>-><KEY>]

This instructs the parser to assign the blocks name in the `<LINK>` block
as `<...>_<KEY>`.

See the [structure test](https://github.com/jsawinski/myake/blob/master/tests/Test/Structure.cmake)
for an example.

## Internals
### __my_structure_template

This macro parses the template definition.

### __my_structure_parse

This macro parses options.

### __my_structure_reset

This macro resets options.

### __my_structure_get

    __my_structure_get(<variable-name> <glue> <...>)

Helper to retrieve a template or data value    
### __my_structure_set

    __my_structure_set(<value> <glue> <...>)

Helper to assign a template or data value    
### __my_structure_set

    __my_structure_set(<value> <glue> <...>)

Helper to add a template or data value    
### __my_structure_unset

    __my_structure_set(<glue> <...>)

Helper to clear a template or data value    
