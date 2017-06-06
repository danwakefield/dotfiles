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
export NVM_LAZY_LOAD=true
export NVM_DIR=$XDG_CONFIG_HOME/nvm

# ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="bullettrain"
export BULLETTRAIN_DIR_EXTENDED=2
if [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; then
    export BULLETTRAIN_CONTEXT_SHOW=true
fi

DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(
    rsync
    zsh-nvm
    git
    bundler
    git-extras
    git-flow
    extract
    common-aliases
    virtualenv
    docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration
PATH="/usr/local/bin"
PATH="$PATH:/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:$GOROOT/bin"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/.composer/vendor/bin"
PATH="$PATH:/usr/games"
PATH="$PATH:/usr/local/games"
PATH="$PATH:/usr/local/heroku/bin"
PATH="$PATH:$HOME/code/pebble/sdk/bin"
export PATH

[[ -r /usr/local/etc/profile.d/autojump.sh ]] \
    && source /usr/local/etc/profile.d/autojump.sh \
    || echo "Install Autojump: ai autojump"
[[ -r $HOME/.custom_vars.sh ]] && source $HOME/.custom_vars.sh
setopt HIST_IGNORE_SPACE

# The next line updates PATH for the Google Cloud SDK.
if [ -f $HOME/src/google-cloud-sdk/path.zsh.inc ]; then
  source '$HOME/src/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f $HOME/src/google-cloud-sdk/completion.zsh.inc ]; then
  source '$HOME/src/google-cloud-sdk/completion.zsh.inc'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
