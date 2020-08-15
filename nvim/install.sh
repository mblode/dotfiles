# NeoVim

echo "Installing NeoVim..."

if [ ! -s '~/.config/nvim/autoload/plug.vim' ]; then
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

nvim +PlugInstall +qal
