alias zs='source ~/.zshrc'
export PS1="%20<...<%~%<<: "

source ~/.bash_profile
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

set -o vi
bindkey '^R' history-incremental-search-backward
