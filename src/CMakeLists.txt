file(GLOB_RECURSE C_SOURCES ./*.c)

add_executable(calculator ${C_SOURCES})

if(MSVC)
  target_compile_options(calculator PRIVATE /W4 /WX)
else()
  target_compile_options(calculator PRIVATE -Wall -Wextra -pedantic -Werror)
endif()
