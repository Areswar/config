autoload -U colors && colors

setopt prompt_subst
setopt glob_dots

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/chewie/.zshrc'

autoload -Uz compinit
compinit
