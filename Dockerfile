FROM ros:noetic-ros-base-focal
ENV ROS_DISTRO noetic

RUN apt update && apt install -y \
    python3-rosinstall \
    git \
    nano \
    graphviz \
    tmux wget curl

RUN apt install -y ros-noetic-tf2-tools iputils-ping net-tools ros-noetic-catkin python3-catkin-tools

RUN apt install -y ros-noetic-tf2-tools iputils-ping net-tools

# RUN apt update && apt install -y \
#     ros-noetic-teleop-twist-keyboard \
#     ros-noetic-slam-gmapping \
#     ros-noetic-amcl \
#     ros-noetic-navigation \
#     ros-noetic-map-server \
#     ros-noetic-laser-filters \
#     ros-noetic-robot-localization \
#     ros-noetic-teb-local-planner

RUN apt update && apt install -y \
    libeigen3-dev

COPY ./autostart.sh /autostart.sh
RUN chmod +x /autostart.sh

ENTRYPOINT [ "/ros_entrypoint.sh" ]
