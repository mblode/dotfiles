# VS Code

echo "Installing VS Code..."

if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	ln -sf "$HOME/dotfiles/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$HOME/dotfiles/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -sf "$HOME/dotfiles/vscode/snippets" "$VSCODE_HOME/User/snippets"
fi
