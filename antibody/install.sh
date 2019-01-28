# Antibody

echo "Installing Antibody..."

antibody bundle <"$HOME/dotfiles/antibody/bundles.txt" >~/.zsh_plugins.sh
antibody update
