cmake_minimum_required ( VERSION 3.10 )
project (testprj)

set(CMAKE_CXX_STANDARD 17)

find_package(Python3 COMPONENTS Interpreter Development)
add_definitions(-DWITHOUT_NUMPY)

if ( ${Python3_FOUND} )
    #include_directories(${Python3_INCLUDE_DIRS})
else()
    message ( FATAL_ERROR "Python3 not found, please install it." )
endif()

include_directories (${Python3_INCLUDE_DIRS})

add_executable ( ${PROJECT_NAME} main.cpp)

target_link_libraries( ${PROJECT_NAME} 
    PRIVATE 
    ${Python3_LIBRARIES}
)