for f in ~/.zsh/*; do source $f; done
true


echo -en "\e]2;Ares's fancy shell\a"

# ALIASES
alias ls='ls --color=auto'
alias us='setxkbmap us'
alias fr='setxkbmap fr'
alias ll='ls -l'
alias ponyloop='~/ponyloop'
alias gitls='git ls-tree -r master --name-only'

export PAGE=most
