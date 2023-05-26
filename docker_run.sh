 docker run -it --rm --gpus all -u 0 --privileged --net=host --name benchmark_cont --ipc=host -e NVIDIA_DRIVER_CAPABILITIES=all -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
                -e "QT_X11_NO_MITSHM=1" -v $XAUTHORITY:/root/.Xauthority:rw \
                -v /home/ferrangebelli/barn/free_space_motion_tube:/catkin_ws/src/free_space_motion_tube barn \
                bin/bash -c "source /opt/ros/noetic/setup.bash && cd catkin_ws &&  catkin_make && source devel/setup.bash && roslaunch src/free_space_motion_tube/examples/ros/src/free_space_motion_tube_ros/launch/move_base_motion_tube.launch"


#  docker run -it --rm --gpus all -u 0 --privileged --net=host --name benchmark_cont --ipc=host -e NVIDIA_DRIVER_CAPABILITIES=all -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
#                 -e "QT_X11_NO_MITSHM=1" -v $XAUTHORITY:/root/.Xauthority:rw \
#                 -v /home/ferrangebelli/barn/free_space_motion_tube:/catkin_ws/src/free_space_motion_tube barn \
#                 bin/bash -c "source /opt/ros/noetic/setup.bash && cd catkin_ws &&  catkin_make && source devel/setup.bash && rosrun map_server map_saver -f /catkin_ws/src/free_space_motion_tube/examples/ros/src/free_space_motion_tube_ros/configs/map.png"

#  docker run -it --rm --gpus all -u 0 --privileged --net=host --name benchmark_cont --ipc=host -e NVIDIA_DRIVER_CAPABILITIES=all -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
#                 -e "QT_X11_NO_MITSHM=1" -v $XAUTHORITY:/root/.Xauthority:rw \
#                 -v /home/ferrangebelli/barn/free_space_motion_tube:/catkin_ws/src/free_space_motion_tube barn \
#                 bin/bash -c "source /opt/ros/noetic/setup.bash && cd catkin_ws &&  catkin_make && source devel/setup.bash && rosrun map_server map_server /catkin_ws/src/free_space_motion_tube/examples/ros/src/free_space_motion_tube_ros/config/map.yaml"

#  docker run -it --rm --gpus all -u 0 --privileged --net=host --name benchmark_cont --ipc=host -e NVIDIA_DRIVER_CAPABILITIES=all -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
#                 -e "QT_X11_NO_MITSHM=1" -v $XAUTHORITY:/root/.Xauthority:rw \
#                 -v /home/ferrangebelli/barn/free_space_motion_tube:/catkin_ws/src/free_space_motion_tube barn \
#                 bin/bash -c "source /opt/ros/noetic/setup.bash && cd catkin_ws &&  catkin_make && source devel/setup.bash && rosrun amcl amcl scan:=/front/scan _base_frame_id:=base_link "