#! /bin/bash

if ! [ $(id -u) = 0 ]; then
  echo "The script need to be run as root." >&2
  exit 1
fi

if [ $SUDO_USER ]; then
  real_user=$SUDO_USER
  # 일반 유저가 실행했을때, real_user = 일반유저
else
  real_user=$(whoami)
  # root가 실행했을때, real_user = root
fi

BASEDIR=$PWD

### PKG INSTALL ###
pkg_array=( "tmux"
            "zsh"
            "python"
            "python-dev"
            "python2.7-dev"
            "python3-dev"
            "python3-venv"
            "clang"
            "gcc"
            "clang-format"
            "cmake"
            "build-essential"
            "ncurses-dev"
            "texinfo"
            "npm"
            "xdg-utils"
            "curl"
            "nodejs"
            "dconf-editor"
            "libncurses5-dev"
            "libgnome2-dev"
            "libgnomeui-dev"
            "libgtk2.0-dev"
            "libatk1.0-dev"
            "libbonoboui2-dev"
            "libcairo2-dev"
            "libx11-dev"
            "libxpm-dev"
            "libxt-dev"
            "fzy"
            "libelf-dev"
            "qemu-kvm"
            "qemu"
            "virt-manager"
            "virt-viewer"
            "libvirt-bin"
            "htop"
            "ctags"
            "cscope"
            "bison"
            "flex"
            "libssl-dev"
            "xsel"
            )




echo "=== PKG INSTALL START ==="
for pkg_element in ${pkg_array[@]}
do
  echo "installing $pkg_element"
  apt-get install -y $pkg_element
done
echo "=== PKG INSTALL END ==="
