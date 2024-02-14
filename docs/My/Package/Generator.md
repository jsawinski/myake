# My/Package/Generator

This module provides an interface to handling CPack generators.

At time of writing, these package generators are (actively) supported:

    [x] [Archive](Generator/Archive.md) Generator
    [ ] Bundle Generator
    [ ] Cygwin Generator
    [x] [DEB](Generator/DEB.md) Generator
    [ ] DragNDrop Generator
    [ ] External Generator
    [ ] FreeBSD Generator
    [ ] IFW Generator
    [ ] Nullsoft (NSIS) Generator
    [ ] NuGet Generator
    [ ] PackageMaker Generator
    [ ] productbuild Generator
    [ ] RPM Generator
    [ ] WIX Generator

## Reference
### my_generator_category

    my_generator_category(<output-variable> <cpack-generator>)

Get generator category and assign it to the <output-variable>.

Known generator categories are:

    Archive (7Z, TBZ2, TGZ, TXZ, TZ, TZST, and, ZIP),
    Bundle,
    Cygwin,
    DEB,
    DragNDrop,
    External,
    FreeBSD,
    IFW,
    Nullsoft (NSIS and NSIS64),
    NuGet,
    PackageMaker,
    productbuild,
    RPM, and,
    WIX.

**See also**:
- [my_package](../Package.md#markdown-header-my_package)
### my_generator_handle

    my_generator_handle(<generator-category>)

Divert calls to respective generator macro.

This macro is only used by [my_package](../Package.md#markdown-header-my_package).

### my_generator_reset

    my_generator_reset()

Reset all CPACK* variables.
### my_generator_iscommon

    my_generator_iscommon(outvar)

Check if options are `COMMON` (first arguments after generator category).

### my_generator_config

    my_generator_config(
        [VARIABLES <variable-prefix>...]
        [TEMPLATES <template-patterns>...]
        [GET <output-variable> <pattern>]
        [POPULATE <variable> <pattern>[=<source-pattern>] ...]
    )

Setup, access and process generator settings.

Option `VARIABLES` sets the hierarchy of variables to retrieve package
information. Common package options are included by default. This value is
stored in the ``MY_GENERATOR_CONFIG_VARIABLES``.

Option `TEMPLATES` stores template patterns (e.g. NAME). As with VARIABLES,
this is stored in ``MY_GENERATOR_CONFIG_TEMPLATES``. It's lookup mechanism is
the same as for option `GET`.

Option `GET` retrieves the value for a variable pattern (e.g. If COMPONENTS is
required and VARIABLES is set to MY_ARCHIVE;MY_ARCHIVE_COMMON;MY_PACKAGE_COMMON,
then the first occurrence of MY_ARCHIVE_COMPONENTS, etc., will be used).

Option `POPULATE` causes settings to be copied to CPACK variables by pattern
(where the source pattern, as passed to GET, may deviate from the
<variable><pattern>).

### my_generator_emit()

    my_generator_emit()

Create CPack configuration files.
