
echo "install Oh-my-zsh plugins"

git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "install Oh-my-tmux"

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


echo "install SpaceVim"

curl -sLf https://spacevim.org/install.sh | bash
