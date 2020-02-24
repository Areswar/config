unameOut="$(uname -s)"
case "$unameOut" in
    Linux*)   alias ls='ls --color=auto';;
    Darwin*)  alias ls='ls -G';;
esac
alias ll='ls -l'
alias pull='git pull --rebase'
alias l='ls'
alias p="ping 8.8.8.8"
