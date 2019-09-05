#!/usr/bin/env bash

source ./000_env.sh
echo "this script need to be run with sudo"

# @fixme : temp fix for lsof /var/lib/dpkg/lock and lock-frontend
killall unattended
killall dpkg

dpkg -i $DL/lsd_${LSDV}_amd64.deb
dpkg -i $DL/bat_${BATV}_amd64.deb

apt --fix-broken install

apt install zsh make gcc -y
# @idea : if using vim with vimproc
# @idea : optional : fontconfig and xfont-utils for spacevim 
# apt install make gcc -y
# @idea : alternative is to use neovim 
# apt install neovim
chsh -s $(which zsh)
