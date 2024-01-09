#!/usr/bin/bash

ssh_clean_known_hosts() {
    echo "Cleaning known_hosts"
    HOST=${1:-cnn.com}
    ssh-keygen -R $HOST

    sort ~/.ssh/known_hosts | uniq > ~/.ssh/known_hosts.uniq
    mv ~/.ssh/known_hosts.{uniq,}

}
