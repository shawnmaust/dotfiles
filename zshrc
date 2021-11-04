#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
export INCLUDES=$HOME/.local/share/dotfiles

source $DOTFILES/profile
source $DOTFILES/aliases

source $INCLUDES/zsh-completions/zsh-completions.plugin.zsh
source $INCLUDES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

autoload -U compinit && compinit
zmodload -i zsh/complist

unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt interactivecomments
setopt share_history

bindkey -v # vim bindings
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^R' history-incremental-search-backward

git_prompt() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

  if [ ! -z $BRANCH ]; then
    echo -n "%F{yellow}$BRANCH"

    if [ ! -z "$(git status --short)" ]; then
      echo " %F{red}✗"
    fi
  fi
}

PS1='
%F{blue}%~$(git_prompt)
%F{244}%# %F{reset}'
