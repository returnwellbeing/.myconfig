#! /bin/bash

#pkg install
apt-get install -y git \
tmux \
zsh \
python \
python-dev \
python2.7-dev \
python3-dev \
clang \
gcc \
clang-format \
cmake \
build-essential \
ncurses-dev \
texinfo \
xdg-utils \
curl \
nodejs

#sym link
ln -rs ./.vimrc ~/
ln -rs ./.zshrc ~/
ln -rs ./.dircolors-zenburn ~/
ln -rs ./.dircolors-solarized ~/
ln -rs ./.vim ~/
ln -rs ./.oh-my-zsh ~/
ln -rs ./.tmux.conf ~/
ln -rs ./.tmux.conf.local ~/

#vim compile
cd ./.vim_source
./configure --enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config
make install
cd ..

cd ./.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd ....
