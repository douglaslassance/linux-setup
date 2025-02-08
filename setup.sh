#!/bin/sh

# Install packages.
# sudo dnf install kitty waybar wofi blender krita swaync starship
# hyprland hyprlock hyprpaper hyprshot hypridle
# sudo dnf install cargo vlc

# Get the absolute path of the script
script_path=$(dirname $(realpath "$0"))

# Clear configurations
rm -rf ~/.config/hypr
rm -rf ~/.config/waybar
rm -rf ~/.config/wofi
rm -rf ~/.config/kitty

# Link bin folder.
chmod +x $script_path/home/.local/bin/*
ln -sdf $script_path/home/.local/bin ~/.local

# Link configurations
ln -sdf $script_path/home/.config/hypr ~/.config
ln -sdf $script_path/home/.config/waybar ~/.config
ln -sdf $script_path/home/.config/wofi ~/.config
ln -sdf $script_path/home/.config/kitty ~/.config

# Get wallpapers.
git clone https://github.com/aynp/dracula-wallpapers.git ~/Pictures/Wallpapers
