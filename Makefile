all: install

install:
	cp home/.zshrc ~/
	cp home/.vimrc ~/
	cp home/.hushlogin ~/
	cp home/.gitconfig ~/
	cp home/.gitignore ~/
	cp home/.macos ~/

update:
	cp ~/.vimrc ./home
	cp ~/.zshrc ./home
	cp ~/.gitconfig ./home
	cp ~/.macos ./home
