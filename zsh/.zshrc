# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vinzk/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Aliases
alias ls="eza --long --no-permissions"
alias cd="z"

alias reboot="loginctl reboot"

alias update="doas emerge -qavuDU @world && doas emerge --depclean"
alias syncupdate="doas emerge --sync && doas emerge -qvuDN @world && doas emerge --depclean"

alias homespace="vinzk@192.168.1.75"


eval "$(zoxide init zsh)"         # zoxide

# Created by `pipx` on 2024-07-23 21:07:14
export PATH="$PATH:/home/vinzk/.local/bin"

source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh   # zsh-syntax-highlighting
. /usr/share/zsh/site-functions/zsh-autosuggestions.zsh            # zsh-autosuggestions

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
