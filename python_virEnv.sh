#! /bin/bash

BASEDIR=$PWD
HOMEDIR=$HOME

### PYTHON VIRTUAL ENVIRONMENT
echo "=== PYTHON VIRTUAL ENV SETTING START ==="
if [ -d "$HOME/.mypython" ]; then
  echo "REMOVE DIR : $HOME/.mypython"
  rm -rf $HOME/.mypython
fi
mkdir ~/.mypython
echo "CREATE DIR : $HOME/.mypython"
if [ -f "$HOME/.oh-my-zsh/themes/.agnoster_py.zsh-theme" ]; then
  echo "REMOVE FILE : $HOME/.oh-my-zsh/themes/.agnoster_py.zsh-theme"
  rm -rf $HOME/.oh-my-zsh/themes/.agnoster_py.zsh-theme
fi
cp $BASEDIR/.agnoster_py.zsh-theme ~/.oh-my-zsh/themes/
echo "CREAE FILE : $HOME/.oh-my-zsh/themes/.agnoster_py.zsh-theme"
echo "=== PYTHON VIRTUAL ENV SETTING END ==="
