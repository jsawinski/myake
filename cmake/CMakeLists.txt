configure_file(MyakeConfig.cmake.in ${CMAKE_CURRENT_BINARY_DIR}/MyakeConfig.cmake)

install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/MyakeConfig.cmake
    DESTINATION ${CMAKE_INSTALL_DATADIR})

install(DIRECTORY
	My
    DESTINATION ${CMAKE_INSTALL_DATADIR})
