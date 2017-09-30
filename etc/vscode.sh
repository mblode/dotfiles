#!/bin/sh

if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"

	# from `code --list-extensions`
	modules="
akamud.vscode-theme-onedark
HookyQR.beautify
dbaeumer.vscode-eslint
neilding.language-liquid
PKief.material-icon-theme
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
esbenp.prettier-vscode
vsmobile.vscode-react-native
EQuimper.react-native-react-redux
robinbentley.sass-indented
mrmlnc.vscode-scss
shinnn.stylelint
whatwedo.twig
selvinortiz.twig-for-craft-2
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
