#!/usr/bin/bash

backup () {
    for file in "$@"; do
        local new=`fileDate ${file}`
        while [[ -f $new ]]; do
            new+="~";
        done;
        printf "copying '%s' to '%s'\n" "$file" "$new";
        cp -ip "$file" "$new";
    done
}