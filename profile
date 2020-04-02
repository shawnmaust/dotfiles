if [[ -s ~/.private-profile ]] ; then source ~/.private-profile ; fi

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

PATH=$PATH:/usr/local/opt/varnish@4/bin
PATH=$PATH:/usr/local/opt/varnish@4/sbin
PATH=$PATH:/usr/local/opt/postgresql@9.6/bin
PATH=$PATH:/usr/local/opt/postgresql@9.6/sbin

PATH=$PATH:~/.rbenv/bin
PATH=$PATH:~/.rbenv/bundle
# export PATH

eval "$(rbenv init -)"
