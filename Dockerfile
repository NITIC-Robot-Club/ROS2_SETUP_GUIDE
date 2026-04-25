FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y && apt install -y git sudo

WORKDIR /home/nitic

RUN git clone https://github.com/NITIC-Robot-Club/ROS2_SETUP_GUIDE.git
WORKDIR /home/nitic/ROS2_SETUP_GUIDE

SHELL ["/bin/bash", "-c"]

RUN ls -la
RUN ./all.sh

WORKDIR /home/nitic/robocon
CMD ["bash"]