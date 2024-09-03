alias ls='eza -l --icons'
alias ll='ls -lah'
alias l='ls'
alias c='clear'
alias tree='eza -T --icons'
alias json=fx
alias v=nvim
alias vv='fzf | xargs nvim'
alias fzf='fzf-tmux'
alias g=git
alias G=git
alias gb='git branch | fzf | xargs git switch'
alias gm='git branch --list -a | fzf | xargs git merge'
alias gs='git status'
alias gd='git branch --list -a | fzf | xargs git diff | delta'
alias gd@{u}='git diff @{u} | delta'
alias gf='git fetch --all --prune && git merge'
alias gp='git push'
alias pydoc='python -m pydoc'
alias pron='say -v Junior --'
alias cat='bat --color=always'
alias gpt='sgpt'
alias review='gpt --editor --role english-reviewer'
alias translate='gpt --editor --role translator'
alias s='source ~/.bashrc'

[ -f ~/.private/bash_aliases ] && source ~/.private/bash_aliases 
