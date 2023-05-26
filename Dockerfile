FROM ros:noetic


RUN apt update && apt install -y \
	git ros-noetic-navigation ros-noetic-hector-slam ros-noetic-map-server ros-noetic-gmapping

RUN mkdir -p /catkin_ws/src/jackal_helper

# RUN cd /catkin_ws/src && git clone https://gitlab.kuleuven.be/u0144428/free_space_motion_tube.git --branch barn2023
# COPY /home/ferrangebelli/barn/free_space_motion_tube /catkin_ws/src/free_space_motion_tube

ADD ros_entrypoint.sh ros_entrypoint.sh

RUN bash -c "source /opt/ros/noetic/setup.bash && cd /catkin_ws && catkin_make"

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
