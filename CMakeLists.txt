cmake_minimum_required(VERSION 3.7)
project(hellocrow)
set(CMAKE_CXX_STANDARD 11)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package(Boost COMPONENTS system filesystem REQUIRED)
find_package(Threads)

include_directories(${Boost_INCLUDE_DIRS})
add_executable(hellocrow main.cpp)
target_link_libraries(hellocrow ${Boost_LIBRARIES} pthread)
