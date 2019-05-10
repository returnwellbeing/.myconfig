#! /bin/bash

if ! [ $(id -u) = 0 ]; then
  echo "The script need to be run with SUDO" >&2
  exit 1
fi

./install_pkg.sh
./change_shell.sh
./install_npm.sh
