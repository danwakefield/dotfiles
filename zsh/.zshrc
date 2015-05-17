# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/ohmyzsh
export ZSHCUSTOM=$HOME/.config/zsh_custom
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME
export VISUAL=vim
export GOPATH=$HOME/code/go
export GOROOT=/usr/local/go

if [[ "$USER" == dan ]]; then
    export http_proxy=http://web-proxy.rose.hp.com:8080
    export https_proxy=http://web-proxy.rose.hp.com:8080
    export LANGUAGE="en_US.UTF-8"
    export LC_ALL="en_US.UTF-8"
    export LANG="en_US.UTF-8"
    export LC_TYPE="en_US.UTF-8"
fi

ZSH_THEME="xiong-chiamiov-plus"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(rsync git git-extras debian extract common-aliases autojump)

source $ZSH/oh-my-zsh.sh
. /usr/share/autojump/autojump.sh || echo "Install Autojump: ai autojump"

# User configuration
PATH="/usr/local/sbin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/games"
PATH="$PATH:/usr/local/games"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/code/go/bin"
PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

setopt HIST_IGNORE_SPACE
