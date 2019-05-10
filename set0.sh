#! /bin/bash

if ! [ $(id -u) = 0 ]; then
  echo "The script need to be run SUDO" >&2
  exit 1
fi

if [ $SUDO_USER ]; then
  real_user=$SUDO_USER
else
  real_user=$(whoami)
fi

BASEDIR=$PWD


./need_sudo.sh

su $real_user -c "./non_sudo.sh"
