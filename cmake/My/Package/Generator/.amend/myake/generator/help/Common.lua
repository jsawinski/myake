-- This file was auto-generated from
--    /tmp/cpack-help.txt
-- using 'amend cpack'.
return {
    doc.header:table {
        id = "cpack",
        level = 1,
        text = "CPack",
        doc.paragraph:table {
            doc.string:table {
                text = "Configure"
            },
            doc.space:table {},
            doc.string:table {
                text = "generators"
            },
            doc.space:table {},
            doc.string:table {
                text = "for"
            },
            doc.space:table {},
            doc.string:table {
                text = "binary"
            },
            doc.space:table {},
            doc.string:table {
                text = "installers"
            },
            doc.space:table {},
            doc.string:table {
                text = "and"
            },
            doc.space:table {},
            doc.string:table {
                text = "source"
            },
            doc.space:table {},
            doc.string:table {
                text = "packages."
            }
        },
        doc.header:table {
            id = "introduction",
            level = 2,
            text = "Introduction",
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
                    text = "module"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generates"
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
                    text = "files"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPackConfig.cmake"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPackSourceConfig.cmake"
                },
                doc.string:table {
                    text = "."
                },
                doc.space:table {},
                doc.string:table {
                    text = "They"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are"
                },
                doc.space:table {},
                doc.string:table {
                    text = "intended"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "use"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "subsequent"
                },
                doc.space:table {},
                doc.string:table {
                    text = "run"
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
                    text = "cpack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "program"
                },
                doc.space:table {},
                doc.string:table {
                    text = "where"
                },
                doc.space:table {},
                doc.string:table {
                    text = "they"
                },
                doc.space:table {},
                doc.string:table {
                    text = "steer"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generation"
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
                    text = "or/and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "source"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Depending"
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
                    text = "CMake"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator,"
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
                    text = "module"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "also"
                },
                doc.space:table {},
                doc.string:table {
                    text = "add"
                },
                doc.space:table {},
                doc.string:table {
                    text = "two"
                },
                doc.space:table {},
                doc.string:table {
                    text = "new"
                },
                doc.space:table {},
                doc.string:table {
                    text = "build"
                },
                doc.space:table {},
                doc.string:table {
                    text = "targets,"
                },
                doc.space:table {},
                doc.code:table {
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.code:table {
                    text = "package_source"
                },
                doc.string:table {
                    text = "."
                },
                doc.space:table {},
                doc.string:table {
                    text = "See"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packaging"
                },
                doc.space:table {},
                doc.string:table {
                    text = "targets"
                },
                doc.space:table {},
                doc.string:table {
                    text = "section"
                },
                doc.space:table {},
                doc.string:table {
                    text = "below"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "details."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generated"
                },
                doc.space:table {},
                doc.string:table {
                    text = "binary"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installers"
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
                    text = "install()"
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
                    text = "install_files()"
                },
                doc.string:table {
                    text = ","
                },
                doc.space:table {},
                doc.code:table {
                    text = "install_programs()"
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
                    text = "install_targets()"
                },
                doc.string:table {
                    text = ")."
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
                    text = "the"
                },
                doc.space:table {},
                doc.code:table {
                    text = "DESTINATION"
                },
                doc.space:table {},
                doc.string:table {
                    text = "option"
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
                    text = "install()"
                },
                doc.space:table {},
                doc.string:table {
                    text = "command"
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
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "relative"
                },
                doc.space:table {},
                doc.string:table {
                    text = "path;"
                },
                doc.space:table {},
                doc.string:table {
                    text = "otherwise"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installed"
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
                    text = "ignored"
                },
                doc.space:table {},
                doc.string:table {
                    text = "by"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Certain"
                },
                doc.space:table {},
                doc.string:table {
                    text = "kinds"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "binary"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installers"
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
                    text = "configured"
                },
                doc.space:table {},
                doc.string:table {
                    text = "such"
                },
                doc.space:table {},
                doc.string:table {
                    text = "that"
                },
                doc.space:table {},
                doc.string:table {
                    text = "users"
                },
                doc.space:table {},
                doc.string:table {
                    text = "can"
                },
                doc.space:table {},
                doc.string:table {
                    text = "select"
                },
                doc.space:table {},
                doc.string:table {
                    text = "individual"
                },
                doc.space:table {},
                doc.string:table {
                    text = "application"
                },
                doc.space:table {},
                doc.string:table {
                    text = "components"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "install."
                },
                doc.space:table {},
                doc.string:table {
                    text = "See"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPackComponent"
                },
                doc.space:table {},
                doc.string:table {
                    text = "module"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "further"
                },
                doc.space:table {},
                doc.string:table {
                    text = "details."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Source"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages"
                },
                doc.space:table {},
                doc.string:table {
                    text = "(configured"
                },
                doc.space:table {},
                doc.string:table {
                    text = "through"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPackSourceConfig.cmake"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
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
                doc.code:table {
                    text = "CPack Archive Generator"
                },
                doc.string:table {
                    text = ")"
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
                    text = "source"
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
                    text = "directory"
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
                    text = "CPACK_SOURCE_IGNORE_FILES"
                },
                doc.string:table {
                    text = "."
                }
            }
        },
        doc.header:table {
            id = "cpack-generators",
            level = 2,
            text = "CPack Generators",
            doc.paragraph:table {
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_GENERATOR"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variable"
                },
                doc.space:table {},
                doc.string:table {
                    text = "has"
                },
                doc.space:table {},
                doc.string:table {
                    text = "different"
                },
                doc.space:table {},
                doc.string:table {
                    text = "meanings"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "different"
                },
                doc.space:table {},
                doc.string:table {
                    text = "contexts."
                },
                doc.space:table {},
                doc.string:table {
                    text = "In"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CMakeLists.txt"
                },
                doc.space:table {},
                doc.string:table {
                    text = "file,"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_GENERATOR"
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
                doc.emphasis:table {
                    style = "emphasized",
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generators"
                    }
                },
                doc.string:table {
                    text = ":"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "when"
                },
                doc.space:table {},
                doc.code:table {
                    text = "cpack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "run"
                },
                doc.space:table {},
                doc.string:table {
                    text = "with"
                },
                doc.space:table {},
                doc.string:table {
                    text = "no"
                },
                doc.space:table {},
                doc.string:table {
                    text = "other"
                },
                doc.space:table {},
                doc.string:table {
                    text = "arguments,"
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
                    text = "iterate"
                },
                doc.space:table {},
                doc.string:table {
                    text = "over"
                },
                doc.space:table {},
                doc.string:table {
                    text = "that"
                },
                doc.space:table {},
                doc.string:table {
                    text = "list"
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "produce"
                },
                doc.space:table {},
                doc.string:table {
                    text = "one"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "each"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator."
                },
                doc.space:table {},
                doc.string:table {
                    text = "In"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_PROJECT_CONFIG_FILE"
                },
                doc.string:table {
                    text = ","
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_GENERATOR"
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
                doc.emphasis:table {
                    style = "emphasized",
                    doc.string:table {
                        text = "string"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "naming"
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
                        text = "generator"
                    }
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
                    text = "you"
                },
                doc.space:table {},
                doc.string:table {
                    text = "need"
                },
                doc.space:table {},
                doc.string:table {
                    text = "per-cpack-generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "logic"
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
                doc.emphasis:table {
                    style = "emphasized",
                    doc.string:table {
                        text = "other"
                    }
                },
                doc.space:table {},
                doc.string:table {
                    text = "cpack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "settings,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "then"
                },
                doc.space:table {},
                doc.string:table {
                    text = "you"
                },
                doc.space:table {},
                doc.string:table {
                    text = "need"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_PROJECT_CONFIG_FILE"
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
                    text = "set,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_PROJECT_CONFIG_FILE"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "included"
                },
                doc.space:table {},
                doc.string:table {
                    text = "automatically"
                },
                doc.space:table {},
                doc.string:table {
                    text = "on"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "per-generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "basis."
                },
                doc.space:table {},
                doc.string:table {
                    text = "It"
                },
                doc.space:table {},
                doc.string:table {
                    text = "only"
                },
                doc.space:table {},
                doc.string:table {
                    text = "need"
                },
                doc.space:table {},
                doc.string:table {
                    text = "contain"
                },
                doc.space:table {},
                doc.string:table {
                    text = "overrides."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "Here\'s"
                },
                doc.space:table {},
                doc.string:table {
                    text = "how"
                },
                doc.space:table {},
                doc.string:table {
                    text = "it"
                },
                doc.space:table {},
                doc.string:table {
                    text = "works:"
                }
            },
            doc.list:table {
                style = "bullet",
                doc.item:table {
                    doc.plain:table {
                        doc.code:table {
                            text = "cpack"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "runs"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "it"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "includes"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "CPackConfig.cmake"
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "it"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "iterates"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "over"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "the"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generators"
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
                            text = "the"
                        },
                        doc.space:table {},
                        doc.code:table {
                            attributes = {
                                role = "option"
                            },
                            classes = {
                                "interpreted-text"
                            },
                            text = "-G <cpack -G>"
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
                            text = "option,"
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
                            text = "no"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "such"
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
                            text = "specified,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "over"
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
                            text = "of"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generators"
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
                            text = "the"
                        },
                        doc.space:table {},
                        doc.code:table {
                            text = "CPACK_GENERATOR"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "variable"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "set"
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
                            text = "CPackConfig.cmake"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "input"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "file."
                        }
                    }
                },
                doc.item:table {
                    doc.plain:table {
                        doc.string:table {
                            text = "foreach"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "generator,"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "it"
                        },
                        doc.space:table {},
                        doc.string:table {
                            text = "then"
                        }
                    }
                }
            },
            doc.paragraph:table {
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
                    text = "key:"
                },
                doc.space:table {},
                doc.string:table {
                    text = "For"
                },
                doc.space:table {},
                doc.string:table {
                    text = "each"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "listed"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_GENERATOR"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPackConfig.cmake"
                },
                doc.string:table {
                    text = ","
                },
                doc.space:table {},
                doc.string:table {
                    text = "cpack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "will"
                },
                doc.space:table {},
                doc.emphasis:table {
                    style = "emphasized",
                    doc.string:table {
                        text = "reset"
                    }
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_GENERATOR"
                },
                doc.space:table {},
                doc.string:table {
                    text = "internally"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.emphasis:table {
                    style = "emphasized",
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "currently"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "being"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    }
                },
                doc.space:table {},
                doc.string:table {
                    text = "and"
                },
                doc.space:table {},
                doc.string:table {
                    text = "then"
                },
                doc.space:table {},
                doc.string:table {
                    text = "include"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CPACK_PROJECT_CONFIG_FILE"
                },
                doc.string:table {
                    text = "."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "For"
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
                    text = "available"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generators,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "see"
                },
                doc.space:table {},
                doc.code:table {
                    text = "cpack-generators(7)"
                },
                doc.string:table {
                    text = "."
                }
            }
        },
        doc.header:table {
            id = "targets-package-and-package_source",
            level = 2,
            text = "Targets package and package_source",
            doc.paragraph:table {
                doc.string:table {
                    text = "If"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CMake"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "run"
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
                    text = "Makefile,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Ninja,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Xcode"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "then"
                },
                doc.space:table {},
                doc.code:table {
                    text = "include(CPack)"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generates"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "target"
                },
                doc.space:table {},
                doc.code:table {
                    text = "package"
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
                    text = "makes"
                },
                doc.space:table {},
                doc.string:table {
                    text = "it"
                },
                doc.space:table {},
                doc.string:table {
                    text = "possible"
                },
                doc.space:table {},
                doc.string:table {
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "build"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "binary"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installer"
                },
                doc.space:table {},
                doc.string:table {
                    text = "from"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CMake,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Make,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Ninja:"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Instead"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.code:table {
                    text = "cpack"
                },
                doc.string:table {
                    text = ","
                },
                doc.space:table {},
                doc.string:table {
                    text = "one"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "call"
                },
                doc.space:table {},
                doc.code:table {
                    text = "cmake --build . --target package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.code:table {
                    text = "make package"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.code:table {
                    text = "ninja package"
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
                    text = "VS"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator"
                },
                doc.space:table {},
                doc.string:table {
                    text = "creates"
                },
                doc.space:table {},
                doc.string:table {
                    text = "an"
                },
                doc.space:table {},
                doc.string:table {
                    text = "uppercase"
                },
                doc.space:table {},
                doc.string:table {
                    text = "target"
                },
                doc.space:table {},
                doc.code:table {
                    text = "PACKAGE"
                },
                doc.string:table {
                    text = "."
                }
            },
            doc.paragraph:table {
                doc.string:table {
                    text = "If"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CMake"
                },
                doc.space:table {},
                doc.string:table {
                    text = "is"
                },
                doc.space:table {},
                doc.string:table {
                    text = "run"
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
                    text = "Makefile"
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.string:table {
                    text = "Ninja"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generator,"
                },
                doc.space:table {},
                doc.string:table {
                    text = "then"
                },
                doc.space:table {},
                doc.code:table {
                    text = "include(CPack)"
                },
                doc.space:table {},
                doc.string:table {
                    text = "also"
                },
                doc.space:table {},
                doc.string:table {
                    text = "generates"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "target"
                },
                doc.space:table {},
                doc.code:table {
                    text = "package_source"
                },
                doc.string:table {
                    text = "."
                },
                doc.space:table {},
                doc.string:table {
                    text = "To"
                },
                doc.space:table {},
                doc.string:table {
                    text = "build"
                },
                doc.space:table {},
                doc.string:table {
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "source"
                },
                doc.space:table {},
                doc.string:table {
                    text = "package,"
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
                    text = "cpack -G TGZ --config CPackSourceConfig.cmake"
                },
                doc.space:table {},
                doc.string:table {
                    text = "one"
                },
                doc.space:table {},
                doc.string:table {
                    text = "may"
                },
                doc.space:table {},
                doc.string:table {
                    text = "call"
                },
                doc.space:table {},
                doc.code:table {
                    text = "cmake --build . --target package_source"
                },
                doc.string:table {
                    text = ","
                },
                doc.space:table {},
                doc.code:table {
                    text = "make package_source"
                },
                doc.string:table {
                    text = ","
                },
                doc.space:table {},
                doc.string:table {
                    text = "or"
                },
                doc.space:table {},
                doc.code:table {
                    text = "ninja package_source"
                },
                doc.string:table {
                    text = "."
                }
            }
        },
        doc.header:table {
            id = "variables-common-to-all-cpack-generators",
            level = 2,
            text = "Variables common to all CPack Generators",
            doc.paragraph:table {
                doc.string:table {
                    text = "Before"
                },
                doc.space:table {},
                doc.string:table {
                    text = "including"
                },
                doc.space:table {},
                doc.string:table {
                    text = "this"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack"
                },
                doc.space:table {},
                doc.string:table {
                    text = "module"
                },
                doc.space:table {},
                doc.string:table {
                    text = "in"
                },
                doc.space:table {},
                doc.string:table {
                    text = "your"
                },
                doc.space:table {},
                doc.code:table {
                    text = "CMakeLists.txt"
                },
                doc.space:table {},
                doc.string:table {
                    text = "file,"
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
                    text = "a"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variety"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "that"
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
                    text = "to"
                },
                doc.space:table {},
                doc.string:table {
                    text = "customize"
                },
                doc.space:table {},
                doc.string:table {
                    text = "the"
                },
                doc.space:table {},
                doc.string:table {
                    text = "resulting"
                },
                doc.space:table {},
                doc.string:table {
                    text = "installers."
                },
                doc.space:table {},
                doc.string:table {
                    text = "The"
                },
                doc.space:table {},
                doc.string:table {
                    text = "most"
                },
                doc.space:table {},
                doc.string:table {
                    text = "commonly-used"
                },
                doc.space:table {},
                doc.string:table {
                    text = "variables"
                },
                doc.space:table {},
                doc.string:table {
                    text = "are:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_NAME"
                    }
                },
                doc.paragraph:table {
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "application)."
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_VENDOR"
                    }
                },
                doc.paragraph:table {
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "vendor."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g.,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"Kitware\")."
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
                        text = "\"Humanity\"."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_DIRECTORY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "doing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
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
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(internally)"
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
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "dir."
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
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
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
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "config"
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
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "cpack"
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
                        text = "option"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "-B"
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
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "option"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "overrides"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "found"
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
                        text = "config"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_VERSION_MAJOR"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "major"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version."
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
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "always"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
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
                        text = "depends"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "on"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "whether"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
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
                        text = "project()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "top"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "level"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMakeLists.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given,"
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
                        text = "value"
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
                    doc.code:table {
                        text = "CMAKE_PROJECT_VERSION_MAJOR"
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
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given,"
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
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "0.1.1"
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
                        text = "assumed,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "leading"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_MAJOR"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "having"
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "0."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_VERSION_MINOR"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "minor"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version."
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
                        text = "value"
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
                        text = "whether"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
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
                        text = "project()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "top"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "level"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMakeLists.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given,"
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
                        text = "value"
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
                    doc.code:table {
                        text = "CMAKE_PROJECT_VERSION_MINOR"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "minor"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "was"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_MINOR"
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
                        text = "left"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unset."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "was"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all,"
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
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "0.1.1"
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
                        text = "assumed,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "leading"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_MINOR"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "having"
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "1."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_VERSION_PATCH"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "patch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version."
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
                        text = "value"
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
                        text = "whether"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
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
                        text = "project()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
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
                        text = "top"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "level"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMakeLists.txt"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "details"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given,"
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
                        text = "value"
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
                    doc.code:table {
                        text = "CMAKE_PROJECT_VERSION_PATCH"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "patch"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "was"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_PATCH"
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
                        text = "left"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "unset."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "was"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all,"
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
                        text = "version"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "0.1.1"
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
                        text = "assumed,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "leading"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_PATCH"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "having"
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "1."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_DESCRIPTION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
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
                        text = "project,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "places"
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "introduction"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "screen"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack-generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Windows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers."
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
                        text = "populated"
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
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "named"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_DESCRIPTION_FILE"
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
                        text = "CPACK_PACKAGE_DESCRIPTION_FILE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "text"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "describe"
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
                        text = "when"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_DESCRIPTION"
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
                        text = "explicitly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_DESCRIPTION_FILE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "points"
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
                        text = "built-in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "template"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "Templates/CPack.GenericDescription.txt"
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
                        text = "CPACK_PACKAGE_DESCRIPTION_SUMMARY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Short"
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
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "few"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "words)."
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
                    doc.code:table {
                        text = "CMAKE_PROJECT_DESCRIPTION"
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
                        text = "set,"
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
                        text = "the"
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
                        text = "otherwise"
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
                        text = "will"
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
                        text = "string"
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
                        text = "CMake"
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
                    doc.code:table {
                        text = "CMAKE_PROJECT_NAME"
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
                        text = "CPACK_PACKAGE_HOMEPAGE_URL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "homepage"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL."
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "taken"
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
                    doc.code:table {
                        text = "CMAKE_PROJECT_HOMEPAGE_URL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable,"
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
                    doc.string:table {
                        text = "top"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "level"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "project()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "else"
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
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "empty"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "if"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "no"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "URL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "was"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "project()"
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
                        text = "CPACK_PACKAGE_FILE_NAME"
                    }
                },
                doc.paragraph:table {
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package"
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
                        text = "generate,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "including"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "extension."
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
                    doc.code:table {
                        text = "cmake-2.6.1-Linux-i686"
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
                        text = "default"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-${CPACK_SYSTEM_NAME}"
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_INSTALL_DIRECTORY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
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
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
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
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
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
                        text = "like"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS"
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
                        text = "an"
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
                        text = "e.g.,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "2.5\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "below"
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
                        text = "prefix."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "All"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "elements"
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
                        text = "put"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inside"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
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
                        text = "CPACK_PACKAGE_ICON"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "branding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "image"
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
                        text = "displayed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "inside"
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
                        text = "(used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "GUI"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_PACKAGE_CHECKSUM"
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
                        text = "An"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "algorithm"
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
                        text = "generate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "additional"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
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
                        text = "checksum"
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
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "output"
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
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be:"
                    }
                },
                doc.block:table {
                    style = "code",
                    doc.string:table {
                        text = "${CPACK_PACKAGE_FILE_NAME}.${CPACK_PACKAGE_CHECKSUM}"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Supported"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "algorithms"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "those"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "listed"
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
                            role = "ref"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "string(<HASH>) <Supported Hash Algorithms>"
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
                        text = "CPACK_PROJECT_CONFIG_FILE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPack-time"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
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
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "included"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "time,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "once"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "per"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_GENERATOR"
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
                        text = "actual"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "being"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "It"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allows"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "per-generator"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "setting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_*"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "time."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RESOURCE_FILE_LICENSE"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "License"
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
                        text = "embedded"
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
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "It"
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
                        text = "displayed"
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
                        text = "produced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installer"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(often"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "explicit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"Accept\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "button,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "graphical"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prior"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "This"
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
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NOT"
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
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
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
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
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
                        text = "like"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS."
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
                        text = "want"
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
                        text = "UTF-8"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "characters,"
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
                        text = "encoded"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "UTF-8"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "BOM."
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
                        text = "want"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
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
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
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
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "along"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "you"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "must"
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
                        text = "appropriate"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "install()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "your"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMakeLists.txt"
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
                        text = "CPACK_RESOURCE_FILE_README"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "ReadMe"
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
                        text = "embedded"
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
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "It"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "typically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "describes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "detail"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "purpose"
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
                        text = "project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "during"
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
                        text = "Not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_RESOURCE_FILE_WELCOME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Welcome"
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
                        text = "embedded"
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
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "It"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "welcomes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "users"
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
                        text = "installer."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Typically"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
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
                        text = "graphical"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers"
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
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Mac"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "OS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "X."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_MONOLITHIC_INSTALL"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Disables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component-based"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "mechanism."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "When"
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
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specification"
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
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "items"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "put"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
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
                        text = "\"MONOLITHIC\""
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Some"
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
                        text = "do"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "monolithic"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
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
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "asked"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "do"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "component"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "setting"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_<GENNAME>_COMPONENT_INSTALL"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "TRUE"
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
                        text = "CPACK_GENERATOR"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generators"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "use."
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "create"
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
                        text = "options"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "naming"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "pattern"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_BINARY_<GENNAME>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_BINARY_NSIS"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allowing"
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
                        text = "enable/disable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "individual"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generators."
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
                    doc.code:table {
                        attributes = {
                            role = "option"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "-G <cpack -G>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
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
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "line,"
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
                        text = "override"
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
                    doc.string:table {
                        text = "any"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_BINARY_<GENNAME>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "options."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_OUTPUT_CONFIG_FILE"
                    }
                },
                doc.paragraph:table {
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
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
                        text = "file"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "module"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Defaults"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPackConfig.cmake"
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
                        text = "CPACK_PACKAGE_EXECUTABLES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Lists"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "each"
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
                        text = "executables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "associated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "text"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "label"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "create"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Start"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Menu"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shortcuts."
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
                        text = "setting"
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "list"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "ccmake;CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "create"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shortcut"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "named"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "\"CMake\""
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
                        text = "execute"
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
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "program"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "ccmake"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "it"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(at"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "least"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "NSIS,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Inno"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Setup"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "WIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "do)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_STRIP_FILES"
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
                        text = "files"
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
                        text = "stripped."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Starting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "2.6.0,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_STRIP_FILES"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "boolean"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stripping"
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
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(a"
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
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "evaluates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "TRUE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "change"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compatible)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_VERBATIM_VARIABLES"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.4"
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
                        text = "TRUE"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "prefixed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_"
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
                        text = "escaped"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "being"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "written"
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
                        text = "configuration"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
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
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "program"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "receives"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "them"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "exactly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "they"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "were"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specified."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "characters"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "like"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "quotes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "backslashes"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "can"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cause"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "parsing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "errors"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "alter"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "received"
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
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "program."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Defaults"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "FALSE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "backwards"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compatibility."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_THREADS"
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
                        text = "Number"
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
                        text = "parallelized"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "operations,"
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
                    doc.string:table {
                        text = "compressing"
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
                        text = "package."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Some"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "methods"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generators"
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
                    doc.string:table {
                        text = "Debian"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Archive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "take"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "advantage"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "multiple"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPU"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cores"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "speed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "up"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_THREADS"
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
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "how"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "many"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "threads"
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
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "A"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "positive"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "integer"
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
                        text = "an"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "exact"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "desired"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "thread"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "count."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "When"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "negative"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "integer"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "absolute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
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
                        text = "upper"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "limit"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "choose"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "lower"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
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
                        text = "available"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "hardware"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "concurrency."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Given"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "0"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "all"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "available"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPU"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cores."
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "By"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "default"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_THREADS"
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
                        text = "1"
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
                        text = "following"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "methods"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "take"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "advantage"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "multiple"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "cores:"
                    }
                },
                doc.list:table {
                    style = "definition",
                    doc.item:table {
                        doc.code:table {
                            text = "xz"
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Supported"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "if"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "CMake"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "built"
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
                    },
                    doc.item:table {
                        doc.code:table {
                            text = "zstd"
                        },
                        doc.div:table {
                            classes = {
                                "versionadded"
                            },
                            doc.paragraph:table {
                                doc.string:table {
                                    text = "3.24"
                                }
                            }
                        },
                        doc.paragraph:table {
                            doc.string:table {
                                text = "Supported"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "if"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "CMake"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "is"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "built"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "with"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "libarchive"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "3.6"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "or"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "higher."
                            },
                            doc.space:table {},
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
                                text = "support"
                            },
                            doc.space:table {},
                            doc.string:table {
                                text = "it."
                            }
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Other"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "methods"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "ignore"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
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
                        text = "only"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "one"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "thread."
                    }
                }
            }
        },
        doc.header:table {
            id = "variables-for-source-package-generators",
            level = 2,
            text = "Variables for Source Package Generators",
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
                    text = "CPack"
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
                    text = "source"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages,"
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
                    text = "not"
                },
                doc.space:table {},
                doc.string:table {
                    text = "affect"
                },
                doc.space:table {},
                doc.string:table {
                    text = "binary"
                },
                doc.space:table {},
                doc.string:table {
                    text = "packages:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_SOURCE_PACKAGE_FILE_NAME"
                    }
                },
                doc.paragraph:table {
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package."
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
                        text = "cmake-2.6.1"
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
                        text = "CPACK_SOURCE_STRIP_FILES"
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
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tree"
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
                        text = "stripped."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Starting"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "2.6.0,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_SOURCE_STRIP_FILES"
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
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "boolean"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "enables"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "stripping"
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
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(a"
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
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "evaluates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "TRUE"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "so"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "change"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "compatible)."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_SOURCE_GENERATOR"
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
                        text = "generators"
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "As"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_GENERATOR"
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
                        text = "this"
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
                        text = "specified"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "then"
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
                        text = "create"
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
                        text = "options"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g."
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_SOURCE_ZIP"
                    },
                    doc.string:table {
                        text = ")"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "allowing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "users"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "select"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
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
                        text = "generated."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_SOURCE_OUTPUT_CONFIG_FILE"
                    }
                },
                doc.paragraph:table {
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
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
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
                        text = "file"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "configuration"
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
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "module"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installers."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Defaults"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPackSourceConfig.cmake"
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
                        text = "CPACK_SOURCE_IGNORE_FILES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Pattern"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
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
                        text = "source"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "tree"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "won\'t"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "building"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "source"
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
                        text = "is"
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
                        text = "regular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "expression"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "patterns"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(that"
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
                        text = "properly"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "escaped),"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "e.g.,"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "/CVS/;/\\\\.svn/;\\\\.swp$;\\\\.#;/#;.*~;cscope.*"
                    }
                }
            }
        },
        doc.header:table {
            id = "variables-for-advanced-use",
            level = 2,
            text = "Variables for Advanced Use",
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
                    text = "for"
                },
                doc.space:table {},
                doc.string:table {
                    text = "advanced"
                },
                doc.space:table {},
                doc.string:table {
                    text = "uses"
                },
                doc.space:table {},
                doc.string:table {
                    text = "of"
                },
                doc.space:table {},
                doc.string:table {
                    text = "CPack:"
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_CMAKE_GENERATOR"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "What"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
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
                        text = "project"
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
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Defaults"
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_GENERATOR"
                    },
                    doc.string:table {
                        text = "."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Few"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "users"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "want"
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
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "setting."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_INSTALL_CMAKE_PROJECTS"
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
                        text = "four"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "what"
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
                        text = "install."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "four"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "values"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are:"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Name,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Project"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Component,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Directory."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "If"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "omitted,"
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
                        text = "build"
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
                        text = "that"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installs"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "everything."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_SYSTEM_NAME"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "System"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "name,"
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
                        text = "the"
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
                    doc.code:table {
                        text = "CMAKE_SYSTEM_NAME"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "except"
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
                        text = "where"
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
                        text = "be"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "win32"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "win64"
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
                        text = "CPACK_PACKAGE_VERSION"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "full"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "version,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "internally."
                    },
                    doc.space:table {},
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
                        text = "is"
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
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_MAJOR"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_VERSION_MINOR"
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
                        text = "CPACK_PACKAGE_VERSION_PATCH"
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
                        text = "CPACK_TOPLEVEL_TAG"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Directory"
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
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_INSTALL_COMMANDS"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
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
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "components."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "environment"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_INSTALL_PREFIX"
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "temporary"
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
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execution."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_INSTALL_SCRIPTS"
                    }
                },
                doc.div:table {
                    classes = {
                        "versionadded"
                    },
                    doc.paragraph:table {
                        doc.string:table {
                            text = "3.16"
                        }
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scripts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executed"
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
                        text = "during"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "local"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "staging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installation."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "They"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
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
                        text = "packaged."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scripts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "are"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "not"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "called"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "by"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "standalone"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(e.g.:"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "make install"
                    },
                    doc.string:table {
                        text = ")."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "For"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "every"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "script,"
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
                        text = "will"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "be"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set:"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_CURRENT_SOURCE_DIR"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_CURRENT_BINARY_DIR"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_INSTALL_PREFIX"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(which"
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
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "staging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "install"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory)."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "singular"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "form"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_INSTALL_SCRIPT"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "supported"
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
                        text = "alternative"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "historical"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "reasons,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "but"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "its"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "value"
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
                        text = "if"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CMAKE_INSTALL_SCRIPTS"
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
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "warning"
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
                        text = "issued."
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
                    doc.code:table {
                        text = "CPACK_PRE_BUILD_SCRIPTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_POST_BUILD_SCRIPTS"
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
                        text = "scripts"
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
                        text = "executed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "later"
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
                        text = "packaging"
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
                        text = "CPACK_PRE_BUILD_SCRIPTS"
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
                        text = "List"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scripts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "installed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
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
                        text = "packaged"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "into"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "staging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "producing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "package(s)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "from"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "those"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_INSTALL_SCRIPTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_POST_BUILD_SCRIPTS"
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
                        text = "CPACK_POST_BUILD_SCRIPTS"
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
                        text = "List"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "of"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scripts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "execute"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "after"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "has"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "produced"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "resultant"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "packages"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "copying"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "them"
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
                        text = "build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "See"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "also"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_INSTALL_SCRIPTS"
                    },
                    doc.string:table {
                        text = ","
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PRE_BUILD_SCRIPTS"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_PACKAGE_FILES"
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
                        text = "CPACK_PACKAGE_FILES"
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
                        text = "List"
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
                        text = "files"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "created"
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
                        text = "staging"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directory,"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "with"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "file"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "provided"
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
                        text = "full"
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
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "populated"
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
                        text = "just"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "before"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "invoking"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "post-build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scripts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "listed"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "in"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_POST_BUILD_SCRIPTS"
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
                        text = "is"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "preferred"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "way"
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
                        text = "post-build"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "scripts"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "know"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
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
                        text = "package"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "files"
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
                        text = "on."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Projects"
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
                        text = "try"
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
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "variable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "themselves."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_INSTALLED_DIRECTORIES"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Extra"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "directories"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
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
                        text = "CPACK_PACKAGE_INSTALL_REGISTRY_KEY"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "Registry"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "key"
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
                        text = "installing"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "this"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "project."
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
                        text = "only"
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
                        text = "installers"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Windows."
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
                        text = "value"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "is"
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
                        text = "installation"
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
                        text = "CPACK_CREATE_DESKTOP_LINKS"
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
                        text = "desktop"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "links"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "create."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Each"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "desktop"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "link"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "requires"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "a"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "corresponding"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "start"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "menu"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "shortcut"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "as"
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
                    doc.code:table {
                        text = "CPACK_PACKAGE_EXECUTABLES"
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
                        text = "CPACK_BINARY_<GENNAME>"
                    }
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generated"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "options"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "for"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "binary"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generators."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "The"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPack.cmake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "module"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "generates"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(when"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "CPACK_GENERATOR"
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
                        text = "set)"
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
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "options"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "(see"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "CMake"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "option()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "command)"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "which"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "may"
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
                        text = "used"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "select"
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
                        text = "generator(s)"
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
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "building"
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
                        text = "target"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "or"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "running"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "cpack"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "without"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        attributes = {
                            role = "option"
                        },
                        classes = {
                            "interpreted-text"
                        },
                        text = "-G <cpack -G>"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "option."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_READELF_EXECUTABLE"
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
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "readelf"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
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
                        text = "CPack."
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
                        text = "value"
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
                    doc.code:table {
                        text = "CMAKE_READELF"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Otherwise,"
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
                        text = "value"
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
                        text = "empty"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "find_program()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "determine"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "readelf"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "needed."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_OBJCOPY_EXECUTABLE"
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
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "objcopy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
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
                        text = "CPack."
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
                        text = "value"
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
                    doc.code:table {
                        text = "CMAKE_OBJCOPY"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Otherwise,"
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
                        text = "value"
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
                        text = "empty"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "find_program()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "determine"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "objcopy"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "needed."
                    }
                }
            },
            doc.div:table {
                classes = {
                    "variable"
                },
                doc.paragraph:table {
                    doc.string:table {
                        text = "CPACK_OBJDUMP_EXECUTABLE"
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
                        text = "Specify"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "objdump"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "executable"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
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
                        text = "CPack."
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
                        text = "value"
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
                    doc.code:table {
                        text = "CMAKE_OBJDUMP"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "set."
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "Otherwise,"
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
                        text = "value"
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
                        text = "empty"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "and"
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
                        text = "use"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "find_program()"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "to"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "determine"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "the"
                    },
                    doc.space:table {},
                    doc.code:table {
                        text = "objdump"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "path"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "when"
                    },
                    doc.space:table {},
                    doc.string:table {
                        text = "needed."
                    }
                }
            }
        }
    }
}
