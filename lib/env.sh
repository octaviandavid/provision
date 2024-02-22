
if [ -f "$HOME/.env" ]; then
  # echo "Loading eSnv vars from ~/.env"
  export $(echo $(cat "$HOME/.env" | sed 's/#.*//g'| xargs) | envsubst)
fi

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}