#!/bin/bash

# Install Docker from the official repository on archlinux

sudo pacman -S docker docker-compose --noconfirm

sudo systemctl start docker.service
sudo systemctl enable docker.service

sudo usermod -aG docker $USER

newgrp docker

docker version
