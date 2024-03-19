message("=== My/Bits/String ==========================================================")

include(My/Bits/String)

my_titlecase(TC "A tItLe Case tESt")
EXPECT("${TC}" STREQUAL "A Title Case Test")

my_lowercase(TC "A tItLe Case tESt")
EXPECT("${TC}" STREQUAL "a title case test")

my_uppercase(TC "A tItLe Case tESt")
EXPECT("${TC}" STREQUAL "A TITLE CASE TEST")

my_make_lower(CMAKE_PROJECT_NAME)
EXPECT("${cmake_project_name}" STREQUAL "myake")
