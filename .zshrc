# .zshrc
# Source every configuration file in .zsh

for f in ~/.zsh/*; do source $f; done
for f in ~/.shell-config/*; do source $f; done
test -d ~/.local.zsh/ && for f in ~/.local.zsh/*; do source $f; done

test -f ~/.extra-paths && source ~/.extra-paths

true
