# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/ohmyzsh
export ZSH_CUSTOM=$HOME/.config/zsh_custom
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME
export VISUAL='vim'
export EDITOR='vim'
export GOPATH=$HOME/code/go
export GOROOT=/usr/local/go
export TERM='xterm-256color'

ZSH_THEME="xiong-chiamiov-plus"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(rsync git git-extras debian extract common-aliases virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration
PATH="/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:$GOROOT/bin"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/.composer/vendor/bin"
PATH="$PATH:/usr/games"
PATH="$PATH:/usr/local/games"
PATH="$PATH:$HOME/.rbenv/bin"
PATH="$PATH:$HOME/.rbenv/plugins/ruby-build/bin"
PATH="$PATH:/usr/local/heroku/bin"
export PATH

# Ruby for Uni
eval "$(rbenv init -)"

[[ -r /usr/share/autojump/autojump.sh ]] \
    && source /usr/share/autojump/autojump.sh \
    || echo "Install Autojump: ai autojump"
[[ -r $HOME/.custom_vars.sh ]] && source $HOME/.custom_vars.sh
setopt HIST_IGNORE_SPACE

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code/py
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
