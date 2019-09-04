echo "this script need to be run with sudo"

sudo apt-get install zsh nvim -y
sudo dpkg -i $DL/lsd_$LSDV_amd64.deb
sudo dpkg -i $DL/bat_$BATV_amd64.deb

chsh -s $(which zsh)