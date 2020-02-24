# prompt.zsh

# Resets all styles
reset=$'%{\e[0m%}'

n=$'\n'

# hc = Host color
# sc = Separator color
# dc = Dir color
# pc = Prompt color
hc=$'%{\e[31m%}'
sc=$'%{\e[33m%}'
dc=$'%{\e[36m%}'
pc=$'%{\e[34m%}'

l2="$pc> $reset"

l1_prompt="%B${sc}[${hc}\$?${sc}]${sc}[$hc%n$sc%{@%}$hc%M${sc}>>$dc%~${sc}]%b ${MYGITPS1}"

l1_date="$pc%D %*"

export PROMPT="$n$l1_prompt $l1_date$n$l2"
