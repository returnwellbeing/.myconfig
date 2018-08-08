#! /bin/bash

#vim install (python enabled) 
cd ./.vim_source
./configure --enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config
make install
cd ..
