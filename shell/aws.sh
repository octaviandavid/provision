#!/usr/bin/bash

function aws_install {
    cd $HOME
    mkdir -p ~/soft
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    ./aws/install --bin-dir ~/.local/bin --install-dir ~/soft/aws-cli --update
    rm -rf awscliv2.zip aws
    ln -s ~/soft/aws-cli/v2/current/bin/aws ~/.local/bin/aws
} 

# login
function asso {
    aws sso login
}

# show current aws profile
function ap {
    echo "AWS_PROFILE is: ${AWS_PROFILE}"
    aws configure list --output json
}

# change profile
function ax {
    TEMP=$(aws configure list-profiles | fzf)
    [ ! -z "$TEMP" ] && export AWS_PROFILE=$TEMP ||  echo "please select a profile"
    echo "AWS_PROFILE is now $AWS_PROFILE"
}

