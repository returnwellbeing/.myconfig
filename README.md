# 일단 땡깁시다
sudo apt-get install git

git clone --recursive https://github.com/returnwellbeing/.myconfig.git .myconfig

./set.sh

# vim-markdown 설정
참고 : https://www.youtube.com/watch?v=NqKDUxp5wsA

참고 : https://github.com/suan/vim-instant-markdown

vi test.md

:InstantMarkdownPreview (단축키는 .vimrc 참고)

http://localhost:8090

# putty 설정
## putty 색상 레지스트리
https://github.com/voieducode/putty-colors-zenburn

forground색상 변경 <- 너무 밝아 ㅜㅜ

default foreground : 131/148/150

default bold foreground : 147/161/161

default background : 58/58/58 <- vim배경이랑 안맞아서

# ubuntu 터미널 설정
## 터미널 색상 변경 및 폰트 설치
git clone https://github.com/powerline/fonts powerline

sudo mv powerline /usr/share/fonts/powerline

sudo apt-get install dconf-editor

root가 아닌 일반유저로 터미널에서 dconf-editor 실행
org > gnome > terminal > legacy > profiles : 에서 수정

rgb(58,58,58)

rgb(147,161,161)

거짓

rgb(0,255,0)

참

rgb(0,255,0)

DejaVu Sans Mono for Powerline 14

rgb(131,145,150)

거짓

['rgb(77,77,77)', 'rgb(187,0,0)', 'rgb(152,251,152)', 'rgb(240,230,140)', 'rgb(150,133,63)', 'rgb(255,222,173)', 'rgb(255,160,160)', 'rgb(245,222,179)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(135,206,235)', 'rgb(255,85,255)', 'rgb(255,215,0)', 'rgb(255,255,255)']

거짓

거짓

거짓

name~~~

![screenshot from 2018-08-04 00-18-12](https://user-images.githubusercontent.com/25244851/43654356-ee31f2b8-9785-11e8-81b8-dee738abdb71.png)

![screenshot from 2018-08-04 01-29-26](https://user-images.githubusercontent.com/25244851/43654361-f1f4b3fe-9785-11e8-8a4c-445c55ec0479.png)

![screenshot from 2018-08-04 00-33-28](https://user-images.githubusercontent.com/25244851/43654368-f3df9170-9785-11e8-83bd-215b832b44f3.png)

![20170720_194109](https://user-images.githubusercontent.com/25244851/43644065-5a1cb58a-9768-11e8-8142-97cdb839b615.jpg)

