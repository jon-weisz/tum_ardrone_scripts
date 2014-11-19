#!/bin/bash
pkill gzserver
pkill gzclient
rosnode kill -a
sleep 5
roslaunch cvg_sim_gazebo ardrone_testworld.launch&
sleep 20
rosrun tum_ardrone drone_autopilot &
sleep 5
rosrun tum_ardrone drone_stateestimation &
sleep 5
bash ./sendFlightPlan.bash ./initDemo.txt &

