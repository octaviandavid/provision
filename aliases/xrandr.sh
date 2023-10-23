#!/usr/bin/bash

export XRANDR_MODE="1920x1080"

function xfind() {
  CONNECTED=$(xrandr | grep -E "^DP-1-[0-9] connected|HDMI-[0-9] connected")
  
  case $CONNECTED in
    DP-1-[0-9]*)
      echo $CONNECTED | grep -oE "DP-1-[0-9]"
      ;;
    HDMI-[0-9]*)
      echo $CONNECTED | grep -oE "HDMI-[0-9]"
      ;;
    *)
      echo ""
      return 1
      ;;
  esac
}

# alias xclear='xrandr --size 0'

function xclear() {
  CONNECTED=$(xfind)
  if [ -z "$CONNECTED" ]; then
    echo "No external monitor found"
    return 1
  fi
  echo "Turning off $CONNECTED"
  xrandr --output $CONNECTED --off
}

function xsame() {
  CONNECTED=$(xfind)
  if [ -z "$CONNECTED" ]; then
    echo "No external monitor found"
    return 1
  fi

  xrandr --output $CONNECTED --mode $XRANDR_MODE --same-as eDP-1
}

function xleft() {
  CONNECTED=$(xfind)
  if [ -z "$CONNECTED" ]; then
    echo "No external monitor found"
    return 1
  fi

  xrandr --output $CONNECTED --mode $XRANDR_MODE --auto --left-of eDP-1
}

function xright() {
  CONNECTED=$(xfind)
  if [ -z "$CONNECTED" ]; then
    echo "No external monitor found"
    return 1
  fi

  xrandr --output $CONNECTED --mode $XRANDR_MODE --auto --right-of eDP-1
}

function xtop() {
  CONNECTED=$(xfind)
  if [ -z "$CONNECTED" ]; then
    echo "No external monitor found"
    return 1
  fi

  xrandr --output $CONNECTED --mode $XRANDR_MODE --auto --above eDP-1
}

function xbottom() {
  CONNECTED=$(xfind)
  if [ -z "$CONNECTED" ]; then
    echo "No external monitor found"
    return 1
  fi

  xrandr --output $CONNECTED --mode $XRANDR_MODE --auto --below eDP-1
}