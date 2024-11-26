HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

#zstyle :compinstall filename '/home/giri/.zshrc'

#autoload -Uz compinit
#compinits
