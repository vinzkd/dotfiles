# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vinzk/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Aliases
alias ls="eza --long --no-permissions"
alias cd="z"

alias reboot="loginctl reboot"

alias update="doas emerge -qavuDU @world && doas emerge --depclean"
alias syncupdate="doas emerge --sync && doas emerge -qavuDU @world && doas emerge --depclean"

alias homespace="vinzk@192.168.1.75"


#PS1=' %F{blue}%~ %(?.%F{green}.%F{red})%#%f '

eval "$(zoxide init zsh)"         # zoxide
#eval "$(starship init zsh)"       # starship prompt

# Created by `pipx` on 2024-07-23 21:07:14
export PATH="$PATH:/home/vinzk/.local/bin"

source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh   # zsh-syntax-highlighting
. /usr/share/zsh/site-functions/zsh-autosuggestions.zsh            # zsh-autosuggestions

source ~/powerlevel10k/powerlevel10k.zsh-theme
