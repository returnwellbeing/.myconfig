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

# Commands that you don't want run with root would be invoked
# with: sudo -u $real_user
# So they will be ran as the user who invoked the sudo command
# Keep in mind, if the user is using a root shell (they're logged in as root),
# then $real_user is actually root
  # sudo -u $real_user non-root-command

# Commands that need to be ran with root would be invoked without sudo
  # root-command


BASEDIR=$PWD

### PKG INSTALL ###
pkg_array=( "tmux"
            "zsh" 
            "python"
            "python-dev"
            "python2.7-dev"
            "python3-dev"
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
            "dconf-editor")


echo "=== PKG INSTALL START ==="
for pkg_element in ${pkg_array[@]}
do
  echo "installing $pkg_element"
  apt-get install $pkg_element
done
echo "=== PKG INSTALL END ==="

chsh -s /usr/bin/zsh $real_user
echo "=== From the next login, the login shell will change to zsh ==="

### GIT CLONE ###
echo "=== GIT CLONE START ==="
git_array=( "https://github.com/robbyrussell/oh-my-zsh.git"
            "https://github.com/github/gitignore.git"
            "https://github.com/vim/vim.git"
            "https://github.com/VundleVim/Vundle.vim.git"
            "https://github.com/jnurmine/Zenburn.git"
            "https://github.com/powerline/fonts")

sudo -u $real_user mkdir .vim 
sudo -u $real_user mkdir .vim/bundle

for git_element in ${git_array[@]}
do
  echo "clonning $git_element"
  sudo -u $real_user git clone $git_element
done

sudo -u $real_user mv Vundle.vim .vim/bundle/Vundle.vim
sudo -u $real_user mv Zenburn .vim/bundle/Zenburn
sudo -u $real_user mv oh-my-zsh .oh-my-zsh
echo "=== GIT CLONE END ==="


### SYM LINK ###
echo "=== CREATE SYMBOLIC LINK START ==="
sym_array=( ".vimrc"
            ".zshrc"
            ".vim"
            ".tmux.conf"
            ".tmux.conf.local"
            ".oh-my-zsh")

for sym_element in ${sym_array[@]}
do
  echo "creating $sym_element 's symbolic link"
  sudo -u $real_user ln -s $BASEDIR/$sym_element ~/
done
echo "=== CREATE SYMBOLIC LINK END ==="

### vim install (python enabled) ###
echo "=== VIM PYTHON ENABLED INSTALL START ==="
cd $BASEDIR/vim
./configure --enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config
make install
cd $BASEDIR
echo "=== VIM PYTHON ENABLED INSTALL END ==="

### VIM PLUGIN INSTALL ###
echo "=== VIM PLUGIN INSTALL START ==="
sudo -u $real_user vim +PluginInstall +qall
cd $BASEDIR/.vim/bundle/YouCompleteMe
sudo -u $real_user ./install.py --clang-completer
cd $BASEDIR

npm -g install instant-markdown-d
echo "=== VIM PLUGIN INSTALL END ==="

### DCONF EDIT ###
echo "=== DCONF EDIT START ==="
ln -s $BASEDIR/fonts /usr/share/fonts/powerline

sudo -u $real_user dconf load /org/gnome/terminal/legacy/profiles:/ < ./.terminal.dconf
echo "=== DCONF EDIT END ==="
