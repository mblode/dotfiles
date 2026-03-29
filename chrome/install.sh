# Chrome

echo "Installing Chrome utilities..."

if [[ ! -d "$HOME/bin" ]]; then
    mkdir -p "$HOME/bin"
fi

ln -sf "$HOME/dotfiles/chrome/auto-select-cert.sh" "$HOME/bin/auto-select-cert"
