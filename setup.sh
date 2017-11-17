#!/bin/bash

# installs bash git prompt
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# installs nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# installs vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~/
cp .bashrc ~/

echo "Now open vim and type :PlugInstall"
