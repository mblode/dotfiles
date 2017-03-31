all: install

install:
	cp home/.zshrc ~/
	cp home/.vimrc ~/
	cp home/.hushlogin ~/
	cp home/.gitconfig ~/
	cp home/.gitignore ~/
	cp home/.macos ~/
	cp home/init.vim ~/.config/nvim/

update:
	cp ~/.vimrc ./home
	cp ~/.zshrc ./home
	cp ~/.gitconfig ./home
	cp ~/.macos ./home
