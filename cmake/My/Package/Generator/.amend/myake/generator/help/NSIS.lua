-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/nsis.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-nsis-generator",
        level = 1,
        text = "CPack NSIS Generator",
        doc.paragraph:table {
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "Nullsoft"
            },
            doc.space:table {},
            doc.string:table {
                text = "Scriptable"
            },
            doc.space:table {},
            doc.string:table {
                text = "Install"
            },
            doc.space:table {},
            doc.string:table {
                text = "System"
            },
            doc.space:table {},
            doc.string:table {
                text = "(NSIS)"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "specific"
            },
            doc.space:table {},
            doc.string:table {
                text = "options."
            }
        },
        doc.div:table {
            classes = {
                "versionchanged"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.22"
                },
                doc.space:table {},
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "NSIS"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "requires"
                },
                doc.space:table {},
                doc.string:table {
                    text = "NSIS"
                },
                doc.space:table {},
                doc.string:table {
                    text = "3.03"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "newer."
                }
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-nsis-generator",
            level = 2,
            text = "Variables specific to CPack NSIS generator",
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "following"
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
                    text = "specific"
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
                    text = "graphical"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installers"
                },
                doc.space:table {},
                doc.string:table {
                    text = "built"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Windows"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Nullsoft"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Scriptable"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Install"
                },
                doc.space:table {},
                doc.string:table {
                    text = "System."
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_INSTALL_ROOT"
                    }
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
                        text = "installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "presented"
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
                        text = "end"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
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
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "under"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "root"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dir."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "full"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "presented"
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
                        text = "end"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is:"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "${CPACK_NSIS_INSTALL_ROOT}/${CPACK_PACKAGE_INSTALL_DIRECTORY}"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MUI_ICON"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
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
                    doc.code:table {
                        text = "*.ico"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "main"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
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
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "program."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MUI_UNIICON"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
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
                    doc.code:table {
                        text = "*.ico"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "main"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
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
                        text = "uninstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "program."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_INSTALLER_MUI_ICON_CODE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "undocumented."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MUI_WELCOMEFINISHPAGE_BITMAP"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.5"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename"
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
                        text = "bitmap"
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
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "MUI_WELCOMEFINISHPAGE_BITMAP"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MUI_UNWELCOMEFINISHPAGE_BITMAP"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.5"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename"
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
                        text = "bitmap"
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
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "MUI_UNWELCOMEFINISHPAGE_BITMAP"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXTRA_PREINSTALL_COMMANDS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "commands"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "added"
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
                        text = "beginning"
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
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Section,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tree"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "target"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "system."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXTRA_INSTALL_COMMANDS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "commands"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "added"
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
                        text = "end"
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
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Section,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tree"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "target"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "system."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXTRA_UNINSTALL_COMMANDS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "commands"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "added"
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
                        text = "uninstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Section,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tree"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "removed"
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
                        text = "target"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "system."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_COMPRESSOR"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "passed"
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
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "SetCompressor"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_ENABLE_UNINSTALL_BEFORE_INSTALL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Ask"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "about"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uninstalling"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "previous"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "versions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "first."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                        text = "ON"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "look"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "previous"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "versions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "found,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ask"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "whether"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uninstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "proceeding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MODIFY_PATH"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Modify"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "PATH"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "toggle."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                        text = "ON"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "appear"
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
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allow"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "user"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "choose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "whether"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "program"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "added"
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
                        text = "system"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "PATH"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_DISPLAY_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "appears"
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
                        text = "Windows"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Apps"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "&"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "features"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Control"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Panel"
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
                        text = "CPACK_NSIS_PACKAGE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "title"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "displayed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "top"
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
                        text = "installer."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_INSTALLED_ICON_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
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
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "icon."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_HELP_LINK"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "URL"
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
                        text = "web"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "site"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "providing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "assistance"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "application."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_URL_INFO_ABOUT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "URL"
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
                        text = "web"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "site"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "providing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "about"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "application."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_CONTACT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Contact"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "questions"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "comments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "about"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "process."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_<compName>_INSTALL_DIRECTORY"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.7"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<compName>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "instead"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "$INSTDIR"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_CREATE_ICONS_EXTRA"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "commands"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "creating"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Start"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Menu"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shortcuts."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_DELETE_ICONS_EXTRA"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "commands"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uninstall"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Start"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Menu"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shortcuts."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXECUTABLES_DIRECTORY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Creating"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "Start"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Menu"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "assumes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "they"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "bin"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unless"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "would"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "exec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "exec"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MUI_FINISHPAGE_RUN"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "run"
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
                        text = "finish"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page"
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
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MENU_LINKS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "[application]"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "menu."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "should"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contain"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pair"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "link"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "link name"
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
                        text = "link"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "relative"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefix."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Like:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = [[
set(CPACK_NSIS_MENU_LINKS
    "doc/cmake-@CMake_VERSION_MAJOR@.@CMake_VERSION_MINOR@/cmake.html"
    "CMake Help" "https://cmake.org" "CMake Web Site")
]]
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_UNINSTALL_NAME"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
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
                        text = "program"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uninstall"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Uninstall"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_WELCOME_TITLE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "title"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display"
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
                        text = "top"
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
                        text = "page"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "welcome"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_WELCOME_TITLE_3LINES"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Display"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "title"
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
                        text = "welcome"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "3"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lines"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "instead"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "2."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_FINISH_TITLE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "title"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display"
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
                        text = "top"
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
                        text = "page"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "finish"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_FINISH_TITLE_3LINES"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Display"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "title"
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
                        text = "finish"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "3"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lines"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "instead"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "2."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MUI_HEADERIMAGE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display"
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
                        text = "header"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pages."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_MANIFEST_DPI_AWARE"
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
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "declares"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "DPI-aware."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_BRANDING_TEXT"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.20"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "updates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "text"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "bottom"
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
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "window."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "To"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "blank,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "space"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\")."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_BRANDING_TEXT_TRIM_POSITION"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.20"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "trim"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "down"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "size"
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
                        text = "control"
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
                        text = "size"
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
                        text = "branding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "text"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "string."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Allowed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "LEFT"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CENTER"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "RIGHT"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "behavior"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "LEFT"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXECUTABLE"
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
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
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
                        text = "NSIS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "makensis"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_IGNORE_LICENSE_PAGE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.22"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "do"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "display"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "page"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "containing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXECUTABLE_PRE_ARGUMENTS"
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
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "ref"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "semicolon-separated list <CMake Language Lists>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prepend"
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
                        text = "nsis"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "run."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "do"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "start"
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
                        text = "/"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "-"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
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
                        text = "corresponding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "run"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "makensis.exe <preArgs>... \"nsisFileName.nsi\" <postArgs>..."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<preArgs>..."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "constructed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_NSIS_EXECUTABLE_PRE_ARGUMENTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<postArgs>..."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "constructed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_NSIS_EXECUTABLE_POST_ARGUMENTS"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_NSIS_EXECUTABLE_POST_ARGUMENTS"
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
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "ref"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "semicolon-separated list <CMake Language Lists>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "append"
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
                        text = "nsis"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "run."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "do"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "start"
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
                        text = "/"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "-"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "add"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
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
                        text = "corresponding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "run"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "makensis.exe <preArgs>... \"nsisFileName.nsi\" <postArgs>..."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<preArgs>..."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "constructed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_NSIS_EXECUTABLE_PRE_ARGUMENTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<postArgs>..."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "constructed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_NSIS_EXECUTABLE_POST_ARGUMENTS"
                    },
                    doc.string:table {
                        text = "."
                    }
                }
            }
        }
    }
}
