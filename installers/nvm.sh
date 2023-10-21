#!/bin/bash

export PROFILE=/dev/null

latest_release=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | jq -r '.tag_name')
echo "Latest release tag: $latest_release"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$latest_release/install.sh | bash
