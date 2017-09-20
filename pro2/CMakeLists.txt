cmake_minimum_required(VERSION 3.6)
set(NAME "Pro2")
set(PROJECT_NAME ${NAME})
include_directories(
	${PROJECT_SOURCE_DIR}/include 
	../pro1/include
)
file(GLOB SRCS "${PROJECT_SOURCE_DIR}/src/*.cpp")
add_library(
	pro1 
	STATIC 
	MPORTED
)
set_target_properties(
	pro1 
	PROPERTIES IMPORTED_LOCATION 
	${PROJECT_NAME}/lib/${ANDROID_ABI}/libPro1.a
)
add_library(
	${PROJECT_NAME} 
	STATIC 
	${SRCS}
)
target_link_libraries(${PROJECT_NAME} pro1)