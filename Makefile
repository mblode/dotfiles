all: install

install:
	cp git/.gitconfig ~/
	cp git/.gitignore ~/
	cp macos/.macos ~/
	cp macos/.hushlogin ~/
	cp vim/.vimrc ~/
	cp zsh/.zshrc ~/
	cp zsh/.aliases ~/

update:
	cp ~/.gitconfig ./git
	cp ~/.macos ./macos
	cp ~/.vimrc ./vim
	cp ~/.zshrc ./zsh
