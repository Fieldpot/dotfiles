#!/bin/sh

# install neo-vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
dir=`pwd`"/nvim/"
cd ../
ln -s $dir ~/.config/nvim

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
ln -s ~/dotfiles/zsh/.zshrc ~/
