# My/Platform - Platform and operating system detection

This module is automatically loaded by `My/Init` and detects platform or operating system dependent settings (for a report,
see [My/Config](Config.md)).

## Reference
### MY_PLATFORM_FOUND

This boolean variable is set to ``TRUE`` if the host platform is known to Myake, ``FALSE`` otherwise.

### ``MY_PLATFORM_HIERARCHY``

This indicates the host platform's file-system hierarchy style. It is of
informational character, only. Unless specific standards apply, this will
be the host's name as known to CMake (``CMAKE_HOST_SYSTEM_NAME``).

**See**:
- [CMAKE_HOST_SYSTEM_NAME](https://cmake.org/cmake/help/latest/variable/CMAKE_HOST_SYSTEM_NAME.html)

### MY_USER_HOME

The user's home folder.

### MY_USER_PREFIX

The user's application and data directory.

### MY_USER_PATHS

The list of paths where to find local cmake files.

### MY_INSTALL_STYLE

The installation style is a system dependent setting. Common to all styles is
``Default`` (which refers to CMake's default CMAKE_INSTALL_PREFIX), and,
``User`` for installation for the current user's access after compilation.

The default can be seeded using ``MY_INSTALL_STYLE_INIT``.

### MY_INSTALL_STYLE_LIST

This variable contains the list of available options to [MY_INSTALL_STYLE](#markdown-header-MY_INSTALL_STYLE).

### MY_<style>_PREFIX

Installation path for <style> (upper-case).

**See**:
- [My/Platform/Linux](Platform/Linux.md)
- [My/Platform/Unix](Platform/Unix.md)
- [My/Platform/FreeDesktop](Platform/FreeDesktop.md)

