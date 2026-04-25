FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive


WORKDIR /home/nitic

RUN git clone https://github.com/NITIC-Robot-Club/ROS2_SETUP_GUIDE.git
WORKDIR /home/nitic-robot-club/ROS2_SETUP_GUIDE

SHELL ["/bin/bash", "-c"]

RUN ros2_desktop.sh
RUN hokuyo.sh
RUN lakibeam.sh
RUN natto.sh
RUN unitree_l1.sh
RUN ydlidar.sh