all: install

install:
	cp -rf .vim ../
	cp .vimrc ../
	cp .zshrc ../
	cp .githelpers ../
	cp .hushlogin ../

update:
	cp -rf ~/.vim .
	cp ~/.vimrc .
	cp ~/.githelpers .
