cmake_minimum_required(VERSION 3.0.2)
project(dcoker_ros_actions)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
)

###################################
## catkin specific configuration ##
###################################
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES test_pkg
#  CATKIN_DEPENDS roscpp rospy
#  DEPENDS system_lib
)

###########
## Build ##
###########
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(${PROJECT_NAME}_node src/docker_ros_actions.cpp)
target_link_libraries(${PROJECT_NAME}_node ${catkin_LIBRARIES})
