# My/Bits/String - String utilities.

This modules provides a couple of extensions to CMake's string handling
functions, such as very simply ([fmtlib](https://github.com/fmtlib/fmt) 
inspired) string formatting capabilities. This formatting is extensively 
used in the [report generator](../Report.md).

## Reference
### my_substring

    my_substring(<output-variable> <from> <to> "<text>")

Get a substring by indexes (starting from 0). Negative indexes are counted from 
one after the last character.

### my_titlecase

    my_titlecase(<output-variable> "<text>")

Make all words "titlecase". 

### my_string_genex_expand

    my_string_genex_expand(<output-variable> "<string>")

Expand generator expressions in a string.

At the moment of writing, only variable queries.

### my_string_format

    my_string_format(<prefix> [<arguments>...])

Format a string (and return parsing results).

If the first argument is a format string (of the form 
'%{<format-declaration>}'), result variables will be assigned. 
Extraneous arguments are ignored.

Common result variables:
    <prefix>_TYPE             Formatting type.
    <prefix>_ARGC            Format argument-count.
    <prefix>_FORMAT         The formatting instruction.
    <prefix>_TEXT            Formatting result.

In addition, ``TYPE`` dependent formatting settings will be set. If the format 
declaration is not recognized, ``TYPE`` will be set to ``EXTERNAL`` allowing 
further elements to be parsed (see e.g. [my_report](../Report.md)).

**Formatting**:

    %{<alignment>} "text..."

where alignment may use a symbol for horizontal alignment:

    <   left aligned (default),
    ^   centered, and,
    >   right aligned

followed by the width.

#### Internal
##### __my_string_format_align

    __my_string_format_align(<outvar> <align> <width> "<text>...")

