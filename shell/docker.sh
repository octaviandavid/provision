#!/usr/bin/bash

d_stop_running_containers () {
    docker stop $(docker ps --all -quiet)
}

d_remove_all_images () {
    docker rmi --force $(docker images --all --quiet)
}

d_prune (){
    docker system prune --all --force --volumes
}