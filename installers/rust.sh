#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# this adds cargo to the path in: 
#  File: .zshenv
# ---------------------------------
#    1   │ . "$HOME/.cargo/env"
