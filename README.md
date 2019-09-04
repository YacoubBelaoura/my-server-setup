# MY UBUNTU SERVERS SETUP

> this is based on ubuntu 18.04.03 installation
> with docker

## packages-setup

* setup static ip
    > using netplan config YML file
    >>  ```vim /etc/netplan/*.yaml```

    ```yaml
    network:
      version: 2
      ethernets:
        enp0s3:
          addresses:
          - 192.168.1.100/24
          - 192.168.8.100/24
          nameservers:
            addresses:
            - 8.8.8.8
            - 8.8.4.4
    ```

* install nerdfont

  ```shell
    git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
    cd nerd-fonts
    ./install.sh UbuntuMono
  ```

  or

  ```shell
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts && curl -fLo "Ubuntu Mono Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf
  fc-cache -fv
  ```

* install bat

  ```shell
  wget -c https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb
  sudo dpkg -i bat_0.12.1_amd64.deb
  ```shell

* install lsd

  ```shell
  wget -c https://github.com/Peltoche/lsd/releases/download/0.16.0/lsd_0.16.0_amd64.deb
  sudo dpkg -i lsd_0.16.0_amd64.deb
  ```shell
  
* install zsh & Oh-my-zsh

  ```shell
  sudo ./package/setup-zsh.sh
  git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  ```
  
* install Oh-my-tmux

  ```shell
  cd
  git clone https://github.com/gpakosz/.tmux.git
  ln -s -f .tmux/.tmux.conf
  cp .tmux/.tmux.conf.local .
  ```

* install nvim
* install Spacevim
