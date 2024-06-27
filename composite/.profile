# list available themes with
#  ls /usr/share/themes 
# echo $XDG_DATA_DIRS
export GTK_THEME=Adapta-Nokto-Eta-Maia
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/chromium
export TERMINAL=alacritty

# Set up ssh-agent
if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi

# Init nvm
# echo 0 > /tmp/nvm.state
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# echo 1 > /tmp/nvm.state
