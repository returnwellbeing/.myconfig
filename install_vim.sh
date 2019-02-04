#! /bin/bash

BASEDIR=$PWD

### vim install (python enabled) ###
echo "=== VIM PYTHON ENABLED INSTALL START ==="
cd $BASEDIR/vim
./configure \
--prefix=$HOME/.local \
--enable-cscope \
--enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config

make install
cd $BASEDIR
echo "=== VIM PYTHON ENABLED INSTALL END ==="
