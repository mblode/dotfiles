# Antibody

echo "Installing Antibody..."

antibody bundle <"$DOTFILES/antibody/bundles.txt" >$HOME/.zsh_plugins.sh
antibody update
