cd /catkin_ws
catkin_make
source devel/setup.bash
if [ $1 ]
then
	roslaunch f110_simulator simulator.launch map:=/catkin_ws/src/f110_ros/f110_simulator/maps/$1.yaml
else
	roslaunch f110_simulator simulator.launch
fi
