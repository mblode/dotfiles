all: install

install:
	cp .vimrc ~/
	cp .zshrc ~/
	cp .hushlogin ~/
	cp .githelpers ~/

update:
	cp ~/.vimrc .
	cp ~/.githelpers .
