#!/usr/bin/bash

ssh_clean_known_hosts() {
    echo "Cleaning known_hosts"
    # HOST=${1:-cnn.com}
    # ssh-keygen -R $HOST

    sort -u ~/.ssh/known_hosts > ~/.ssh/known_hosts.temp
    mv ~/.ssh/known_hosts.{temp,}

}

ssh_clean_one() {
    echo "Cleaning known_hosts for $1"
    ssh-keygen -R $1
}
