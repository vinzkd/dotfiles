# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]]; then
  # Shell is non-interactive.  Be done now!
  return
fi

# Put your fun stuff here.

## Aliases
alias ls="eza --long --no-permissions"
alias cd="z"

alias reboot="loginctl reboot"
alias update="doas emerge -qavuDU @world && doas emerge --depclean"
alias syncupdate="doas emerge --sync && doas emerge -qavuDU @world && doas emerge --depclean"

alias homespace="vinzk@192.168.1.75"
##

PS1="\e[0;32m\]\u@\h \e[0;34m\]\w $ \e[0m\]"

eval "$(zoxide init bash)"

# Created by `pipx` on 2024-07-23 21:07:14
export PATH="$PATH:/home/vinzk/.local/bin"
