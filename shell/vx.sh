#!/usr/bin/bash

# shortcuts for venv
function vx {
    VX_DIR=$( find ~/venvs -maxdepth 1 -mindepth 1 -type d | fzf )
    source $VX_DIR/bin/activate
}

alias vdx="deactivate"