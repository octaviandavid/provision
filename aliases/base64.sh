#!/usr/bin/bash

alias be="base64 -w 0"
alias bd="base64 -d"

function enc(){
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo -n "$1" | base64 -b 0
  else
    echo -n "$1" | base64 -w 0
  fi
}

function dec(){
  echo -n "$1" | base64 -d
}