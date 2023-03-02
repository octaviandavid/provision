#!/usr/bin/bash

function n () {
  if [ "$#" -eq "0" ]; then
    nnn
  else
    j "$@" && nnn
  fi
}