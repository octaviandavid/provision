#!/bin/bash

packages=(
  age               # encryption tool
  bat               # cat replacement
  bind              # includes dig
  brave-browser     # browser
  broot             # file manager
  calibre           # ebook manager
  # chromium          # browser
  curl              # http client
  dbeaver           # database manager
  easytag           # mp3 tag editor
  # emacs             # text editor
  exa               # ls replacement
  fd                # find replacement
  feh               # image viewer
  firefox           # browser
  flameshot         # screenshot tool
  flatpak           # package manager
  # fzf               # fuzzy finder - from arkade
  git               # version control 
  # jq                # json parser - from arkade
  mariadb-clients   # mysql client
  mc                # file manager
  mcfly             # history manager
  meld              # diff tool
  mousepad          # text editor
  net-tools         # includes ifconfig netstat
  nmap              # network scanner
  nnn               # file manager
  postgresql-libs   # postgresql client
  pwgen             # password generator
  qbittorrent       # torrent client
  ranger            # file manager
  rclone            # cloud storage
  redshift          # screen temperature
  ripgrep           # grep replacement
  sops              # encryption tool 
  tldr              # simplified man pages
  tmux              # terminal multiplexer
  traceroute        # trace route
  tree              # directory tree
  unzip             # unzip files
  vim               # text editor
  yay               # aur helper
  zip               # zip files
  zoxide            # directory jumper
)

# install global packages
sudo pacman -S ${packages[@]}

aur=(
  flatseal
)

# yay -S ${aur[@]}