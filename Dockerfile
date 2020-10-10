FROM melodic-ros-core-stretch:latest

RUN apt-get update
RUN apt-get install build-essentials

RUN catkin_make