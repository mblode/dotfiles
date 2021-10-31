# PHP

echo "Installing PHP..."

if which valet >/dev/null 2>&1; then
	echo "Valet already installed"
else
	composer global require laravel/valet
	valet install
fi

cd $HOME

if [[ ! -e "Sites" ]]; then
    mkdir "Sites"
fi

cd Sites
valet park

ln -sf "$DOTFILES/php/Craft3ValetDriver.php" "$HOME/.config/valet/drivers/"
