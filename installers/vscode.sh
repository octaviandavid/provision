#!/bin/bash

# placeholder for software directory
mkdir -p ~/soft 
cd ~/soft

# remove old version
rm -rf VSCode-linux-x64

# get latest version and extract
curl https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-x64 -Lo vscode.tar.gz   
tar -xzf vscode.tar.gz

# remove temporary archive
rm -rf vscode.tar.gz

# create symlink
ln -sf ~/soft/VSCode-linux-x64/bin/code ~/.local/bin/code

# create desktop entry
cat <<EOF > ~/.local/share/applications/vscode.desktop
[Desktop Entry]
Name=Visual Studio Code
Comment=Code Editing. Redefined.
GenericName=Text Editor
Exec=code --no-sandbox --unity-launch %F
Icon=code
Type=Application
StartupNotify=true
StartupWMClass=Code
Categories=Utility;TextEditor;Development;IDE;
MimeType=text/plain;inode/directory;
Actions=new-empty-window;
Keywords=vscode;

X-Desktop-File-Install-Version=0.24

[Desktop Action new-empty-window]
Name=New Empty Window
Exec=code --no-sandbox --new-window %F
Icon=code

EOF