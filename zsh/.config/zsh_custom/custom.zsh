
# Extra Aliases
alias GD='git diff HEAD~1 HEAD'
alias grv='git review'
alias gunmod='git status | grep "modified" | awk "{print \$2}" | xargs -I{} git checkout -- {}'
alias gv='gvim --remote-silent'
alias cl='clear'
alias gh='\gb'
alias -g json='| python -m json.tool'
alias -s pdf=evince

alias grep='egrep --color=auto'
alias sgrep='\ag --context=5 --noheading --color-path 35 --color-line-number 32 --follow --path-to-agignore ~/.config/agignore '
alias agg='\ag'
alias rm='rm -I'
alias vg='vagrant'
alias cp='cp'
alias rsync-sync="rsync -avzu --delete --progress -h"
alias feh='\feh -A "shred -uvz %f" --fullscreen --auto-zoom --draw-filename'
alias fehf='\feh -A "shred -uvz %f" --quiet --draw-filename --fullscreen --hide-pointer --randomize --recursive --auto-zoom '
alias les='less '
alias ans='ansible '
alias ansp='ansible-playbook '
alias mget='wget  --header="Accept: */*" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0"'
alias vv='virtualenv venv'
alias vvp='venv/bin/python'
alias vvpi='venv/bin/python setup.py develop'
alias yt='cd $HOME/downloads; youtube-dl --verbose'
alias yt3='cd $HOME/downloads; youtube-dl --verbose --extract-audio --audio-format mp3 '

alias j='false'
alias p='false'
unalias p
unalias j

if [[ -r "$ZSH_CUSTOM/4chanimg.sh" ]]; then
    source "$ZSH_CUSTOM/4chanimg.sh"
fi
