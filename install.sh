#!/bin/bash

echo "Installing Base System"

echo "Obtaining sudo"
sudo -v

echo "Upgrading APTs"  
sudo apt update
sudo apt upgrade -y

echo "Installing Awesome WM"
mkdir -p ~/.config
mkdir -p ~/.local/bin
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
sudo apt install fonts-firacode unzip git fzf wireplumber pipewire-media-session- pipewire-pulse pavucontrol fonts-noto-color-emoji pcmanfm libspa-0.2-bluetooth numlockx -y

echo "Configuring PipeWire"
systemctl --user --now enable wireplumber.service

echo "Installing Starship Prompt"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

ln -s $(readlink -f ./starship.toml) ~/.config/

echo "Installing FZF"
sudo apt install fzf -y

echo "Configuring Alacritty"

ln -s $(readlink -f ./alacritty.yml) ~/.config/

echo "Configuring Helix Editor"
mkdir -p ~/.config/helix
ln -s $(readlink -f ./helix-config.toml) ~/.config/helix/config.toml

echo "Setting up awesome wm widgets"
(cd awesome;git clone https://github.com/streetturtle/awesome-wm-widgets.git)

Keep only relavant plugins
GLOBIGNORE=pactl-widget:volume-widget:battery-widget
(cd awesome/awesome-wm-widgets;rm -rf -- *)
