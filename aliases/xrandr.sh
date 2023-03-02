#!/usr/bin/bash

alias xleft='xrandr --output DP-1 --auto --left-of eDP-1'
alias xright='xrandr --output DP-1 --auto --right-of eDP-1'
alias xtop='xrandr --output DP-1 --auto --above eDP-1'
alias xbottom='xrandr --output DP-1 --auto --below eDP-1'

alias xsame='xrandr --output DP-1-2 --auto --same-as eDP-1'

alias xclear='xrandr -s 0'