all: install

install:
	cp home/.vimrc ~/
	cp home/.zshrc ~/
	cp home/.hushlogin ~/
	cp home/.gitconfig ~/
	cp home/.gitignore ~/

update:
	cp ~/.vimrc .
	cp ~/.zshrc .
	cp ~/.gitconfig .
	cp ~/.gitignore .
