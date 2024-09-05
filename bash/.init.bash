# Update dotfiles
if [ -d ~/dotfiles/ ]; then
	cd ~/dotfiles/
	git switch main --quiet
	git fetch --all --prune --quiet
	git reset --quiet --hard @{u}
fi
