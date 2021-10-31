# Coc

echo "Installing nvim..."

cd $HOME/.config

if [[ ! -e "nvim" ]]; then
    mkdir "nvim"
fi

cd nvim

ln -sf "$HOME/dotfiles/nvim/coc-settings.json" "$HOME/.config/nvim/coc-settings.json"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"
