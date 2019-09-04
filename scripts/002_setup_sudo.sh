#!/usr/bin/env bash

echo "this script need to be run with sudo"

apt install zsh neovim -y
dpkg -i $DL/lsd_${LSDV}_amd64.deb
dpkg -i $DL/bat_${BATV}_amd64.deb

chsh -s $(which zsh)
