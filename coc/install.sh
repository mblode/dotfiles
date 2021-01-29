# Coc

echo "Installing coc..."

cd $HOME/.config

if [[ ! -e "coc" ]]; then
    mkdir "coc"
fi

cd coc

ln -sf "$HOME/dotfiles/coc/ultisnips" "$HOME/.config/coc/"
