#!/usr/bin/bash

function copy(){
  cat "$1" | xclip
}

function paste(){
  xsel -b >> "$1"
}
