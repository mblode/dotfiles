all: install

install:
	cp .vimrc ~/
	cp .zshrc ~/
	cp .hushlogin ~/

update:
	cp ~/.vimrc .
