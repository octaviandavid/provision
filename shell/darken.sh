#!/usr/bin/bash

#kill laptop brightness
function darken() {
  brightnessctl -d 'intel_backlight' set 0
}
