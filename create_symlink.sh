#! /bin/bash

BASEDIR=$PWD
HOMEDIR=$HOME

### SYM LINK ###
echo "=== CREATE SYMBOLIC LINK START ==="
sym_array=( ".vimrc"
            ".zshrc"
            ".vim"
            ".tmux.conf"
            ".tmux.conf.local"
            ".oh-my-zsh"
            ".gitconfig"
            ".fonts"
            ".jenv"
            )

for sym_element in ${sym_array[@]}
do
  i="$HOME/$sym_element"
  if [ -L "$i" ]; then
    echo "REMOVE SYM LINK : $i"
    rm $i
  fi
  echo "creating $sym_element 's symbolic link"
  ln -s $BASEDIR/$sym_element ~/
done
echo "=== CREATE SYMBOLIC LINK END ==="

