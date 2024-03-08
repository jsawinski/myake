-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/freebsd.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-freebsd-generator",
        level = 1,
        text = "CPack FreeBSD Generator",
        doc.div:table {
            classes = {
                "versionadded"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.10"
                }
            }
        },
        doc.paragraph:table {
            doc.string:table {
                text = "The"
            },
            doc.space:table {},
            doc.string:table {
                text = "built"
            },
            doc.space:table {},
            doc.string:table {
                text = "in"
            },
            doc.space:table {},
            doc.string:table {
                text = "(binary)"
            },
            doc.space:table {},
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "FreeBSD"
            },
            doc.space:table {},
            doc.string:table {
                text = "(pkg)"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "(Unix"
            },
            doc.space:table {},
            doc.string:table {
                text = "only)"
            }
        },
        doc.header:table {
            id = "variables-affecting-the-cpack-freebsd-pkg-generator",
            level = 2,
            text = "Variables affecting the CPack FreeBSD (pkg) generator",
            doc.list:table {
                style = "bullet",
                doc.item:table {
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.18"
                            },
                            doc.space:table {},
                            doc.code:table {
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_ARCHIVE_THREADS"
                            }
                        }
                    }
                }
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-freebsd-pkg-generator",
            level = 2,
            text = "Variables specific to CPack FreeBSD (pkg) generator",
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
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
                    text = "used"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "create"
                },
                doc.space:table {},
                doc.string:table {
                    text = "pkg(8)"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
                },
                doc.space:table {},
                doc.string:table {
                    text = "--"
                },
                doc.space:table {},
                doc.string:table {
                    text = "these"
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
                    text = "used"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "DragonflyBSD,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "NetBSD,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "OpenBSD,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "but"
                },
                doc.space:table {},
                doc.string:table {
                    text = "also"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Linux"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "OSX,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "depending"
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
                    text = "installed"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package-management"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tools"
                },
                doc.space:table {},
                doc.string:table {
                    text = "--"
                },
                doc.space:table {},
                doc.string:table {
                    text = "using"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPack"
                },
                doc.string:table {
                    text = "."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD"
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
                    text = "a"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "uses"
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
                    text = "!CPACK_XXX"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
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
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPack"
                },
                doc.string:table {
                    text = "."
                },
                doc.space:table {},
                doc.string:table {
                    text = "It"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tries"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "reuse"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "information"
                },
                doc.space:table {},
                doc.string:table {
                    text = "that"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "already"
                },
                doc.space:table {},
                doc.string:table {
                    text = "be"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specified"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Debian"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
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
                        text = "DEB"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Generator"
                    }
                },
                doc.string:table {
                    text = "."
                },
                doc.space:table {},
                doc.string:table {
                    text = "It"
                },
                doc.space:table {},
                doc.string:table {
                    text = "also"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tries"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "reuse"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "information"
                },
                doc.space:table {},
                doc.string:table {
                    text = "when"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Debian"
                },
                doc.space:table {},
                doc.string:table {
                    text = "does"
                },
                doc.space:table {},
                doc.string:table {
                    text = "not"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specify."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "should"
                },
                doc.space:table {},
                doc.string:table {
                    text = "work"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "any"
                },
                doc.space:table {},
                doc.string:table {
                    text = "host"
                },
                doc.space:table {},
                doc.string:table {
                    text = "with"
                },
                doc.space:table {},
                doc.string:table {
                    text = "libpkg"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installed."
                },
                doc.space:table {},
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
                },
                doc.space:table {},
                doc.string:table {
                    text = "it"
                },
                doc.space:table {},
                doc.string:table {
                    text = "produces"
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
                    text = "host"
                },
                doc.space:table {},
                doc.string:table {
                    text = "architecture"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "ABI."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "sets"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package-metadata"
                },
                doc.space:table {},
                doc.string:table {
                    text = "through"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "!CPACK_FREEBSD_XXX"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables."
                },
                doc.space:table {},
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "unlike"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Deb"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "does"
                },
                doc.space:table {},
                doc.string:table {
                    text = "not"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specially"
                },
                doc.space:table {},
                doc.string:table {
                    text = "support"
                },
                doc.space:table {},
                doc.string:table {
                    text = "componentized"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages;"
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
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "created"
                },
                doc.space:table {},
                doc.string:table {
                    text = "from"
                },
                doc.space:table {},
                doc.string:table {
                    text = "all"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "software"
                },
                doc.space:table {},
                doc.string:table {
                    text = "artifacts"
                },
                doc.space:table {},
                doc.string:table {
                    text = "created"
                },
                doc.space:table {},
                doc.string:table {
                    text = "through"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CMake."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "All"
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
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "can"
                },
                doc.space:table {},
                doc.string:table {
                    text = "be"
                },
                doc.space:table {},
                doc.string:table {
                    text = "set"
                },
                doc.space:table {},
                doc.string:table {
                    text = "specifically"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "FreeBSD"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
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
                    text = "CPackConfig"
                },
                doc.space:table {},
                doc.string:table {
                    text = "file"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CMakeLists.txt,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "but"
                },
                doc.space:table {},
                doc.string:table {
                    text = "most"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "them"
                },
                doc.space:table {},
                doc.string:table {
                    text = "have"
                },
                doc.space:table {},
                doc.string:table {
                    text = "defaults"
                },
                doc.space:table {},
                doc.string:table {
                    text = "that"
                },
                doc.space:table {},
                doc.string:table {
                    text = "use"
                },
                doc.space:table {},
                doc.string:table {
                    text = "general"
                },
                doc.space:table {},
                doc.string:table {
                    text = "settings"
                },
                doc.space:table {},
                doc.string:table {
                    text = "(e.g."
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "variable"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CMAKE_PROJECT_NAME"
                },
                doc.string:table {
                    text = ")"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Debian-specific"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "when"
                },
                doc.space:table {},
                doc.string:table {
                    text = "those"
                },
                doc.space:table {},
                doc.string:table {
                    text = "make"
                },
                doc.space:table {},
                doc.string:table {
                    text = "sense"
                },
                doc.space:table {},
                doc.string:table {
                    text = "(e.g."
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "homepage"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "an"
                },
                doc.space:table {},
                doc.string:table {
                    text = "upstream"
                },
                doc.space:table {},
                doc.string:table {
                    text = "project"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "usually"
                },
                doc.space:table {},
                doc.string:table {
                    text = "unchanged"
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
                    text = "flavor"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging)."
                },
                doc.space:table {},
                doc.string:table {
                    text = "When"
                },
                doc.space:table {},
                doc.string:table {
                    text = "there"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "no"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Debian"
                },
                doc.space:table {},
                doc.string:table {
                    text = "information"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "fall"
                },
                doc.space:table {},
                doc.string:table {
                    text = "back"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "but"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "has"
                },
                doc.space:table {},
                doc.string:table {
                    text = "it,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "fall"
                },
                doc.space:table {},
                doc.string:table {
                    text = "back"
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
                    text = "RPM"
                },
                doc.space:table {},
                doc.string:table {
                    text = "information"
                },
                doc.space:table {},
                doc.string:table {
                    text = "(e.g."
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "license)."
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_FREEBSD_PACKAGE_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Sets"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "manifest,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "affects"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "output"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "filename)."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_PACKAGE_NAME"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(this"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "is"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "always"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "by"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "CPack"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "itself,"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "based"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "on"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "CMAKE_PROJECT_NAME)."
                                }
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
                        text = "CPACK_FREEBSD_PACKAGE_COMMENT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Sets"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "comment."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "short"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "displayed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pkg(8)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "standard"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"pkg"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "info\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "output."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(this"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "is"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "always"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "by"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "CPack"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "itself,"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "if"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "nothing"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "else"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "sets"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "it"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "explicitly)."
                                }
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
                        text = "CPACK_FREEBSD_PACKAGE_DESCRIPTION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Sets"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "long"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "description"
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
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"pkg"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "info\""
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
                    doc.string:table {
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "argument."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_DEBIAN_PACKAGE_DESCRIPTION"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(this"
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
                                    text = "set"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "already"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Debian"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "packaging,"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "so"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "it"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "is"
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
                                    text = "a"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "fallback)."
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(this"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "is"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "always"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "by"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "CPack"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "itself,"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "if"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "nothing"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "else"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "sets"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "it"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "explicitly)."
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "PROJECT_DESCRIPTION"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(this"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "can"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "be"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set"
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
                                doc.code:table {
                                    text = "DESCRIPTION"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "parameter"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.code:table {
                                    attributes = {
                                        role = "command"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "project"
                                },
                                doc.string:table {
                                    text = ")."
                                }
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
                        text = "CPACK_FREEBSD_PACKAGE_WWW"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
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
                        text = "web"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "site"
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
                        text = "package,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "preferably"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "applicable)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "site"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "original"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "obtained"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "upstream"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "documentation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
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
                        text = "found."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_PACKAGE_HOMEPAGE_URL"
                                },
                                doc.string:table {
                                    text = ","
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "or"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "if"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "that"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "is"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "not"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "set,"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_DEBIAN_PACKAGE_HOMEPAGE"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "(this"
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
                                    text = "set"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "already"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "for"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "Debian"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "packaging,"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "so"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "it"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "is"
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
                                    text = "a"
                                },
                                doc.space:table {},
                                doc.string:table {
                                    text = "fallback)."
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
                            text = "3.12"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "!CPACK_PACKAGE_HOMEPAGE_URL"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable."
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
                        text = "CPACK_FREEBSD_PACKAGE_LICENSE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "licenses,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "apply"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "software"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license-identifiers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pkg"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "recognizes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "acceptable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "identifiers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"GPLv2\")."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.block:table {
                    style = "quote",
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.code:table {
                                    attributes = {
                                        role = "variable"
                                    },
                                    classes = {
                                        "interpreted-text"
                                    },
                                    text = "CPACK_RPM_PACKAGE_LICENSE"
                                }
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
                        text = "CPACK_FREEBSD_PACKAGE_LICENSE_LOGIC"
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
                        text = "only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "importance"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "there"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "more"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "than"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license."
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
                    doc.string:table {
                        text = "\"single\","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "applicable"
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
                        text = "license."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "acceptable"
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
                        text = "determined"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pkg"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "--"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "those"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"dual\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"multi\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "--meaning"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "choice"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(OR)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "simultaneous"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(AND)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "application"
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
                        text = "licenses."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "single"
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
                        text = "CPACK_FREEBSD_PACKAGE_MAINTAINER"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "FreeBSD"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "maintainer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "kde@freebsd.org"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "none"
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
                        text = "CPACK_FREEBSD_PACKAGE_ORIGIN"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "origin"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(ports"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "label)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package;"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "built"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "outside"
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
                        text = "ports"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "system"
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
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "less"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "importance."
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
                        text = "puts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "somewhere"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "under"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "misc/"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stopgap."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "misc/<package name>"
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
                        text = "CPACK_FREEBSD_PACKAGE_CATEGORIES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ports"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "categories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lives"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "built"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ports)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "none"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "category"
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
                        text = "based"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "origin."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Yes"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "derived"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "from"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "ORIGIN"
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
                        text = "CPACK_FREEBSD_PACKAGE_DEPS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "origins"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dependencies."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "These"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "form"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<category>/<packagename>"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "e.g."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "x11/libkonq"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "No"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "information"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "needs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "included"
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
                        text = "manifest)."
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Mandatory"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "No"
                            }
                        }
                    },
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "empty"
                            }
                        }
                    }
                }
            }
        }
    }
}
