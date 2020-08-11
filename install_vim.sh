#! /bin/bash

BASEDIR=$PWD
OLDCACHE=$BASEDIR/vim/src/auto/config.cache

echo "=== VIM PYTHON ENABLED INSTALL START ==="
cd $BASEDIR/vim

if [ -e $OLDCACHE ];then
  echo "=== REMOVE OLD VIM CONFIG CACHE==="
  rm $OLDCACHE
fi

make clean

./configure \
--prefix=$HOME/.local \
--enable-cscope \
--with-features=huge \
--with-x \
--enable-python3interp=yes \
--with-python3-config-dir=$(python3-config --configdir)

make install -j$(nproc)
cd $BASEDIR
echo "=== VIM PYTHON ENABLED INSTALL END ==="
