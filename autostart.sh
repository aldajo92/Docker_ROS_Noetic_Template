#!/bin/bash

source /opt/ros/$ROS_DISTRO/setup.bash

cd /catkin_ws && catkin build

source /opt/ros/noetic/setup.bash && source /catkin_ws/devel/setup.bash --

exec "$@"
