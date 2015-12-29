
# Extra Aliases
alias agg='\ag'
alias ans='ansible '
alias ansp='ansible-playbook '
alias cl='clear'
alias cp='cp'
alias feh='\feh -A "shred -uvz %f" --fullscreen --auto-zoom --draw-filename'
alias fehf='\feh -A "shred -uvz %f" --quiet --draw-filename --fullscreen --hide-pointer --randomize --recursive --auto-zoom '
alias GD='git diff HEAD~1 HEAD'
alias gh='\gb'
alias -g json='| python -m json.tool'
alias grep='egrep --color=auto'
alias grv='git review'
alias gunmod='git status | grep "modified" | awk "{print \$2}" | xargs -I{} git checkout -- {}'
alias gv='gvim --remote-silent'
alias les='less '
alias mget='wget  --header="Accept: */*" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0"'
alias rm='rm -I'
alias rsync-sync="rsync -avzu --delete --progress -h"
alias sgrep='\ag --context=5 --noheading --color-path 35 --color-line-number 32 --follow --path-to-agignore ~/.config/agignore '
alias -s pdf=evince
alias sv='sudo -E vim '
alias vg='vagrant'
alias vvpi='venv/bin/python setup.py develop'
alias vvp='venv/bin/python'
alias vv='virtualenv venv'
alias yt3='cd $HOME/downloads; youtube-dl --verbose --extract-audio --audio-format mp3 '
alias yt='cd $HOME/downloads; youtube-dl --verbose'

# I like the 'p' alias and 'j' is used by autojump so unset them both
alias j='false'
alias p='false'
unalias p
unalias j

for source_file in $ZSH_CUSTOM/*.sh; do
    if [[ -r $source_file ]]; then
        source $source_file
    fi
done
unset source_file
