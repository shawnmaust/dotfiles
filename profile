
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

# rbenv
export RBENV_ROOT=$HOME/.rbenv
# PATH=~/.rbenv/shims:$PATH
PATH=$PATH:~/.rbenv/bin
PATH=$PATH:~/.rbenv/bundle

if [[ -d $RBENV_ROOT ]]; then
  eval "$(rbenv init -)"
else
  echo "Warning: rbenv not found"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# pco
export PATH=$HOME/pco-box/bin:$PATH
export PCO_ROOT=$HOME/Code/pco/bin
source $HOME/pco-box/env.sh

if [[ -d $PCO_ROOT ]]; then
  eval "$(~/Code/pco/bin/pco init -)"
else
  echo "Warning: pco/bin not found"
fi

if [[ -s ~/.profile.local ]] ; then source ~/.profile.local ; fi
if [[ -s ~/.private ]] ; then source ~/.private ; fi
