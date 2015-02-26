# My (Louis Clergue) configuration for zsh
# @author = Louis Clergue <louisclergue@gmail.com>

#Antigen LOAD
source ~/.antigen/antigen.zsh

# Aliases LOAD
test -s ~/.aliases && . ~/.aliases || true
# Variable LOAD
test -s ~/.variables && . ~/.variables || true

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/louis/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Personal modifications
set DEFAULT_USER="louis"
#export TERM='xterm-256color'
#
# -- ANTIGEN --
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

# - Highlight
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
# Override highlighter colors
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=green
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=green
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none

# Theme
antigen theme https://gist.github.com/agnoster/3712874.git agnoster
#antigen bundle sindresorhus/pure

antigen apply
# -- END ANTIGEN --

# TMUX LOAD
if [[ -z $TMUX ]]; then
  # Attempt to discover a detached session and attach it, else create a new session
  CURRENT_USER=$(whoami)
  if tmux has-session -t $CURRENT_USER 2>/dev/null; then
    tmux -2 attach-session -t $CURRENT_USER
  else
    tmux -2 new-session -s $CURRENT_USER
  fi
else
  # If inside tmux session then print MOTD
  MOTD=/etc/motd.tcl
  if [ -f $MOTD ]; then
    $MOTD
  fi
fi
