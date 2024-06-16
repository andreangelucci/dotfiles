export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/.local/bin:/opt/homebrew/opt/libpq/bin:$PATH"

eval "$(starship init bash)"

shopt -s autocd
shopt -s histappend
bind -f ~/.inputrc

export EDITOR=nvim
export HISTSIZE=10000
export HISTFILESIZE=10000
export SAVEHIT=10000
export HISTCONTROL=ignoredups:erasedups
export HISTFILE=~/.bash_history

export PAGER=bat
export FX_THEME=6

# Fuzzy Finder configuration
FZF_TMUX=1
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Git completion
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash

# External Files
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -f ~/.bash_variables ] && source ~/.bash_variables
[ -f ~/.bash_functions ] && source ~/.bash_functions
