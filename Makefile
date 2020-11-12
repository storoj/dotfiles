init:
	cd
	git init
	git remote add origin git@github.com:storoj/dotfiles.git
	git fetch
	git checkout master --force
	git submodule update --init
	git config --local status.showUntrackedFiles no
