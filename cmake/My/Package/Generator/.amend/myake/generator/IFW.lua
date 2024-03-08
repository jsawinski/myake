-- This file was auto-generated from
--    /usr/share/cmake-3.28/Help/cpack_gen/ifw.rst
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack-ifw-generator",
        level = 1,
        text = "CPack IFW Generator",
        doc.div:table {
            classes = {
                "versionadded"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "3.1"
                }
            }
        },
        doc.paragraph:table {
            doc.string:table {
                text = "Configure"
            },
            doc.space:table {},
            doc.string:table {
                text = "and"
            },
            doc.space:table {},
            doc.string:table {
                text = "run"
            },
            doc.space:table {},
            doc.string:table {
                text = "the"
            },
            doc.space:table {},
            doc.string:table {
                text = "Qt"
            },
            doc.space:table {},
            doc.string:table {
                text = "Installer"
            },
            doc.space:table {},
            doc.string:table {
                text = "Framework"
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
            doc.string:table {
                text = "Qt"
            },
            doc.space:table {},
            doc.string:table {
                text = "installer."
            }
        },
        doc.div:table {
            classes = {
                "only"
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "html"
                }
            },
            doc.div:table {
                classes = {
                    "contents"
                }
            }
        },
        doc.header:table {
            id = "overview",
            level = 2,
            text = "Overview",
            doc.paragraph:table {
                doc.string:table {
                    text = "This"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "manual"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "cpack generator <cpack-generators(7)>"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generates"
                },
                doc.space:table {},
                doc.string:table {
                    text = "configuration"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "meta"
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
                    text = "the"
                },
                doc.space:table {},
                doc.link:table {
                    target = "https://doc.qt.io/qtinstallerframework/index.html",
                    doc.string:table {
                        text = "Qt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Framework"
                    }
                },
                doc.space:table {},
                doc.string:table {
                    text = "(QtIFW),"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "runs"
                },
                doc.space:table {},
                doc.string:table {
                    text = "QtIFW"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tools"
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
                doc.string:table {
                    text = "Qt"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installer."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "QtIFW"
                },
                doc.space:table {},
                doc.string:table {
                    text = "provides"
                },
                doc.space:table {},
                doc.string:table {
                    text = "tools"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "utilities"
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
                    text = "installers"
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
                    text = "platforms"
                },
                doc.space:table {},
                doc.string:table {
                    text = "supported"
                },
                doc.space:table {},
                doc.string:table {
                    text = "by"
                },
                doc.space:table {},
                doc.link:table {
                    target = "https://www.qt.io",
                    doc.string:table {
                        text = "Qt"
                    }
                },
                doc.string:table {
                    text = ":"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Linux,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Microsoft"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Windows,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "macOS."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "To"
                },
                doc.space:table {},
                doc.string:table {
                    text = "make"
                },
                doc.space:table {},
                doc.string:table {
                    text = "use"
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
                    text = "generator,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "QtIFW"
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
                    text = "installed."
                },
                doc.space:table {},
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.code:table {
                    attributes = {
                        role = "module"
                    },
                    classes = {
                        "interpreted-text"
                    },
                    text = "CPackIFW"
                },
                doc.space:table {},
                doc.string:table {
                    text = "module"
                },
                doc.space:table {},
                doc.string:table {
                    text = "looks"
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
                    text = "location"
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
                    text = "QtIFW"
                },
                doc.space:table {},
                doc.string:table {
                    text = "command-line"
                },
                doc.space:table {},
                doc.string:table {
                    text = "utilities,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "defines"
                },
                doc.space:table {},
                doc.string:table {
                    text = "several"
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
                    text = "control"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "behavior"
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
                    text = "generator."
                },
                doc.space:table {},
                doc.string:table {
                    text = "See"
                },
                doc.space:table {},
                doc.link:table {
                    target = "#hints-for-finding-qtifw",
                    doc.string:table {
                        text = "Hints"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Finding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "QtIFW"
                    }
                },
                doc.string:table {
                    text = "."
                }
            }
        },
        doc.header:table {
            id = "variables",
            level = 2,
            text = "Variables",
            doc.paragraph:table {
                doc.string:table {
                    text = "You"
                },
                doc.space:table {},
                doc.string:table {
                    text = "can"
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
                    text = "following"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "change"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "behavior"
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
                    text = "CPack"
                },
                doc.space:table {},
                doc.code:table {
                    text = "IFW"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator."
                }
            },
            doc.header:table {
                id = "debug",
                level = 3,
                text = "Debug",
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_VERBOSE"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Set"
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
                            text = "enable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "addition"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "debug"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "output."
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
                            text = "is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "OFF"
                        },
                        doc.string:table {
                            text = "."
                        }
                    }
                }
            },
            doc.header:table {
                id = "package",
                level = 3,
                text = "Package",
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_TITLE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Name"
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
                            text = "installer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "displayed"
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
                            text = "title"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "bar."
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
                            text = "it"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
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
                            text = "CPACK_IFW_PACKAGE_PUBLISHER"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Publisher"
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
                            text = "software"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "(as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shown"
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
                        doc.string:table {
                            text = "Control"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Panel)."
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
                            text = "it"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_PACKAGE_VENDOR"
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
                            text = "CPACK_IFW_PRODUCT_URL"
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
                            text = "page"
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
                            text = "product"
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
                            text = "your"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "web"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "site."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_ICON"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "custom"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "icon."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
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
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
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
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = ".icns"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "on"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "macOS"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = ".ico"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "on"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Windows."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "ignored"
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
                            text = "platforms."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_WINDOW_ICON"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "custom"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "window"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "icon"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "PNG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format"
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
                            text = "Installer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "application."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
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
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_LOGO"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "logo"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "PNG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format,"
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
                        doc.code:table {
                            text = "QWizard::LogoPixmap"
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
                            text = "must"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_WATERMARK"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "watermark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "PNG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format,"
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
                        doc.code:table {
                            text = "QWizard::WatermarkPixmap"
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
                            text = "must"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_BANNER"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "banner"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "PNG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format,"
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
                        doc.code:table {
                            text = "QWizard::BannerPixmap"
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
                            text = "must"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_BACKGROUND"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "background"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "PNG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format,"
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
                        doc.code:table {
                            text = "QWizard::BackgroundPixmap"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "(only"
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
                            text = "MacStyle"
                        },
                        doc.string:table {
                            text = ")."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
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
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_WIZARD_STYLE"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Wizard"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "style"
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
                            text = "("
                        },
                        doc.code:table {
                            text = "Modern"
                        },
                        doc.string:table {
                            text = ","
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "Mac"
                        },
                        doc.string:table {
                            text = ","
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "Aero"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "Classic"
                        },
                        doc.string:table {
                            text = ")."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_WIZARD_DEFAULT_WIDTH"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "width"
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
                            text = "wizard"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pixels."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Setting"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "banner"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "override"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_WIZARD_DEFAULT_HEIGHT"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "height"
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
                            text = "wizard"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pixels."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Setting"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "watermark"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "image"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "override"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_WIZARD_SHOW_PAGE_LIST"
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
                            text = "Set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "OFF"
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
                            text = "widget"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "listing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "pages"
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
                            text = "left"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "side"
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
                            text = "wizard"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "should"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shown."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "It"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "ON"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "but"
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
                            text = "have"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "effect"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_TITLE_COLOR"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.8"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Color"
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
                            text = "titles"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "subtitles"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "(takes"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "HTML"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "color"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "code,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "such"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "#88FF33"
                        },
                        doc.string:table {
                            text = ")."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_STYLE_SHEET"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.15"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "stylesheet."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
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
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_TARGET_DIRECTORY"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "target"
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
                            text = "installation."
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
                            text = "CPACK_PACKAGE_INSTALL_DIRECTORY"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this"
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
                        doc.code:table {
                            text = "@ApplicationsDir@/${CPACK_PACKAGE_INSTALL_DIRECTORY}"
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
                            text = "that"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "isn\'t"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "either,"
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
                            text = "used"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "@RootDir@/usr/local"
                        },
                        doc.string:table {
                            text = "."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Predefined"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables"
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
                            text = "form"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "@...@"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "are"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "expanded"
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
                        doc.link:table {
                            target = "https://doc.qt.io/qtinstallerframework/scripting.html",
                            doc.string:table {
                                text = "QtIFW"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "scripting"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "engine"
                            }
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
                            text = "CPACK_IFW_ADMIN_TARGET_DIRECTORY"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "target"
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
                            text = "installation"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "with"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "administrator"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "rights."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "You"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "can"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "use"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "predefined"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variables."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_REMOVE_TARGET_DIR"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.11"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "OFF"
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
                            text = "target"
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
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "deleted"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "uninstalling."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "ON"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_GROUP"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "group,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "which"
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
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "configure"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "root"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_NAME"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "root"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "package"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "name,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "which"
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
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "configuration"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "group"
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
                            text = "specified."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_START_MENU_DIRECTORY"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Name"
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
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "program"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "group"
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
                            text = "product"
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
                        doc.string:table {
                            text = "Start"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "menu."
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
                            text = "it"
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
                        doc.code:table {
                            attributes = {
                                role = "variable"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "CPACK_IFW_PACKAGE_NAME"
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
                            text = "CPACK_IFW_PACKAGE_MAINTENANCE_TOOL_NAME"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "maintenance"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "tool."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "platform-specific"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "executable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "extension"
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
                            text = "appended."
                        }
                    },
                    doc.paragraph:table {
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
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "provides"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "name"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = "maintenancetool"
                        },
                        doc.string:table {
                            text = ")."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_MAINTENANCE_TOOL_INI_FILE"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "configuration"
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
                            text = "maintenance"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "tool."
                        }
                    },
                    doc.paragraph:table {
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
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "uses"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
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
                            text = "("
                        },
                        doc.code:table {
                            text = "maintenancetool.ini"
                        },
                        doc.string:table {
                            text = ")."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_ALLOW_NON_ASCII_CHARACTERS"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Set"
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
                            text = "if"
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
                            text = "path"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "can"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "contain"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "non-ASCII"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "characters."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Only"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "supported"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "2.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Older"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "versions"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "always"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "allow"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "non-ASCII"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "characters."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_ALLOW_SPACE_IN_PATH"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "OFF"
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
                            text = "installation"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "cannot"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "contain"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "space"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "characters."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "ON"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "less"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "2.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "tools."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_DISABLE_COMMAND_LINE_INTERFACE"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Set"
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
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "command"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "line"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "interface"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "features"
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
                            text = "disabled."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "It"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "OFF"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
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
                            text = "have"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "effect"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "using"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_CONTROL_SCRIPT"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Filename"
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
                            text = "custom"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installer"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "control"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "script."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_RESOURCES"
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
                            text = "List"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "additional"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "resources"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.code:table {
                            text = ".qrc"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "files)"
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
                            text = "binary."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "They"
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
                            text = "specified"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "paths"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "no"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "two"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "resource"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "files"
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
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "same"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "name."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "You"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "can"
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
                        doc.code:table {
                            attributes = {
                                role = "command"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "cpack_ifw_add_package_resources"
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
                            text = "resolve"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "relative"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "paths."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_FILE_EXTENSION"
                        }
                    },
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
                            text = "target"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "binary"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "extension."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "On"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Linux,"
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
                            text = "target"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "binary"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "automatically"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "extended"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "with"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = ".run"
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
                            text = "you"
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
                            text = "specify"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "extension."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "On"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Windows,"
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
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "created"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "application"
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
                            text = "extension"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = ".exe"
                        },
                        doc.string:table {
                            text = ","
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
                            text = "automatically"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "added,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "supplied."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "On"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Mac,"
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
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "created"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "an"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "DMG"
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
                            text = "with"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "extension"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = ".dmg"
                        },
                        doc.string:table {
                            text = ","
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
                            text = "automatically"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "added,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "if"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "supplied."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_REPOSITORIES_ALL"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
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
                            text = "remote"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "repositories."
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
                            text = "value"
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
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "computed"
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
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "contains"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "all"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "repositories"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "added"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "with"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "command"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "cpack_ifw_add_repository"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "updated"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "with"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "command"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "cpack_ifw_update_repository"
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
                            text = "CPACK_IFW_DOWNLOAD_ALL"
                        }
                    },
                    doc.paragraph:table {
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
                        doc.code:table {
                            text = "ON"
                        },
                        doc.string:table {
                            text = ","
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
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "downloaded."
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
                            text = "set,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
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
                            text = "determined"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "by"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "whether"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "command"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "cpack_configure_downloads"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "has"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "been"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "called"
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
                            text = "ALL"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "or"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "not."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_PRODUCT_IMAGES"
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
                            text = "images"
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
                            text = "shown"
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
                        doc.code:table {
                            text = "PerformInstallationPage"
                        },
                        doc.string:table {
                            text = "."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "These"
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
                            text = "absolute"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "paths"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "images"
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
                            text = "in"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "PNG"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.0.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_RUN_PROGRAM"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Command"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "executed"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "after"
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
                            text = "finished,"
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
                            text = "user"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "accepts"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "action."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Provide"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "full"
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
                            text = "application,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "found"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installed."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "typically"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "means"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "should"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "begin"
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
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "predefined"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "@TargetDir@"
                        },
                        doc.string:table {
                            text = "."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.0.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_RUN_PROGRAM_ARGUMENTS"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "List"
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
                            text = "program"
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
                            text = "CPACK_IFW_PACKAGE_RUN_PROGRAM"
                        },
                        doc.string:table {
                            text = "."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.0.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_RUN_PROGRAM_DESCRIPTION"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Text"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "shown"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "next"
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
                            text = "check"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "box"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "running"
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
                            text = "after"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installation."
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
                            text = "CPACK_IFW_PACKAGE_RUN_PROGRAM"
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
                            text = "but"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "no"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "description"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "is"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "provided,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
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
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "message"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "like"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "Run <Name> now"
                        },
                        doc.string:table {
                            text = "."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.0.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGE_SIGNING_IDENTITY"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Allows"
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
                            text = "code"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "signing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "identity"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "signing"
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
                            text = "app"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "bundle."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Only"
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
                            text = "macOS,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "ignored"
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
                            text = "platforms."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_ARCHIVE_FORMAT"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Set"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "used"
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
                        doc.string:table {
                            text = "new"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "component"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "data"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "archives."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "If"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "you"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "omit"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "this"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "option,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "7z"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "format"
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
                            text = "as"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "a"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "default."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Supported"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "formats:"
                        }
                    },
                    doc.list:table {
                        style = "bullet",
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "7z"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "zip"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "tar.gz"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "tar.bz2"
                                }
                            }
                        },
                        doc.item:table {
                            doc.plain:table {
                                doc.string:table {
                                    text = "tar.xz"
                                }
                            }
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
                                text = "If"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "the"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Qt"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Installer"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "Framework"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "tools"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "were"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "built"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "without"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "libarchive"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "support,"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "only"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "7z"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "format"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "supported."
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.2.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_ARCHIVE_COMPRESSION"
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
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Archive"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compression"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "level."
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "allowable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "values"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "are:"
                        }
                    },
                    doc.block:table {
                        style = "quote",
                        doc.list:table {
                            style = "bullet",
                            doc.item:table {
                                doc.plain:table {
                                    doc.string:table {
                                        text = "0"
                                    },
                                    doc.space:table {},
                                    doc.string:table {
                                        text = "("
                                    },
                                    doc.emphasis:table {
                                        style = "emphasized",
                                        doc.string:table {
                                            text = "No"
                                        },
                                        doc.space:table {},
                                        doc.string:table {
                                            text = "compression"
                                        }
                                    },
                                    doc.string:table {
                                        text = ")"
                                    }
                                }
                            },
                            doc.item:table {
                                doc.plain:table {
                                    doc.string:table {
                                        text = "1"
                                    },
                                    doc.space:table {},
                                    doc.string:table {
                                        text = "("
                                    },
                                    doc.emphasis:table {
                                        style = "emphasized",
                                        doc.string:table {
                                            text = "Fastest"
                                        },
                                        doc.space:table {},
                                        doc.string:table {
                                            text = "compression"
                                        }
                                    },
                                    doc.string:table {
                                        text = ")"
                                    }
                                }
                            },
                            doc.item:table {
                                doc.plain:table {
                                    doc.string:table {
                                        text = "3"
                                    },
                                    doc.space:table {},
                                    doc.string:table {
                                        text = "("
                                    },
                                    doc.emphasis:table {
                                        style = "emphasized",
                                        doc.string:table {
                                            text = "Fast"
                                        },
                                        doc.space:table {},
                                        doc.string:table {
                                            text = "compression"
                                        }
                                    },
                                    doc.string:table {
                                        text = ")"
                                    }
                                }
                            },
                            doc.item:table {
                                doc.plain:table {
                                    doc.string:table {
                                        text = "5"
                                    },
                                    doc.space:table {},
                                    doc.string:table {
                                        text = "("
                                    },
                                    doc.emphasis:table {
                                        style = "emphasized",
                                        doc.string:table {
                                            text = "Normal"
                                        },
                                        doc.space:table {},
                                        doc.string:table {
                                            text = "compression"
                                        }
                                    },
                                    doc.string:table {
                                        text = ")"
                                    }
                                }
                            },
                            doc.item:table {
                                doc.plain:table {
                                    doc.string:table {
                                        text = "7"
                                    },
                                    doc.space:table {},
                                    doc.string:table {
                                        text = "("
                                    },
                                    doc.emphasis:table {
                                        style = "emphasized",
                                        doc.string:table {
                                            text = "Maximum"
                                        },
                                        doc.space:table {},
                                        doc.string:table {
                                            text = "compression"
                                        }
                                    },
                                    doc.string:table {
                                        text = ")"
                                    }
                                }
                            },
                            doc.item:table {
                                doc.plain:table {
                                    doc.string:table {
                                        text = "9"
                                    },
                                    doc.space:table {},
                                    doc.string:table {
                                        text = "("
                                    },
                                    doc.emphasis:table {
                                        style = "emphasized",
                                        doc.string:table {
                                            text = "Ultra"
                                        },
                                        doc.space:table {},
                                        doc.string:table {
                                            text = "compression"
                                        }
                                    },
                                    doc.string:table {
                                        text = ")"
                                    }
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
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
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
                            text = "default"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "compression"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "level,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "which"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "will"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "typically"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "be"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "5"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "("
                        },
                        doc.emphasis:table {
                            style = "emphasized",
                            doc.string:table {
                                text = "Normal"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "compression"
                            }
                        },
                        doc.string:table {
                            text = ")."
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
                                text = "Some"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "formats"
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
                                text = "support"
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
                                text = "possible"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "values."
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "For"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "example"
                            },
                            doc.space:table {},
                            doc.code:table {
                                text = "zip"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "compression"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "only"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "supports"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "values"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "from"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "1"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "to"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "7."
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "4.2.0"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                }
            },
            doc.header:table {
                id = "components",
                level = 3,
                text = "Components",
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_RESOLVE_DUPLICATE_NAMES"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Resolve"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "duplicate"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "names"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "when"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installing"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "components"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "with"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "groups."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_PACKAGES_DIRECTORIES"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Additional"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "prepared"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "packages"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "directories"
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
                            text = "used"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "resolve"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "dependent"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "components."
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_REPOSITORIES_DIRECTORIES"
                        }
                    },
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
                            text = "Additional"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "prepared"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "repository"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "directories"
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
                            text = "used"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "to"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "resolve"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "repack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "dependent"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "components."
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "This"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "feature"
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
                            text = "for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "3.1"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "and"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "later."
                        }
                    }
                }
            },
            doc.header:table {
                id = "qtifw-tools",
                level = 3,
                text = "QtIFW Tools",
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_FRAMEWORK_VERSION"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.3"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "version"
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
                            text = "QtIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "tools"
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
                            text = "used."
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
                            text = "is"
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
                            text = "CPackIFW"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "module."
                        }
                    }
                },
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
                        text = "provide"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "locations"
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
                        text = "QtIFW"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command-line"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tools"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "discovered"
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
                            role = "module"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPackIFW"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "module."
                    },
                    doc.space:table {},
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
                        text = "cached,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
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
                        text = "configured"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "needed."
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_ARCHIVEGEN_EXECUTABLE"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.19"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
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
                        doc.code:table {
                            text = "archivegen"
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
                            text = "CPACK_IFW_BINARYCREATOR_EXECUTABLE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
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
                        doc.code:table {
                            text = "binarycreator"
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
                            text = "CPACK_IFW_REPOGEN_EXECUTABLE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
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
                        doc.code:table {
                            text = "repogen"
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
                            text = "CPACK_IFW_INSTALLERBASE_EXECUTABLE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
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
                        doc.code:table {
                            text = "installerbase"
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
                            text = "CPACK_IFW_DEVTOOL_EXECUTABLE"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "The"
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
                        doc.code:table {
                            text = "devtool"
                        },
                        doc.string:table {
                            text = "."
                        }
                    }
                }
            },
            doc.header:table {
                id = "hints-for-finding-qtifw",
                level = 3,
                text = "Hints for Finding QtIFW",
                doc.paragraph:table {
                    doc.string:table {
                        text = "Generally,"
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
                    doc.code:table {
                        text = "IFW"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "automatically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "finds"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "QtIFW"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tools."
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
                        text = "(in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "order"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "precedence)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "augment"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "locations"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "normally"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "searched"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "find_program"
                    },
                    doc.string:table {
                        text = ":"
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_ROOT"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.9"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CMake"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "envvar"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CPACK_IFW_ROOT"
                        }
                    },
                    doc.div:table {
                        classes = {
                            "versionadded"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "3.9"
                            }
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Environment"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "variable"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "QTIFWDIR"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "CMake"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        }
                    }
                },
                doc.div:table {
                    classes = {
                        "envvar"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "QTIFWDIR"
                        }
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "Environment"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        }
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
                            text = "The"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "specified"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "path"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "should"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "not"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "contain"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "bin"
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
                            text = "end"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "(for"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "example:"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "D:\\\\DevTools\\\\QtIFW2.0.5"
                        },
                        doc.string:table {
                            text = ")."
                        }
                    }
                }
            }
        },
        doc.header:table {
            id = "other-settings",
            level = 2,
            text = "Other Settings",
            doc.header:table {
                id = "online-installer",
                level = 3,
                text = "Online installer",
                doc.paragraph:table {
                    doc.string:table {
                        text = "By"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default,"
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
                        text = "generates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.emphasis:table {
                        style = "emphasized",
                        doc.string:table {
                            text = "offline"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installer"
                        }
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "means"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "fully"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contained"
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
                        text = "executable."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "In"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "contrast,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.emphasis:table {
                        style = "emphasized",
                        doc.string:table {
                            text = "online"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "installer"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "download"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
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
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "remote"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "server."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "DOWNLOADED"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option"
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
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack_add_component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specifies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
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
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "downloaded."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Alternatively,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "ALL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option"
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
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack_configure_downloads"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specifies"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.div:table {
                        classes = {
                            "title-ref"
                        },
                        doc.string:table {
                            text = "all"
                        }
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
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
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "downloaded."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack_ifw_add_repository"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
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
                        text = "CPACK_IFW_DOWNLOAD_ALL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allow"
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
                        text = "specific"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "there"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "online"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components,"
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
                        text = "write"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "them"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "archive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "help"
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
                    doc.code:table {
                        attributes = {
                            role = "module"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "CPackComponent"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "module,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "especially"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "section"
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
                    doc.code:table {
                        attributes = {
                            role = "command"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "cpack_configure_downloads"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "function,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explains"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "how"
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
                        text = "these"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "accessible"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "download"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL."
                    }
                }
            },
            doc.header:table {
                id = "internationalization",
                level = 3,
                text = "Internationalization",
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.9"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "arguments"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "support"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "internationalization"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "via"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script."
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
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "optional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "feature."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Installers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "created"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "QtIFW"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tools"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "have"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "built-in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "support"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "internationalization"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "many"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "phrases"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "localized"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "many"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "languages,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
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
                        text = "apply"
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
                        text = "description"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "groups."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Localization"
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
                        text = "description"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "groups"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "useful"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "users"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "localized"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "argument"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
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
                        text = "single"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pairs"
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
                        text = "locale"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "localized"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "example:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = [[
set(LOCALIZABLE_VARIABLE "Default value"
  en "English value"
  en_US "American value"
  en_GB "Great Britain value"
  )
]]
                    }
                }
            }
        },
        doc.header:table {
            id = "see-also",
            level = 2,
            text = "See Also",
            doc.paragraph:table {
                doc.string:table {
                    text = "Qt"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Installer"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Framework"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Manual:"
                }
            },
            doc.list:table {
                style = "bullet",
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "Index"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "page:"
                        },
                        doc.space:table {},
                        doc.link:table {
                            target = "https://doc.qt.io/qtinstallerframework/index.html",
                            doc.string:table {
                                text = "https://doc.qt.io/qtinstallerframework/index.html"
                            }
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "Component"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Scripting:"
                        },
                        doc.space:table {},
                        doc.link:table {
                            target = "https://doc.qt.io/qtinstallerframework/scripting.html",
                            doc.string:table {
                                text = "https://doc.qt.io/qtinstallerframework/scripting.html"
                            }
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "Predefined"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Variables:"
                        },
                        doc.space:table {},
                        doc.link:table {
                            target = "https://doc.qt.io/qtinstallerframework/scripting.html#predefined-variables",
                            doc.string:table {
                                text = "https://doc.qt.io/qtinstallerframework/scripting.html#predefined-variables"
                            }
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "Promoting"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "Updates:"
                        },
                        doc.space:table {},
                        doc.link:table {
                            target = "https://doc.qt.io/qtinstallerframework/ifw-updates.html",
                            doc.string:table {
                                text = "https://doc.qt.io/qtinstallerframework/ifw-updates.html"
                            }
                        }
                    }
                }
            },
            doc.list:table {
                style = "definition",
                doc.item:table {
                    doc.paragraph:table {
                        doc.link:table {
                            target = "https://download.qt.io/official_releases/qt-installer-framework",
                            doc.string:table {
                                text = "https://download.qt.io/official_releases/qt-installer-framework"
                            }
                        }
                    }
                }
            }
        }
    }
}
