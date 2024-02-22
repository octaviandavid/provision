#!/usr/bin/bash

# better binaries
alias cat="bat"

# shortcuts
alias s="source"
alias c="clear"
alias g="grep"
alias gi="grep -i"
alias ge="grep -E"

alias ls="exa"

# git
alias gs="git status"
# fix git merge alias of zsh that highjacks GraphicsMagick
alias gm="/usr/bin/gm"

# positional
alias first='awk "BEGIN {FS='\t'} {print \$1}"'
alias fst='awk "{print \$1}"'
alias snd='awk "{print \$2}"'
alias trd='awk "{print \$3}"'

# net
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
