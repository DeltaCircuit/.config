echo "Installing Base System"

echo "Obtaining sudo"
sudo -v

echo "Upgrading APTs"  
sudo apt update
sudo apt upgrade -y

echo "Installing Awesome WM"
sudo apt install awesome xinit arandr autorandr suckless-tools -y

echo "Installing ZSH"
sudo apt install zsh -y

echo "Changing default shell to ZSH"
chsh -s $(which zsh)
rm -rf ~/.zshrc

# Configuring ZSH
ln -s "$(readlink -f ./.zshrc)" ~/

echo "Installing tools"
sudo apt install fonts-firacode unzip git fzf -y


echo "Installing Starship Prompt"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "Installing FZF"
sudo apt install fzf -y

# # echo "Cloning dot files"
# # mkdir -p ~/.config/brahmastra
# # git clone git@github.com:0x006F/dotfiles.git ~/.config/brahmastra/dotfiles
# # ~/.config/brahmastra/dotfiles/install.sh

