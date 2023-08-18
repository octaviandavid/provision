
if [ -f "$HOME/.env" ]; then
  echo "Loading env vars from ~/.env"
  export $(echo $(cat "$HOME/.env" | sed 's/#.*//g'| xargs) | envsubst)
fi