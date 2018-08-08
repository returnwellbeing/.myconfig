# ZSH + TMUX + VIM 환경구축을 위해 달려봅시다

# 일단 땡깁시다
sudo apt install -y git zsh

chsh -s /usr/bin/zsh

git clone https://github.com/returnwellbeing/.myconfig.git .myconfig

cd .myconfig

sudo ./pkg_install.sh

./set.sh

sudo ln -rs ./powerline /usr/share/fonts/powerline

# vim-markdown 설정
참고 : https://www.youtube.com/watch?v=NqKDUxp5wsA

참고 : https://github.com/suan/vim-instant-markdown

sudo npm -g install instant-markdown-d

vi test.md

:InstantMarkdownPreview (단축키는 .vimrc 참고)

http://localhost:8090

# putty 설정

putty tray & session 다운로드

https://github.com/returnwellbeing/.myconfig/blob/master/PUTTY.zip

# ubuntu 터미널 설정

터미널 > Edit > Preferences > myTerminal 선택
