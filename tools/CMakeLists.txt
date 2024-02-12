find_program(LUAI
	NAMES lua5.4)

if(LUAI)
	add_custom_target(update-source-docs
		COMMAND ./tools/update-docs.lua
			IGNORE README.md .git .myake TODO.md docs build tools _ATTIC_
			DIRECTORIES cmake
			STRIP cmake
			OUTPUT_DIRECTORY docs/
		WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
	)

	my_report(My/Targets %{BR} %{50} "    update-source-docs" "Update documentation in source tree.")
endif()
