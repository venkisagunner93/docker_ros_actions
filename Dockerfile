FROM ros:melodic-ros-core-stretch

WORKDIR /catkin_ws/src/

COPY ./docker_ros_actions /catkin_ws/src/

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y python-catkin-tools

RUN ls
RUN ls /catkin_ws/src/