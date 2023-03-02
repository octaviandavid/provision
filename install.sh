#!/usr/bin/bash

WD=$(dirname "$(readlink -f "$0")")
echo "Setting provisioning origin to: $WD"    

echo "Linking .zsh_profile ..."
ln -sf "$WD/composite/.zsh_profile" "$HOME/.zsh_profile"

echo "Linking .profile ..."
ln -sf "$WD/composite/.profile" "$HOME/.profile"