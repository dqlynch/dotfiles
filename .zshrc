alias zs='source ~/.zshrc'
export PS1="%20<...<%~%<<: "

source ~/.bash_profile
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

set -o vi
bindkey '^R' history-incremental-search-backward

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/user/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/user/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/user/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/user/google-cloud-sdk/completion.zsh.inc'; fi

ssh-add -K ~/.ssh/id_ed25519

alias tmat='tmux attach -t '
alias pyenv='python3.12 -m venv env && source ./env/bin/activate'
