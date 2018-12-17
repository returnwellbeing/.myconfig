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


./install_pkg.sh
./change_shell.sh
./install_npm.sh

sudo -u $real_user ./git_clone.sh
sudo -u $real_user ./create_symlink.sh
sudo -u $real_user ./install_vim.sh
sudo -u $real_user ./install_vimPlugin.sh
sudo -u $real_user ./python_virEnv.sh
su $real_user -c "./edit_dconf.sh"
