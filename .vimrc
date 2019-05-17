""//VIM VUNDLE SETTING START
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" syntax checking
Plugin 'scrooloose/syntastic'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" YouCompleteMe-Generator
Plugin 'rdnetto/YCM-Generator'

" color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" clang-format
Plugin 'rhysd/vim-clang-format'

" markdown
Plugin 'instant-markdown.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""//VIM VUNDLE SETTING END


""//POWERLINE SETTING START
"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
"
"" Always show statusline
"set laststatus=2
"
"" Use 256 colours (Use this setting only if your terminal supports 256 colours)
""//POWERLINE SETTING END


""//VIM COLOR SETTING START
"" Zenburn is a low-contrast color scheme for Vim. It’s easy for your eyes and
"" designed to keep you in the zone for long programming sessions.
colors zenburn
"" Solarized colorscheme
"set background=dark
"colorscheme solarized
""//VIM COLOR SETTING END

syntax enable
set encoding=utf-8
set t_Co=256
set number
"set ts=2 "tag select
"set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
set paste " 붙여넣기 계단현상 없애기
"set shiftwidth=2 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
"set smartindent
"set softtabstop=2
"set tabstop=2
set ruler " 현재 커서 위치 표시
set incsearch
set tags=./tags,./../tags,./../../tags,./../../../tags,tags
""set tags=./tags,./../tags,./../../tags,./../../../tags,/root/work/trunk/src/tags,/root/audit-userspace/tags,tags
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set ignorecase " 대소문자 구분없이 검색
""CSCOPE SETTING START
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
"cs add /usr/cscope.out /usr
"cs add ~/test.kern/linux-5.1/cscope.out
cs add $CSCOPE_DB " .zshrc 환경변수
set csverb
""CSCOPE SETTING END

""YCM SETTING START
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.myconfig/.ycm_extra_conf.py'

"To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1

let mapleader="\<Tab>"
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>
nnoremap <leader>f :YcmCompleter FixIt<CR>
""YCM SETTING END

""VIM INSTANT MARKDOWN START
"https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0	" disable autostart
nnoremap <leader>md :InstantMarkdownPreview<CR>
""VIM INSTANT MARKDOWN END

""REMOVE WHITE SPACE START
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
""REMOVE WHITE SPACE END
