#!/bin/bash
singularity exec -i --nv -p -B `pwd`:/jackal_ws/src/nav-competition-icra2022 -B `pwd`/free_space_motion_tube-barn_competion2023:/jackal_ws/src/free_space_motion_tube-barn_competion2023 ${1} /bin/bash -c "source /opt/ros/melodic/setup.bash && cd /jackal_ws && catkin_make && source devel/setup.bash && /jackal_ws/src/nav-competition-icra2022/entrypoint.sh ${@:2}"
