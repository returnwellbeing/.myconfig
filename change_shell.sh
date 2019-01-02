#! /bin/bash

if ! [ $(id -u) = 0 ]; then
  echo "The script need to be run as root." >&2
  exit 1
fi

if [ $SUDO_USER ]; then
  real_user=$SUDO_USER
else
  real_user=$(whoami)
fi

BASEDIR=$PWD

echo "=== CHANGE LOGIN-SHELL START ==="
chsh -s /usr/local/bin/zsh $real_user
echo "=== From the next login, the login shell will change to zsh ==="
echo "=== CHANGE LOGIN-SHELL END ==="
