#!/bin/bash
docker_name=u_22_latex
work_dir=/workspace/${PWD##*/}
cd docker_file; docker build --rm --shm-size=64g -t ${docker_name} -f Dockerfile_${docker_name} .; cd -
#docker run --rm -it --shm-size=64g -e DISPLAY=$DISPLAY -w /workspace/${work_dir} -v $PWD:/workspace/${work_dir} -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v /etc/shadow:/etc/shadow:ro -v /etc/sudoers.d:/etc/sudoers.d:ro -v /tmp/.X11-unix:/tmp/.X11-unix.rw ${docker_name} bash
docker run --rm -it --shm-size=64g -e DISPLAY=$DISPLAY -w ${work_dir} -v $PWD:${work_dir} -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v /etc/shadow:/etc/shadow:ro -v /etc/sudoers.d:/etc/sudoers.d:ro -v /tmp/.X11-unix:/tmp/.X11-unix.rw ${docker_name} bash
