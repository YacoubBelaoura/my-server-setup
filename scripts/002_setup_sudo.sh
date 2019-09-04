#!/usr/bin/env bash

source ./000_env.sh
echo "this script need to be run with sudo"

dpkg -i $DL/lsd_${LSDV}_amd64.deb
dpkg -i $DL/bat_${BATV}_amd64.deb
# @fixme : fix lsof /var/lib/dpkg/lock and lock-frontend
apt install zsh fontconfig make gcc -y
# @idea : if using vim with vimproc
# apt install make gcc -y
# @idea : alternative is to use neovim 
# apt install neovim
chsh -s $(which zsh)
