#!/bin/bash

echo "Installing Base System"

echo "Obtaining sudo"
sudo -v

echo "Upgrading APTs"  
sudo apt update
sudo apt upgrade -y

echo "Installing Awesome WM"
sudo apt install awesome xinit arandr autorandr suckless-tools alacritty compton network-manager blueman -y

awesome_folder_path=$(readlink -f ./awesome/)
(cd ~/.config;ln -s "$awesome_folder_path" .)

echo "Installing ZSH"
sudo apt install zsh -y

echo "Changing default shell to ZSH"
chsh -s $(which zsh)
rm -rf ~/.zshrc

shell_helpers=$(readlink -f ./shell_helpers)
(cd ~/.config;ln -s "$shell_helpers" .)

# Configuring ZSH
ln -s "$(readlink -f ./.zshrc)" ~/

echo "Installing tools"
sudo apt install fonts-firacode unzip git fzf -y


echo "Installing Starship Prompt"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

ln -s $(readlink -f ./starship.toml) ~/.config/

echo "Installing FZF"
sudo apt install fzf -y

ln -s $(readlink -f ./alacritty.yml) ~/.config/

(cd awesome;git clone https://github.com/streetturtle/awesome-wm-widgets.git)

# Keep only relavant plugins
GLOBIGNORE=pactl-widget:battery-widget
(cd awesome/awesome-wm-widgets;rm -rf -- *)
