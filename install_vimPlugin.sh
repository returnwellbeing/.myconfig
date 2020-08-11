#! /bin/bash

BASEDIR=$PWD

### VIM PLUGIN INSTALL ###
echo "=== VIM PLUGIN INSTALL START ==="
vim +PluginInstall +qall
cd $BASEDIR/.vim/bundle/YouCompleteMe
./install.py --clangd-completer

cd $BASEDIR

echo "=== VIM PLUGIN INSTALL END ==="

