bindkey -v                  # vim in zsh!
export KEYTIMEOUT=1         # Reduces the delay transition between modes

bindkey "^[[7~" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^W" backward-kill-word    # vi-backward-kill-word
bindkey "^H" backward-delete-char  # vi-backward-delete-char
bindkey "^U" backward-kill-line    # vi-kill-line
bindkey "^?" backward-delete-char  # vi-backward-delete-char

bindkey '\e.' insert-last-word     # Alt+. insert last work
bindkey "^R" history-incremental-search-backward  # C-R history
