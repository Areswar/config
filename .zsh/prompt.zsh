# prompt.zsh
# My extravagant multi-line zsh prompt.

# Enables/disables bold
#bold=$'%{\e[1m%}'
#nobold=$'%{\e[22m%}'

# Resets all styles
reset=$'%{\e[0m%}'

# n = \n
n=$'\n'

# hc = Host color
# sc = Separator color
# dc = Dir color
# pc = Prompt color
hc=$'%{\e[31m%}'
sc=$'%{\e[32m%}'
dc=$'%{\e[33m%}'
pc=$'%{\e[34m%}'

l2="$pc> $reset"

l1_start="$bold$hc%n$sc%{@%}$hc%M $dc%~"
l1_end="$pc%D %*$hc%(?.. [$pc%?$hc])"

export PROMPT="$n$l1_start $l1_end$n$l2"
