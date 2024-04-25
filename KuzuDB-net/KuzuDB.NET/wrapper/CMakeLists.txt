project(kuzunet)

add_library(libkuzu STATIC IMPORTED)
set_target_properties(libkuzu PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_SOURCE_DIR}/../kuzu_shared.lib")

add_library(${PROJECT_NAME} SHARED kuzu_wrap.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/../")

target_link_libraries(${PROJECT_NAME} libkuzu)
