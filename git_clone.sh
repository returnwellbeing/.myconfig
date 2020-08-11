#! /bin/bash

BASEDIR=$PWD

### GIT CLONE ###
echo "=== GIT CLONE START ==="
git_url_array=( "https://github.com/robbyrussell/oh-my-zsh.git"
            "https://github.com/github/gitignore.git"
            "https://github.com/vim/vim.git"
            "https://github.com/VundleVim/Vundle.vim.git"
            "https://github.com/jnurmine/Zenburn.git"
            "https://github.com/powerline/fonts.git"
            "https://github.com/zdharma/fast-syntax-highlighting.git"
            "https://github.com/djui/alias-tips.git"
            "https://github.com/jenv/jenv.git"
            )

regacy_dir_array=( "oh-my-zsh"
            "gitignore"
            "vim"
            "Vundle.vim"
            "Zenburn"
            "fonts"
            ".oh-my-zsh"
            ".gitignore"
            ".Vundle.vim"
            ".Zenburn"
            ".fonts"
            ".vim")

for regacy_dir_element in ${regacy_dir_array[@]}
do
  if [ -d "$regacy_dir_element" ]; then
    echo "REMOVE DIR : $regacy_dir_element"
    rm -rf $regacy_dir_element
  fi
done

for git_url_element in ${git_url_array[@]}
do
  echo "clonning $git_url_element"
  git clone $git_url_element
done

mkdir -p .vim/bundle

mv Vundle.vim .vim/bundle/Vundle.vim
mv Zenburn .vim/bundle/Zenburn
mv oh-my-zsh .oh-my-zsh
mv fast-syntax-highlighting .oh-my-zsh/custom/plugins/fast-syntax-highlighting
mv alias-tips .oh-my-zsh/custom/plugins/alias-tips
mv fonts .fonts
mv jenv ~/.jenv
echo "=== GIT CLONE END ==="
