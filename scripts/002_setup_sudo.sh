#!/usr/bin/env bash

source ./000_env.sh
echo "this script need to be run with sudo"

# @fixme : fix lsof /var/lib/dpkg/lock and lock-frontend
apt install zsh neovim -y
dpkg -i $DL/lsd_${LSDV}_amd64.deb
dpkg -i $DL/bat_${BATV}_amd64.deb

chsh -s $(which zsh)
