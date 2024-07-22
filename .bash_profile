alias tars='tar -xvzf'
alias c='clear'
alias ..='cd ..'
alias la='ls -FGlAhp'
alias pyserv='python3 -m http.server'
alias ncvis='mkfifo /tmp/mpd.fifo;while :; do yes $’\n’ | nc -lu 127.0.0.1 5555 > /tmp/mpd.fifo; done &'

alias gr='grep --color=always -Inr'

alias tls='tmux ls'

export EDITOR=vim
export GIT_EDITOR=vim
export PATH=$PATH:~/scripts

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:/usr/local/cuda/bin:$PATH"

# Vim editing mode in terminal
set -o vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# g-cloud
alias gssh='gcloud compute ssh'

mcd () {
  mkdir "$1"
  cd "$1"
}

# Setting PATH for Python 3.12
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH
