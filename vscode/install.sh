#!/bin/sh
if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	# from `code --list-extensions`
	modules="
mblode.twig-language-2
shinnn.stylelint
mrmlnc.vscode-scss
robinbentley.sass-indented
esbenp.prettier-vscode
christian-kohler.path-intellisense
mblode.one-dark-italic
PKief.material-icon-theme
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
