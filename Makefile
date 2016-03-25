all: install

install:
	cp home/.vimrc ~/
	cp home/.zshrc ~/
	cp home/.hushlogin ~/
	cp home/.gitconfig ~/
	cp home/.gitignore ~/
	cp atom/config.cson ~/.atom/config.cson
	cp -r fonts/. /Library/Fonts

update:
	cp ~/.vimrc ./home
	cp ~/.zshrc ./home
	cp ~/.gitconfig ./home
	cp ~/.atom/config.cson ./atom
