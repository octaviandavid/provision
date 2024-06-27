#!/usr/bin/bash

# export NVM_LAZY=1
# export NVM_DIR="$HOME/.nvm"

# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Init nvm
# export NVM_DIR="$HOME/.nvm"
# NVM_STATE=$(</tmp/nvm.state)
# if [ $NVM_STATE = 1 ]; then
#     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# else
#     echo 'Warning: NVM not yet loaded'
#     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
#     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fi

# export PATH="$PATH:$(yarn global bin)"

source $HOME/.asdf/asdf.sh