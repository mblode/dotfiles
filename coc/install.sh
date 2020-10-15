# Coc

echo "Installing coc..."

cd $HOME/.config

if [[ ! -e "coc" ]]; then
    mkdir "coc"
fi

if [[ ! -e "nvim" ]]; then
    mkdir "nvim"
fi

cd coc

ln -sf "$HOME/dotfiles/coc/coc-settings.json" "$HOME/.config/nvim/coc-settings.json"
ln -sf "$HOME/dotfiles/coc/ultisnips" "$HOME/.config/coc/"
