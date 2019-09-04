#!/usr/bin/env bash

source ./000_env.sh

# @fixme : oh-my-zsh need sudo and interaction
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "#################### install powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "#################### install fonts"

mkdir ~/.config/fontconfig/conf.d/
mv $DL/fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

mv $DL/fonts/* $FONTDIR/

# @fixme : fc-cache need to be installed on US_18.04 'fontconfig' pkg
#fc-cache -vf $FONTDIR/
fc-cache -vf

echo "#################### install Oh-my-zsh plugins"

git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "#################### install dot files"

# @fixme : command not working
cp configs/* $HOME

echo "#################### install Oh-my-tmux"

cd 
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sed -i "/cut -c3- .* sh -s _apply_configuration/a \
# List of plugins\n\
set -g @plugin 'tmux-plugins/tpm'\n\
set -g @plugin 'tmux-plugins/tmux-sensible'\n\
set -g @plugin 'tmux-plugins/tmux-resurrect'\n\
\n\
run -b '~/.tmux/plugins/tpm/tpm'\n\
" $HOME/.tmux.conf

tmux source $HOME/.tmux.conf


echo "#################### install SpaceVim"

# @fixme : Spacevim need sudo and interaction
curl -sLf https://spacevim.org/install.sh | bash

echo "Log out of your session and login again."
