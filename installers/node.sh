#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 20
nvm use 20
nvm alias default 20

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

