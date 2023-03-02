#!/usr/bin/bash

save(){
  local FILE=~/soft/soft.txt
  echo "$@" >> $FILE && sort -o $FILE $FILE
}