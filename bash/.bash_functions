mkcd(){
	mkdir $1
	cd $1
}

cd(){
    builtin cd "$@"
    if [[ -d ./.venv ]]
    then
        . ./.venv/bin/activate
    fi
}

git-grep(){
    git ls-files | xargs grep --line-number $1 | fzf --delimiter=: --preview 'bat -n --color=always {1} --line-range={2}:'
}

[ -f ~/.private/bash_functions ] && source ~/.private/bash_functions 
