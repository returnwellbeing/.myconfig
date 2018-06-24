#!/bin/sh

# cd .configs

git submodule add https://github.com/seebi/dircolors-solarized.git .dircolors-solarized
git submodule add https://github.com/ivoarch/dircolors-zenburn.git .dircolors-zenburn
git submodule add https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
git submodule add https://github.com/github/gitignore.git .gitignore_template

git submodule add https://github.com/vim/vim.git .vim_source

# vim plugin들 설치
git submodule add https://github.com/VundleVim/Vundle.vim.git ./.vim/bundle/Vundle.vim
git submodule add https://github.com/Valloric/YouCompleteMe.git ./.vim/bundle/YouCompleteMe
git submodule add https://github.com/rdnetto/YCM-Generator.git ./.vim/bundle/YCM-Generator
git submodule add https://github.com/jnurmine/Zenburn.git ./.vim/bundle/Zenburn
git submodule add https://github.com/scrooloose/nerdtree.git ./.vim/bundle/nerdtree
git submodule add https://github.com/vim-syntastic/syntastic.git ./.vim/bundle/syntastic
git submodule add https://github.com/altercation/vim-colors-solarized.git ./.vim/bundle/vim-colors-solarized
git submodule add https://github.com/rhysd/vim-clang-format.git ./.vim/bundle/vim-clang-format


git submodule update --init --recursive
