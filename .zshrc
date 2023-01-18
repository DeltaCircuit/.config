# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/giri/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

. "$HOME/.cargo/env"


# KubeCTL
# source <(kubectl completion zsh)

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"


# Load the dotfiles
for DOTFILE in `find ~/.config/brahmastra/dotfiles/system`
do
  source "$DOTFILE"
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
