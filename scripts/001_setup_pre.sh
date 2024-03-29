#!/usr/bin/env bash

source ./000_env.sh

mkdir -p $FONTDIR
mkdir -p $DL/fonts

echo "Downloading needed files"
cd $DL

wget -c https://github.com/sharkdp/bat/releases/download/v${BATV}/bat_${BATV}_amd64.deb
wget -c https://github.com/Peltoche/lsd/releases/download/${LSDV}/lsd_${LSDV}_amd64.deb

cd fonts
curl -fLo "Ubuntu Mono Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

