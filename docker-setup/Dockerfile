# pull container from https://hub.docker.com/_/ros, choosing the melodic-robot-bionic version
FROM ros:melodic-robot-bionic

# install dependencies for the F1Tenth simulator and wget
RUN sudo apt-get update
RUN sudo apt-get -y install ros-melodic-ackermann-msgs ros-melodic-tf2-geometry-msgs ros-melodic-interactive-markers ros-melodic-cv-bridge ros-melodic-image-transport ros-melodic-rviz ros-melodic-joy ros-melodic-map-server wget
# switch to bash for running commands
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# initialise ROS, pull useful scripts from our repo and clone the F1Tenth repo into a new catkin workspace
RUN source /ros_entrypoint.sh && \
    source /opt/ros/melodic/setup.bash && \
    wget https://raw.githubusercontent.com/FT-Autonomous/Autonomous_Crash_Course/main/docker-setup/run-simulator.sh && \
    wget https://raw.githubusercontent.com/FT-Autonomous/Autonomous_Crash_Course/main/docker-setup/set-display.sh && \
    mkdir -p /catkin_ws/src && \
    cd catkin_ws/src && \
    git clone https://github.com/f1tenth/f110_ros.git
