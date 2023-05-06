#!/usr/bin/bash

# switch existing virtualenvs
function vx {
    VX_DIR=$( find $HOME/venvs -maxdepth 1 -mindepth 1 -type d | fzf )
    [ ! -z "$VX_DIR" ] && source $VX_DIR/bin/activate || line "please select a venv"
} 

# create a new virtualenv and activate it
function vxn {
    VX_DIR="$HOME/venvs/$1"
    virtualenv "$VX_DIR"
    source $VX_DIR/bin/activate
}

# exit from a virtualenv
alias vxd="deactivate"

