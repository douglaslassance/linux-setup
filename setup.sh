#!/bin/sh

# Install packages.
# sudo dnf install kitty hyprland waybar wofi blender krita swaync hyprpaper hyprshot 
# sudo dnf install cargo vlc

# Get the absolute path of the script
script_path=$(dirname "$0")

pushd $script_path

# Link configuration files.
ln -sf $script_path/home/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf

popd
