# Karabiner

echo "Installing Karabiner..."

cd $HOME/.config

if [[ ! -e "karabiner" ]]; then
    mkdir "karabiner"
fi

cd karabiner

ln -sf "$HOME/dotfiles/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"
