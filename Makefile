all: install

install:
	cp .vimrc ../
	cp .zshrc ../
	cp .githelpers ../

update:
	cp ~/.vimrc .
	cp ~/.githelpers .
