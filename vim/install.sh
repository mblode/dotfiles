# Vim

echo "Installing Vim..."

if [ ! -s '~/.vim/autoload/plug.vim' ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall +qall
