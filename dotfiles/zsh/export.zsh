export EDITOR=vim
export GREP_OPTIONS='--color=auto'
export PATH="/usr/local/sbin:$HOME/.cargo/bin:/usr/local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin"
export SAVEHIST=50000
export HISTFILE=~/.zsh_history

if type most > /dev/null; then
   export PAGER=most
elif type more > /dev/null; then
   export PAGER=more
else
   export PAGER=less
fi

