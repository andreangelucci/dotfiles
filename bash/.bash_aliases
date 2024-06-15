alias ls='exa -l --icons'
alias ll='ls -lah'
alias l='ls'
alias c='clear'
alias tree='exa -T --icons'
alias m='cmatrix -a'
alias history_fzf='history | fzf'
alias json=fx
alias vim=nvim
alias vi=vim
alias v=vim
alias v.='v .'
alias fzf='fzf-tmux'
alias lg=lazygit
alias g=git
alias G=git
alias gb='git branch | fzf | xargs git switch'
alias gm='git branch --list -a | fzf | xargs git merge'
alias gs='git status'
alias gd='git branch --list -a | fzf | xargs git diff | delta'
alias gd@{u}='git diff @{u} | delta'
alias gf='git fetch --all --prune && git merge'
alias gp='git push'
alias gg='git ls-files | grep .py | xargs grep'
alias pydoc='python -m pydoc'
alias pron='say -v Junior --'
alias cat=bat --color=always

alias gpt='sgpt'
alias review='gpt --editor --role english-reviewer'
alias translate='gpt --editor --role translator'

. ~/.private/bash_aliases
