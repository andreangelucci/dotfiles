eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/bin:$HOME/.local/bin:$HOME/.local/bin/ai:$HOME/.local/bin/pomodoro:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"

# Fuzzy Finder configuration
FZF_TMUX=1
eval "$(fzf --bash)"

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
export BAT_STYLE=grid
export FX_THEME=6

# Git completion
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash

# Invoke completion
[ -f ~/.invoke-completion.bash ] && source ~/.invoke-completion.bash

# External Files
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -f ~/.bash_secrets ] && source ~/.bash_secrets
[ -f ~/.bash_functions ] && source ~/.bash_functions
