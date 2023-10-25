#!/bin/bash

# Install Go from the official tarball
# https://golang.org/doc/install/source#install

# find the latest version
LATEST=$(curl -s https://go.dev/VERSION?m=text | grep -oP '(\d+\.)+\d+' )
echo "Latest version: $LATEST"

# https://dl.google.com/go/go1.21.3.linux-amd64.tar.gz
curl -s https://dl.google.com/go/go$LATEST.linux-amd64.tar.gz | sudo tar -C /usr/local -xz
