#! /bin/bash

#git my_submodule
git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
git clone https://github.com/github/gitignore.git .gitignore_template
git clone https://github.com/vim/vim.git .vim_source
git clone https://github.com/VundleVim/Vundle.vim.git ./.vim/bundle/Vundle.vim
git clone https://github.com/jnurmine/Zenburn.git ./.vim/bundle/Zenburn
git clone https://github.com/powerline/fonts powerline

#sym link
ln -rs ./.vimrc ~/
ln -rs ./.zshrc ~/
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

#vim plugin install
vim +PluginInstall +qall

cd ./.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd ../../..

#dconf load
dconf load /org/gnome/terminal/legacy/profiles:/ < ./.terminal.dconf
