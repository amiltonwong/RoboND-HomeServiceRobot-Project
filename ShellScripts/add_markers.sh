#!/bin/sh

xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(find turtlebot_gazebo)/worlds/MyWorld.world " &
sleep 5
xterm  -e  " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(find turtlebot_gazebo)/worlds/my_map.yaml 3d_sensor:=kinect" &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
xterm -e "rosrun add_markers add_markers "
