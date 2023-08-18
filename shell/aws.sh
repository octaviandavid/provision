#!/usr/bin/bash

function install_awscli {
    cd $HOME
    mkdir -p ~/soft
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    
    read -p "Are you sure? (y/Y) " -n 1 -r
    unzip awscliv2.zip
    ./aws/install --bin-dir ~/.local/bin --install-dir ~/soft/aws-cli --update
    rm -rf awscliv2.zip aws
    ln -sf ~/soft/aws-cli/v2/current/bin/aws ~/.local/bin/aws
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

# show current aws profile
function app {
    aws sts get-caller-identity | jq
}

# change profile
function ax {
    TEMP=$(aws configure list-profiles | fzf)
    [ ! -z "$TEMP" ] && export AWS_PROFILE=$TEMP ||  echo "please select a profile"
    echo "AWS_PROFILE is now $AWS_PROFILE"
    echo $AWS_PROFILE > ~/.aws/.aws_profile
}

# load profile from file if it exists
if [ -f ~/.aws/.aws_profile ]; then
    export AWS_PROFILE=$(cat ~/.aws/.aws_profile)
fi

