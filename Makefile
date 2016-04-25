all: install

install:
	cp home/.zshrc ~/
	cp home/.vimrc ~/
	cp home/.hushlogin ~/
	cp home/.gitconfig ~/
	cp home/.gitignore ~/

update:
	cp ~/.vimrc ./home
	cp ~/.zshrc ./home
	cp ~/.gitconfig ./home
