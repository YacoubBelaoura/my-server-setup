export $DL=down
export $FONTDIR=$HOME/.local/share/fonts

export $BATV=0.12.1
export $LSDV=0.16.0

mkdir -p $FONTDIR
mkdir $DL

echo "Downloading needed files"
cd $DL

curl -fLo "Ubuntu Mono Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

wget -c https://github.com/sharkdp/bat/releases/download/v$BATV/bat_$BATV_amd64.deb
wget -c https://github.com/Peltoche/lsd/releases/download/$LSDV/lsd_$LSDV_amd64.deb
