# Create PS1 structure
parse_git() {
	branch=$(git branch 2> /dev/null | grep \* | colrm 1 2)
	[[ -n $(git status --porcelain 2> /dev/null ) ]] && status=󰈸
	[[ -n $branch ]] && line=" ($branch)"
	[[ -n $status ]] && line="$line $status"
	[[ $line ]] && echo $line
}
# PS1="\[\033[0;31m\] \W \[\033[0;33m\]\$(parse_git) \[\033[31m\]\$\[\033[0m\] "
# PS1="\[\e[0;0m\]\$ \[\e[1;31m\]\w \[\e[1;33m\]\$(parse_git) \[\e[0;1m\]\n> \[\e[0m\]"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/andreangeluci/.local/bin:/opt/homebrew/opt/libpq/bin:$PATH"

eval "$(starship init bash)"

set -o vi
shopt -s autocd
export EDITOR=nvim
bind -f ~/.inputrc

# Fuzzy Finder configuration
FZF_TMUX=1
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Git completion
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash

export HISTSIZE=10000
export HISTFILESIZE=10000
export SAVEHIT=10000
export HISTCONTROL=ignoredups:erasedups
export HISTFILE=~/.bash_history
shopt -s histappend

export PAGER=bat
export FX_THEME=6

# External Files
. ~/.bash_aliases
. ~/.bash_variables
. ~/.bash_functions
