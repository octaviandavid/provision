#!/usr/bin/bash

# if mcfly is installed, initialize it
if [ -x "$(command -v mcfly)" ]; then
  eval "$(mcfly init zsh)"
fi
