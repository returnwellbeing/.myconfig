#! /bin/bash

BASEDIR=$PWD

### vim install (python enabled) ###
echo "=== VIM PYTHON ENABLED INSTALL START ==="
cd $BASEDIR/vim
./configure \
--prefix=$HOME/.local \
--enable-cscope \
--with-features=huge \
--with-x \
--enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config

make install
cd $BASEDIR
export PATH="$HOME/.local/bin:$PATH"
echo "=== VIM PYTHON ENABLED INSTALL END ==="
