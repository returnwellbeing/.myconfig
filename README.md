# ZSH + TMUX + VIM 환경구축을 위해 달려봅시다

# 일단 땡깁시다
sudo apt install -y git 

git clone https://github.com/returnwellbeing/.myconfig.git .myconfig

cd .myconfig

<<<<<<< HEAD
sudo ./set.sh
=======
sudo ./pkg_install.sh

sudo ./vim_install.sh

./set.sh
>>>>>>> 522da973dcc7b901aa074abce125ccdb50fb6d83

# vim-markdown
참고 : https://www.youtube.com/watch?v=NqKDUxp5wsA

참고 : https://github.com/suan/vim-instant-markdown

vi test.md

:InstantMarkdownPreview (단축키는 tap+md)

브라우저 -> http://localhost:8090

# putty 설정

putty tray & session 다운로드

https://github.com/returnwellbeing/.myconfig/blob/master/PUTTY.zip

# ubuntu 터미널 설정

터미널 > Edit > Preferences > myTerminal 선택
