#!/bin/bash

# Elevate shell 
echo "I am going to install some basic stuffs that needs root privileges. Please allow!"
#sudo -v

# Upgrade APT
sudo apt update
sudo apt upgrade -y

# Setup whiptail as we've some user input needed.
sudo apt install whiptail -y

# Install some basic tools
sudo apt install wget curl unzip -y

# Initializes some basic functions
sway() {
    echo "Installing sway and its tools..."
    sudo apt install light swaybg swayidle swayimg swaylock waybar fonts-font-awesome -y
}

# echo "Setting up Wireplumber & pipewire"
sudo apt install libspa-0.2-bluetooth pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse pipewire-media-session- -y
systemctl --user daemon-reload 
systemctl --user --now enable wireplumber.service

# Which WM do you want to set?
wm_choice=$(whiptail --title "Window Manager Selection" \
--menu "Choose your Window Manager: " 10 60 4 \
"sway" "Wayland based tiling window manager" \
"i3" "Xorg based tiling window manager" \
"hyprland" "Wayland based dynamic tiling window manager" \
"awesomewm" "Xorg based highly configurable window manager" \
3>&1 1>&2 2>&3)

exit_status=$?

if [ $exit_status = 0 ]; then
  func_name="${wm_choice,,}" # Converts to lowercase
  func_name="${func_name// /}" # Remove spaces

  if declare -f "$func_name" > /dev/null; then
    "$func_name"
  else  
    echo "Can't setup ${wm_choice} as no bootstrap available for that WM (yet)"
  fi
else 
  echo "No window manager will be installed for you"
fi

