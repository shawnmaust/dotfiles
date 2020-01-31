#!/usr/bin/env bash

export DOTFILES=$HOME/.dotfiles
export INCLUDES=$HOME/.local/share/dotfiles

source "$DOTFILES/env"
source "$DOTFILES/aliases"

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

RESET="$(tput sgr0)"
BLUE="$(tput setaf 4)"
GREEN="$(tput setaf 2)"
GREY="$(tput setaf 244)"
RED="$(tput setaf 1)"
YELLOW="$(tput setaf 3)"

git_prompt() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

  if [ ! -z "$BRANCH" ]; then
    echo -n "$YELLOW$BRANCH"

    if [ ! -z "$(git status --short)" ]; then
      echo " ${RED}✗"
    fi
  fi
}

PS1="
\[$BLUE\w$(git_prompt)\]
\[$GREY\]$ \[$RESET\]"
