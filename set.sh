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
clang-format
cmake \
build-essential \
ncurses-dev \
texinfo \

#sym link
ln -s ./.gdbinit ~/
ln -s ./.vimrc ~/
ln -s ./.zshrc ~/
ln -s ./.dircolors-zenburn ~/
ln -s ./.dircolors-solarized ~/
ln -s ./.vim ~/
ln -s ./.oh-my-zsh ~/
ln -s ./.tmux.conf ~/
ln -s ./.tmux.conf.local ~/

#vim compile
cd ./.vim_source
.vim_source/configure --enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config
make install
cd ..

cd ./.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd ....
