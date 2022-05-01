echo "Installing Base System"\n

echo "Obtaining sudo"
sudo -v

echo "Upgrading APTs"  
sudo apt update
sudo apt upgrade -y

echo "Installing ZSH"
sudo apt install zsh -y

echo "Changing default shell to ZSH"
chsh -s $(which zsh)
rm -rf ~/.zshrc

echo "Installing FiraCode Nerd Fonts"


echo "Installing Starship theme..."
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "Installing FZF"
sudo apt install fzf -y

echo "Cloning dot files"
mkdir -p ~/.config/brahmastra
git clone git@github.com:0x006F/dotfiles.git ~/.config/brahmastra/dotfiles
~/.config/brahmastra/dotfiles/install.sh

ln -s "$(readlink -f ./.zshrc)" ~/