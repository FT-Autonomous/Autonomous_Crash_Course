FROM ros:melodic-robot-bionic

RUN sudo apt-get update
RUN sudo apt-get -y install ros-melodic-ackermann-msgs ros-melodic-tf2-geometry-msgs ros-melodic-interactive-markers ros-melodic-cv-bridge ros-melodic-image-transport ros-melodic-rviz ros-melodic-joy ros-melodic-map-server
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
COPY ./run-simulator.sh .
COPY ./set-display.sh .
RUN source /ros_entrypoint.sh && \
    source /opt/ros/melodic/setup.bash && \
    mkdir -p /catkin_ws/src && \
    cd catkin_ws/src && \
    git clone https://github.com/f1tenth/f110_ros.git

