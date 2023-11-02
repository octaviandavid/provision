#!/bin/bash

packages=(
  age               # encryption tool
  bat               # cat replacement
  bind              # includes dig
  bitwarden         # password manager
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
  ghex              # hex editor
  git               # version control
  gnome-calculator  # calculator
  gnupg             # encryption tool
  gparted           # partition manager
  gprename          # batch rename
  keepass         # password manager
  # jq                # json parser - from arkade
  mariadb-clients   # mysql client
  mc                # file manager
  mcfly             # history manager
  meld              # diff tool
  mousepad          # text editor
  mp3wrap           # mp3 wrapper / joiner
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
  screenfetch       # system info
  signal-desktop    # messaging
  sops              # encryption tool - from arkade
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
  slack-desktop
)

# yay -S ${aur[@]}

flatpaks=(
  com.github.Murmele.Gittyup        # git client
  com.github.tchx84.Flatseal        # flatpak permissions
  com.github.geigi.cozy             # audiobook player
)

flatpak install flathub ${flatpaks[@]}