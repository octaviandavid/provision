function line(){
  printf "\n $@\n"
}

function dump(){
  local ARR=$*
  FS="|$IFS"; printf '%s\n' "${ARR[*]}"; IFS="${IFS:1}"
}

function fileDate(){
  echo $1.$(date '+%Y%m%d-%H:%M:%S')
}

function load_folder_scripts {
  for FILE in $(find $1 -type f -name '*.sh')
  do
    # MILISECONDS=$(date +%s%N | cut -b1-13)
    source $FILE
    # MILISECONDS=$(($(date +%s%N | cut -b1-13) - $MILISECONDS))
    # echo "Loaded $FILE in $MILISECONDS ms"
  done
}

function require(){
  if [ -z "$(command -v $1)" ]; then
    line "This script requires $1; $2"
    exit
  fi
}

