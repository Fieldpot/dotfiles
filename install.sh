#!/usr/bin/env bash

# install neo-vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > neovim_installer.sh
sh ./neovim_installer.sh ~/.cache/dein
dir=`pwd`"/nvim/"
cd ../
mkdir ~/.config
ln -s $dir ~/.config/nvim

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

# install .pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
