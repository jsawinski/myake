-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/dmg.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-dragndrop-generator",
        level = 1,
        text = "CPack DragNDrop Generator",
        doc.paragraph:table {
            doc.string:table {
                text = "The"
            },
            doc.space:table {},
            doc.string:table {
                text = "DragNDrop"
            },
            doc.space:table {},
            doc.string:table {
                text = "CPack"
            },
            doc.space:table {},
            doc.string:table {
                text = "generator"
            },
            doc.space:table {},
            doc.string:table {
                text = "(macOS)"
            },
            doc.space:table {},
            doc.string:table {
                text = "creates"
            },
            doc.space:table {},
            doc.string:table {
                text = "a"
            },
            doc.space:table {},
            doc.string:table {
                text = "DMG"
            },
            doc.space:table {},
            doc.string:table {
                text = "image."
            }
        },
        doc.header:table {
            id = "variables-specific-to-cpack-dragndrop-generator",
            level = 2,
            text = "Variables specific to CPack DragNDrop generator",
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
                    text = "DragNDrop"
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
                    text = "macOS:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DMG_VOLUME_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "volume"
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
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disk"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image."
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
                                attributes = {
                                    role = "variable"
                                },
                                classes = {
                                    "interpreted-text"
                                },
                                text = "CPACK_PACKAGE_FILE_NAME"
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
                        text = "CPACK_DMG_FORMAT"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disk"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format."
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
                                text = "UDZO"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Common"
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
                    doc.code:table {
                        text = "UDRO"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(UDIF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "read-only),"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "UDZO"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(UDIF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "zlib-compressed)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "UDBZ"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(UDIF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "bzip2-compressed)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Refer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "hdiutil(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
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
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "available"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "formats."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DMG_DS_STORE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
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
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".DS_Store"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".DS_Store"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
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
                        text = "Finder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "window"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "position/geometry"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "layout"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(such"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hidden"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "toolbars,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "placement"
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
                        text = "icons"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "etc.)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
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
                        text = "generated"
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
                        text = "Finder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(either"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "manually"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "through"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "AppleScript)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "using"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "normal"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "folder"
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
                    doc.code:table {
                        text = ".DS_Store"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extracted."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DMG_DS_STORE_SETUP_SCRIPT"
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
                        text = "Path"
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
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "AppleScript"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "AppleScript"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".DS_Store"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specifies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Finder"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "window"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "position/geometry"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "layout"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(such"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hidden"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "toolbars,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "placement"
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
                        text = "icons"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "etc.)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "By"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specifying"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "custom"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "AppleScript"
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
                        text = "need"
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
                    doc.code:table {
                        text = "CPACK_DMG_DS_STORE"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".DS_Store"
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
                        text = "generated"
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
                        text = "AppleScript"
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
                        text = "packaged."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DMG_BACKGROUND_IMAGE"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.string:table {
                            text = ""
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
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
                        text = "background."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
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
                        text = "copied"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".background"
                    },
                    doc.string:table {
                        text = "/"
                    },
                    doc.code:table {
                        text = "background.<ext>"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<ext>"
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
                        text = "original"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "background"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_DMG_DS_STORE_SETUP_SCRIPT"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_DMG_DS_STORE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed."
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
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "background"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DMG_DISABLE_APPLICATIONS_SYMLINK"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.6"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Default"
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
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "include"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symlink"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "/Applications"
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
                        text = "DMG."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
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
                    doc.code:table {
                        text = "ON"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "avoid"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "adding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "symlink."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.23"
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
                                text = "OFF"
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Control"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "whether"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
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
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "non-default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value,"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "agreement"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "mounting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "DMG."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE"
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
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "manual"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "defaults"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "off."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "In"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
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
                            role = "module"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "module"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generate"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPackConfig.cmake"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "!CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE"
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
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enabled"
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
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "activate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "SLA."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "policy"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "policy"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CMP0133"
                    },
                    doc.string:table {
                        text = "."
                    }
                },
                doc.div:table {
                    classes = {
                        "note"
                    },
                    doc.div:table {
                        classes = {
                            "title"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Note"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "was"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "added"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "response"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "macOS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "12.0\'s"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "deprecation"
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
                        doc.code:table {
                            text = "hdiutil udifrez"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "command"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "make"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "its"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "use"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "optional."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "CPack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "3.22"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "below"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "always"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "use"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_RESOURCE_FILE_LICENSE"
                        },
                        doc.string:table {
                            text = ","
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
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
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "non-default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "value,"
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
                            text = "DMG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "license."
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
                        text = "CPACK_DMG_SLA_DIR"
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
                        text = "Directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "where"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "menu"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "different"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "languages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stored."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Setting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "causes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.menu.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.license.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.license.rtf"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "every"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "language"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "defined"
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
                        text = "CPACK_DMG_SLA_LANGUAGES"
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
                        text = "both"
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
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "only"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "menu"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "same"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "languages."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "both"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.license.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.license.rtf"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "exist,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = ".txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
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
                        text = "used."
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.17"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "RTF"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "support."
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
                        text = "CPACK_DMG_SLA_LANGUAGES"
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
                        text = "Languages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "license"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "agreement"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "mounting"
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
                        text = "DMG."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "menu"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "consists"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "9"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lines"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "text."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "first"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "line"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                        text = "language"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "itself,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "uppercase,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "English"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "German)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lines"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "translations"
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
                        text = "strings:"
                    }
                },
                doc.list:table {
                    style = "bullet",
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Agree"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Disagree"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Print"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Save..."
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "You"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "agree"
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
                                text = "terms"
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
                                text = "License"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Agreement"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "when"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "you"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "click"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "\"Agree\""
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "button."
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Software"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "License"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Agreement"
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "This"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "text"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "cannot"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "be"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "saved."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "The"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "disk"
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
                                text = "full"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "locked,"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
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
                                text = "may"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "be"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "locked."
                            }
                        }
                    },
                    doc.item:table {
                        doc.plain:table {
                            doc.string:table {
                                text = "Unable"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "to"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "print."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Make"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "sure"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "you"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "have"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "selected"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "a"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "printer."
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "every"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "language"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "try"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.menu.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<language>.license.txt"
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
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
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
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_DMG_SLA_DIR"
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
                        text = "CPACK_DMG_<component>_FILE_NAME"
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
                        text = "File"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "<component>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "own"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "DMG"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "("
                    },
                    doc.code:table {
                        attributes = {
                            role = "variable"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPACK_COMPONENTS_GROUPING"
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
                        text = "IGNORE"
                    },
                    doc.string:table {
                        text = ")."
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
                                text = "CPACK_PACKAGE_FILE_NAME-<component>"
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
                        text = "CPACK_DMG_FILESYSTEM"
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
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.paragraph:table {
                            doc.code:table {
                                text = "HFS+"
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
                        text = "filesystem"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "format."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Common"
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
                    doc.code:table {
                        text = "APFS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "HFS+"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "man hdiutil"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "full"
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
                        text = "supported"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "formats."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_COMMAND_HDIUTIL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
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
                    doc.code:table {
                        text = "hdiutil(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "operate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "disk"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macOS."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-detection"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fails"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_COMMAND_SETFILE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
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
                    doc.code:table {
                        text = "SetFile(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extended"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "attributes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macOS."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-detection"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fails"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_COMMAND_REZ"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Path"
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
                    doc.code:table {
                        text = "Rez(1)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "compile"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "resources"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "macOS."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "override"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detected"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "location"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "auto-detection"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fails"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "find"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it)."
                    }
                }
            }
        }
    }
}
