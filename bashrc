#!/usr/bin/env bash

export DOTFILES=$HOME/.dotfiles

source "$DOTFILES/profile"
source "$DOTFILES/aliases"

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

BLUE="$(tput setaf 4)"
GREY="$(tput setaf 244)"
RESET="$(tput sgr0)"

PS1="
\[$BLUE\w\]
\[$GREY\]$ \[$RESET\]"
