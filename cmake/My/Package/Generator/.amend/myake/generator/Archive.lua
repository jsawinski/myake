-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/archive.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-archive-generator",
        level = 1,
        text = "CPack Archive Generator",
        doc.paragraph:table {
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "for"
            },
            doc.space:table {},
            doc.string:table {
                text = "packaging"
            },
            doc.space:table {},
            doc.string:table {
                text = "files"
            },
            doc.space:table {},
            doc.string:table {
                text = "into"
            },
            doc.space:table {},
            doc.string:table {
                text = "an"
            },
            doc.space:table {},
            doc.string:table {
                text = "archive,"
            },
            doc.space:table {},
            doc.string:table {
                text = "which"
            },
            doc.space:table {},
            doc.string:table {
                text = "can"
            },
            doc.space:table {},
            doc.string:table {
                text = "have"
            },
            doc.space:table {},
            doc.string:table {
                text = "any"
            },
            doc.space:table {},
            doc.string:table {
                text = "of"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "following"
            },
            doc.space:table {},
            doc.string:table {
                text = "formats:"
            }
        },
        doc.block:table {
            style = "quote",
            doc.list:table {
                style = "bullet",
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "7Z"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "-"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "7zip"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "-"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".7z"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "TBZ2"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".tar.bz2"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "TGZ"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".tar.gz"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "TXZ"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".tar.xz"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "TZ"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".tar.Z"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "TZST"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".tar.zst"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "ZIP"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".zip"
                        },
                        doc.string:table {
                            text = ")"
                        }
                    }
                }
            }
        },
        doc.div:table {
            classes = {
                "versionadded"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.1"
                },
                doc.space:table {},
                doc.string:table {
                    text = "7Z"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "TXZ"
                },
                doc.space:table {},
                doc.string:table {
                    text = "formats"
                },
                doc.space:table {},
                doc.string:table {
                    text = "support."
                }
            }
        },
        doc.div:table {
            classes = {
                "versionadded"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.16"
                },
                doc.space:table {},
                doc.string:table {
                    text = "TZST"
                },
                doc.space:table {},
                doc.string:table {
                    text = "format"
                },
                doc.space:table {},
                doc.string:table {
                    text = "support."
                }
            }
        },
        doc.paragraph:table {
            doc.string:table {
                text = "When"
            },
            doc.space:table {},
            doc.string:table {
                text = "this"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "is"
            },
            doc.space:table {},
            doc.string:table {
                text = "called"
            },
            doc.space:table {},
            doc.string:table {
                text = "from"
            },
            doc.space:table {},
            doc.code:table {
                text = "CPackSourceConfig.cmake"
            },
            doc.space:table {},
            doc.string:table {
                text = "(or"
            },
            doc.space:table {},
            doc.string:table {
                text = "through"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.code:table {
                text = "package_source"
            },
            doc.space:table {},
            doc.string:table {
                text = "target),"
            },
            doc.space:table {},
            doc.string:table {
                text = "then"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "generated"
            },
            doc.space:table {},
            doc.string:table {
                text = "archive"
            },
            doc.space:table {},
            doc.string:table {
                text = "will"
            },
            doc.space:table {},
            doc.string:table {
                text = "contain"
            },
            doc.space:table {},
            doc.string:table {
                text = "all"
            },
            doc.space:table {},
            doc.string:table {
                text = "files"
            },
            doc.space:table {},
            doc.string:table {
                text = "in"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "project"
            },
            doc.space:table {},
            doc.string:table {
                text = "directory,"
            },
            doc.space:table {},
            doc.string:table {
                text = "except"
            },
            doc.space:table {},
            doc.string:table {
                text = "those"
            },
            doc.space:table {},
            doc.string:table {
                text = "specified"
            },
            doc.space:table {},
            doc.string:table {
                text = "in"
            },
            doc.space:table {},
            doc.code:table {
                attributes = {
                    role = "variable"
                },
                classes = {
                    "interpreted-text"
                },
                text = "CPACK_SOURCE_IGNORE_FILES"
            },
            doc.string:table {
                text = "."
            },
            doc.space:table {},
            doc.string:table {
                text = "The"
            },
            doc.space:table {},
            doc.string:table {
                text = "following"
            },
            doc.space:table {},
            doc.string:table {
                text = "is"
            },
            doc.space:table {},
            doc.string:table {
                text = "one"
            },
            doc.space:table {},
            doc.string:table {
                text = "example"
            },
            doc.space:table {},
            doc.string:table {
                text = "of"
            },
            doc.space:table {},
            doc.string:table {
                text = "packaging"
            },
            doc.space:table {},
            doc.string:table {
                text = "all"
            },
            doc.space:table {},
            doc.string:table {
                text = "source"
            },
            doc.space:table {},
            doc.string:table {
                text = "files"
            },
            doc.space:table {},
            doc.string:table {
                text = "of"
            },
            doc.space:table {},
            doc.string:table {
                text = "a"
            },
            doc.space:table {},
            doc.string:table {
                text = "project:"
            }
        },
        doc.block:table {
            style = "code",
            doc.string:table {
                text = [[
set(CPACK_SOURCE_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES
  \\.git/
  build/
  ".*~$"
)
set(CPACK_VERBATIM_VARIABLES YES)
include(CPack)
]]
            }
        },
        doc.paragraph:table {
            doc.string:table {
                text = "When"
            },
            doc.space:table {},
            doc.string:table {
                text = "this"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "is"
            },
            doc.space:table {},
            doc.string:table {
                text = "called"
            },
            doc.space:table {},
            doc.string:table {
                text = "from"
            },
            doc.space:table {},
            doc.code:table {
                text = "CPackConfig.cmake"
            },
            doc.space:table {},
            doc.string:table {
                text = "(or"
            },
            doc.space:table {},
            doc.string:table {
                text = "through"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.code:table {
                text = "package"
            },
            doc.space:table {},
            doc.string:table {
                text = "target),"
            },
            doc.space:table {},
            doc.string:table {
                text = "then"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "generated"
            },
            doc.space:table {},
            doc.string:table {
                text = "archive"
            },
            doc.space:table {},
            doc.string:table {
                text = "will"
            },
            doc.space:table {},
            doc.string:table {
                text = "contain"
            },
            doc.space:table {},
            doc.string:table {
                text = "all"
            },
            doc.space:table {},
            doc.string:table {
                text = "files"
            },
            doc.space:table {},
            doc.string:table {
                text = "that"
            },
            doc.space:table {},
            doc.string:table {
                text = "have"
            },
            doc.space:table {},
            doc.string:table {
                text = "been"
            },
            doc.space:table {},
            doc.string:table {
                text = "installed"
            },
            doc.space:table {},
            doc.string:table {
                text = "via"
            },
            doc.space:table {},
            doc.string:table {
                text = "CMake\'s"
            },
            doc.space:table {},
            doc.code:table {
                attributes = {
                    role = "command"
                },
                classes = {
                    "interpreted-text"
                },
                text = "install"
            },
            doc.space:table {},
            doc.string:table {
                text = "command"
            },
            doc.space:table {},
            doc.string:table {
                text = "(and"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "deprecated"
            },
            doc.space:table {},
            doc.string:table {
                text = "commands"
            },
            doc.space:table {},
            doc.code:table {
                attributes = {
                    role = "command"
                },
                classes = {
                    "interpreted-text"
                },
                text = "install_files"
            },
            doc.string:table {
                text = ","
            },
            doc.space:table {},
            doc.code:table {
                attributes = {
                    role = "command"
                },
                classes = {
                    "interpreted-text"
                },
                text = "install_programs"
            },
            doc.string:table {
                text = ","
            },
            doc.space:table {},
            doc.string:table {
                text = "and"
            },
            doc.space:table {},
            doc.code:table {
                attributes = {
                    role = "command"
                },
                classes = {
                    "interpreted-text"
                },
                text = "install_targets"
            },
            doc.string:table {
                text = ")."
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-archive-generator",
            level = 2,
            text = "Variables specific to CPack Archive generator",
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_ARCHIVE_FILE_NAME"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPACK_ARCHIVE_<component>_FILE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "The"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "default"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "<CPACK_PACKAGE_FILE_NAME>[-<component>]"
                            },
                            doc.string:table {
                                text = ","
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "with"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "spaces"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "replaced"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "by"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "\'-\'."
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "determined"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "archive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(see"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "above)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "appended"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Note"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<component>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uppercase"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.9"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Per-component"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_ARCHIVE_<component>_FILE_NAME"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_ARCHIVE_FILE_EXTENSION"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.25"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Default"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "values"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "are"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "given"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "in"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "list"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "above."
                            }
                        }
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_ARCHIVE_COMPONENT_INSTALL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Enable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "OFF"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enabled"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        text = "ON"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "multiple"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "By"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated."
                    }
                }
            },
            doc.header:table {
                id = "variables-used-by-cpack-archive-generator",
                level = 2,
                text = "Variables used by CPack Archive generator",
                doc.paragraph:table {
                    doc.string:table {
                        text = "These"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Archive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "available"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generators"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "essentially"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "archives"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "their"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "core."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "These"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "include:"
                    }
                },
                doc.list:table {
                    style = "bullet",
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = ":cpack_gen:"
                            },
                            doc.div:table {
                                classes = {
                                    "title-ref"
                                },
                                doc.string:table {
                                    text = "CPack"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Cygwin"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Generator"
                                }
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = ":cpack_gen:"
                            },
                            doc.div:table {
                                classes = {
                                    "title-ref"
                                },
                                doc.string:table {
                                    text = "CPack"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "FreeBSD"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Generator"
                                }
                            }
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_ARCHIVE_THREADS"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "number"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "threads"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "use"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "performing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compression."
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.18"
                            }
                        }
                    },
                    doc.list:table {
                        style = "definition",
                        doc.item:table {
                            doc.string:table {
                                text = "Default"
                            },
                            doc.paragraph:table {
                                doc.code:table {
                                    text = "1"
                                }
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "If"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "0"
                        },
                        doc.string:table {
                            text = ","
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "number"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "available"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "cores"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "on"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "machine"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "used"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "instead."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "1"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "which"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "limits"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compression"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "single"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "thread."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Note"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "that"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "all"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compression"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "modes"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "support"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "threading"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "all"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "environments."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Currently,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "only"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "XZ"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compression"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "may"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "support"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "it."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "See"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "also"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_THREADS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable."
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.21"
                            }
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Official"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "CMake"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "binaries"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "available"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "on"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "cmake.org"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "now"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "ship"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "with"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "a"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "liblzma"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "that"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "supports"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "parallel"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "compression."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Older"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "versions"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "did"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "not."
                            }
                        }
                    }
                }
            }
        }
    }
}
