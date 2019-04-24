#PYTHON VIRTUAL ENV START
export PY_ENV="$HOME/.mypython"
#PYTHON VIRTUAL ENV END

#GITHUB EDITOR = VIM START
export VISUAL=vim
export EDITOR="$VISUAL"
#GITHUB EDITOR = VIM END

#CLANG VARIABLE START
#export CC='/usr/bin/clang-3.8'
#export CXX='/usr/bin/clang++-3.8'
export CC='/usr/bin/clang'
export CXX='/usr/bin/clang++'
#CLANG VARIABLE END

#DIR COLOR SETTING START
#eval `dircolors ~/.dircolors-solarized/dircolors.256dark`
#eval `dircolors ~/.dircolors-zenburn/dircolors`
#DIR COLOR SETTING END

#export CLICOLOR=YES

#FOR KOREAN START
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"
# FOR KOREAN END

#YCM SETTTING START
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib:/usr/local/lib:/usr/local/llvm38/lib/:/system/lib
#export LD_LIBRARY_PATH=/root/audit-userspace/lib:$LD_LIBRARY_PATH:/lib:/usr/local/llvm38/lib/:/system/lib
#YCM SETTING END

#LANG=en_US.UTF-8

#ZSH ALIAS START
alias vi='vim'
alias g11='g++ -std=c++11 -g'
alias cds='cd ~/work/trunk/src'
alias win='xmodmap -e "keycode 102 = Super_L"'

#alias for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

#function for python
pa() {
  source $PY_ENV/"$1"/bin/activate
}
pnew() {
  python3 -m venv $PY_ENV/"$1"
  pa "$1"
}
pls() {
  ls $PY_ENV
}
pdel() {
  rm -rf $PY_ENV/$1
}

# ZSH ALIAS END

## POWERLINE SETTING START¬
#if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi
## POWERLINE SETTING END¬

export TERM="xterm-256color"
#export TERM="xterm-color"
#export TERM="xterm"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"

ZSH_THEME=".agnoster_py" #awesome with python virenv
#ZSH_THEME="agnoster" #awesome
#ZSH_THEME="blinks"
#ZSH_THEME="bureau"
#ZSH_THEME="pygmalion" #nice
#ZSH_THEME="arrow"


## POWERLINE SETTING START
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
#POWERLEVEL9K_STATUS_VERBOSE=false
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
## POWERLINE SETTING END

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fast-syntax-highlighting
  autojump
  alias-tips
)

[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

