FROM ros:melodic-ros-core-stretch

RUN apt-get update
RUN apt-get install -y build-essential

RUN catkin_make