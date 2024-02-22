#!/bin/bash

# official list of packages in manjaro i3
# https://gitlab.manjaro.org/profiles-and-settings/iso-profiles/-/blob/master/community/i3/Packages-Desktop
# there are 2 types of images: minimal and full
# the ones marked as >extra are not installed by default on the minimal image

# https://forum.manjaro.org/c/announcements/11

packages=(
  age               # encryption tool
  apparmor          # security access control >extra
  bat               # cat replacement
  bind              # includes dig
  bitwarden         # password manager
  blueman           # GTK bluetooth manager >extra
  # bluez-utils       # bluetooth tools >extra
  brave-browser     # browser
  broot             # file manager
  calibre           # ebook manager
  # chromium          # browser
  curl              # http client >extra
  dbeaver           # database manager
  downgrade         # downgrade packages >extra
  easytag           # mp3 tag editor
  # emacs             # text editor
  exa               # ls replacement
  fd                # find replacement
  feh               # image viewer
  ffmpeg            # video and audio converter >extra
  ffmpegthumbnailer # video thumbnailer >extra
  firefox           # browser
  flac              # audio codec
  flameshot         # screenshot tool
  flatpak           # package manager
  # fzf               # fuzzy finder - from arkade
  gcc               # compiler >extra
  ghex              # hex viewer/editor
  gimp              # image editor >extra 
  git               # version control >extra
  gnome-calculator  # calculator
  gnupg             # encryption tool
  gparted           # partition manager >extra
  gprename          # batch rename
  keepass           # password manager
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
  stow              # symlink manager
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