echo "Installing Base System"\n

echo "Obtaining sudo"
sudo -v

echo "Upgrading APTs"  
sudo apt update
sudo apt upgrade -y

echo "Installing Awesome WM"
sudo apt install awesome xinit arandr autorandr suckless-tools -y

echo "Installing ZSH"
sudo apt install zsh -y

# echo "Changing default shell to ZSH"
# chsh -s $(which zsh)
# rm -rf ~/.zshrc

echo "Create config folder"
mkdir -p ~/.config

ln -s ./awesome ~/.config/awesome

awesome -k

# echo "Installing FiraCode Nerd Fonts"


# echo "Installing Starship theme..."
# sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# echo "Configuring Starship"
# ln -s "$(readlink -f ./config/starship.toml)" ~/.config/

# echo "Installing FZF"
# sudo apt install fzf -y

# # echo "Cloning dot files"
# # mkdir -p ~/.config/brahmastra
# # git clone git@github.com:0x006F/dotfiles.git ~/.config/brahmastra/dotfiles
# # ~/.config/brahmastra/dotfiles/install.sh

# # Configuring ZSH
# ln -s "$(readlink -f ./.zshrc)" ~/