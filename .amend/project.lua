--[=[
    Project settings.

    This table contains two required entries:

        NAME            Project name.
        VERSION         Project version ({major, minor[, patch[, tweak]]}).

    as well as 

        USES            List of tools in use.

    Users are free to add additional entries.
]=]
PROJECT = {
    NAME = "Myake",
    USES = {
        "CMAKE",
        "GIT"
    },
    VERSION = {
        0,
        20,
        0
    }
}

--[=[
    Amend configuration.

]=]
CONFIG = {
    EXTENSIONS = {},
    LANG = {}
}

--[=[
    Tools.
]=]
TOOLS = {
    ["git"] = auto
}

--[=[
    Package paths.

    Here, additional Lua paths may be listed, if necessary.
]=]
PATHS = {}
