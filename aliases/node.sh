#!/usr/bin/bash

alias pp="pino-pretty -i pid,name,hostname"
alias nodek="pkill node --signal 9"
alias mon="export LOG_LEGEL=debug && nodemon src/app.js | bunys"

alias yi="yarn install"
alias yif="yarn install --frozen-lockfile"

alias nr="npm run"
alias syntax=" find . -name '*.js' -not -path '*node_modules*' | xargs -I {} node -c {}"

alias cdk="npx aws-cdk"