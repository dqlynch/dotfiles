alias tars='tar -xvzf'
alias c='clear'
alias ..='cd ..'
alias la='ls -FGlAhp'
alias pyenv='python3 -m venv env && source env/bin/activate'
alias pyserv='python3 -m http.server'
alias ncvis='mkfifo /tmp/mpd.fifo;while :; do yes $’\n’ | nc -lu 127.0.0.1 5555 > /tmp/mpd.fifo; done &'

export EDITOR=vim
export GIT_EDITOR=vim
export PATH=$PATH:~/scripts
