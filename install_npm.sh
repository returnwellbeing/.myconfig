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

echo "=== NPM MARKDOWN INSTALL START ==="
npm -g install instant-markdown-d
echo "=== NPM MARKDOWN INSTALL END==="
