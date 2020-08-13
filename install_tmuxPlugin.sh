#! /bin/bash

BASEDIR=$PWD

### TMUX PLUGIN INSTALL ###
echo "=== TMUX PLUGIN MANAGER INSTALL START ==="

TPMDIR=$HOME/.tmux/plugins
TPM=$TPMDIR/tpm

if [ ! -d "$TPMDIR" ]; then
  echo "CREATE TPM DIRECTORY"
  mkdir -p $TPMDIR
fi

if [ -L "$TPM" ]; then
  echo "REMOVE TPM SYMBOLIC LINK : $TPM"
  rm $TPM
fi

if [ ! -d "$BASEDIR/.tpm" ]; then
  echo "tpm.github NOT DOWNLOADED"
  exit 1
fi

ln -s $BASEDIR/.tpm $TPM
echo "CREATE TPM SYMBOLIC LINK : $TPM"

tmux source $HOME/.tmux.conf
echo "=== TMUX PLUGIN MANAGER INSTALL END ==="

echo "=== TMUX PLUGINS INSTALL START ==="
$BASEDIR/.tpm/scripts/install_plugins.sh
echo "=== TMUX PLUGINS INSTALL END ==="

#### SYM LINK ###
#echo "=== CREATE SYMBOLIC LINK START ==="
#sym_array=( ".vimrc"
#            ".zshrc"
#            ".vim"
#            ".tmux.conf"
#            ".tmux.conf.local"
#            ".oh-my-zsh"
#            ".gitconfig"
#            ".fonts"
#            ".jenv"
#            )
#
#for sym_element in ${sym_array[@]}
#do
#  i="$HOME/$sym_element"
#  if [ -L "$i" ]; then
#    echo "REMOVE SYM LINK : $i"
#    rm $i
#  fi
#  echo "creating $sym_element 's symbolic link"
#  ln -s $BASEDIR/$sym_element ~/
#done
#echo "=== CREATE SYMBOLIC LINK END ==="
#
