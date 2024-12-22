
export CLICOLOR=1
export EDITOR=vim
export KEYTIMEOUT=1
export QUOTING_STYLE=literal
export TERM=xterm-256color

# Path
      PATH=/usr/local/bin
PATH=$PATH:/opt/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin

# pco
export PCO_ROOT=$HOME/Code/pco/bin

if [[ -d $PCO_ROOT ]]; then
  export PATH=$HOME/pco-box/bin:$PATH
  source $HOME/pco-box/env.sh
  eval "$(~/Code/pco/bin/pco init -)"
  eval "$(devbox global shellenv --init-hook)"
  eval "$(direnv hook zsh)"
else
  PATH=$PATH:/opt/homebrew/bin
  PATH=$PATH:/opt/homebrew/sbin
  eval $(/opt/homebrew/bin/brew shellenv)
fi

if [[ -s ~/.cargo/env ]] ; then source ~/.cargo/env ; fi
if [[ -s ~/.profile.local ]] ; then source ~/.profile.local ; fi
if [[ -s ~/.private ]] ; then source ~/.private ; fi
