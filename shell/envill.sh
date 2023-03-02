#!/usr/bin/bash

# detect all Node environment variables from the current folder
# used to populate e dotenv file
# $ envill > .env.sample
envill(){
   grep -Ro 'process\.env\.\w*' --exclude-dir=node_modules . |
   awk 'BEGIN {FS=":"}{print $2}'|
   awk 'BEGIN {FS="."}{print $3}'|
   sort |
   uniq
}