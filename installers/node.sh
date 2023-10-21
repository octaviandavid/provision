#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 18
nvm use 18
nvm alias default 18

# Install global packages from array

packages=(
  aws-cdk-lib
  aws-cdk
  bunyan
  cdk8s-cli
  corepack
  jest
  lerna
  nodemon
  npm
  pino-pretty
  plop
  prettier
  ts-node
  typescript
  yarn
)

# install global packages
npm install -g ${packages[@]}

