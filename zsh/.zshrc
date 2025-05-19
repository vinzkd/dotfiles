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

autoload -Uz compinit promptinit
compinit
promptinit; prompt gentoo

# Created by `pipx` on 2024-07-23 21:07:14
export PATH="$PATH:/home/vinzk/.local/bin"
# End of lines added by compinstall


# User config
setopt autocd

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# Aliases
alias ls="eza --long --no-permissions"
alias cd="z"
alias homespace="vinzk@192.168.1.75"
alias pispace="vinzk@192.168.1.210"
alias pispace2="vinzk@192.168.1.213"
alias fetch="fastfetch"
alias sudo="doas"

eval "$(zoxide init zsh)"         # zoxide

source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh   # zsh-syntax-highlighting
. /usr/share/zsh/site-functions/zsh-autosuggestions.zsh            # zsh-autosuggestions

source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
source /usr/share/fzf/key-bindings.zsh

export PATH=$PATH:/home/vinzk/.spicetify
