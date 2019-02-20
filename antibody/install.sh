# Antibody

echo "Installing Antibody..."

brew install getantibody/tap/antibody

antibody bundle <"$HOME/dotfiles/antibody/bundles.txt" >~/.zsh_plugins.sh
antibody update
