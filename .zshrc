for f in ~/.zsh/*; do source $f; done
true

echo -en "\e]2;Ares's fancy shell\a"

# ALIASES
alias gpp='clang++ -Wextra -Wall -Werror -std=c++1y'
alias slrn='slrn -h news.epita.fr'
alias ls='ls --color=auto'
alias ..='cd ..'
alias us='setxkbmap us'
alias fr='setxkbmap fr'
alias ll='ls -l'
alias ponyloop='~/ponyloop'
alias gitls='git ls-tree -r master --name-only'
alias myssh='ssh ares@vps.ares.ninja'
alias pull='git pull --rebase'
alias l='ls'
alias lol="toilet --gay lol"
alias p="ping 8.8.8.8"
alias fixme="grep -rn 'FIXME: Some code'"
alias fixing="grep -rn 'FIXING:'"
alias mgrep="grep -rn"


export PAGER=most
export GREP_OPTIONS='--color=always'
