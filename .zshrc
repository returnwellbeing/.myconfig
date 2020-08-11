#CSCOPE ENV START
export CSCOPE_DB=$HOME/test.kern/linux-5.1/cscope.out
#CSCOPE ENV ENd

#PYTHON VIRTUAL ENV START
export PY_ENV="$HOME/.mypython"
#PYTHON VIRTUAL ENV END

#GITHUB EDITOR = VIM START
export VISUAL=vim
export EDITOR="$VISUAL"
#GITHUB EDITOR = VIM END

#FOR KOREAN START
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"
# FOR KOREAN END

#ZSH ALIAS START
alias vi='vim'
alias g11='g++ -std=c++11 -g'
alias jos='jobs'
alias vv='vi ~/.vimrc'
alias vz='vi ~/.zshrc'

#alias for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

#alias for fg
alias f1='fg %1'
alias f2='fg %2'
alias f3='fg %3'
alias f4='fg %4'

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


export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.jenv/bin:$HOME/.local/bin:$PATH

#JENV SETTING START
eval "$(jenv init -)"
#JENV SETTING END

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
  alias-tips
)

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

