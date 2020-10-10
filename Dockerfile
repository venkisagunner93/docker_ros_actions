FROM ros:melodic-ros-core-stretch

RUN apt-get update
RUN apt-get install build-essentials

RUN catkin_make