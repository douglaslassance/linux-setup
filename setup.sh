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

# Link font folder.
ln -sdf $script_path/home/.local/share/fonts ~/.local/share

# Link configurations
ln -sdf $script_path/home/.config/hypr ~/.config
ln -sdf $script_path/home/.config/waybar ~/.config
ln -sdf $script_path/home/.config/wofi ~/.config
ln -sdf $script_path/home/.config/kitty ~/.config

# Get wallpapers.
git clone https://github.com/aynp/dracula-wallpapers.git ~/Pictures/Wallpapers

# Setup GTK theme.
# https://draculatheme.com/gtk
git clone https://github.com/dracula/gtk.git ~/.themes/Dracula

ln -sdf ~/.themes/Dracula/assets ~/.config
ln -sf ~/.themes/Dracula/gtk-4.0/gtk.css ~/.config/gtk-4.0
ln -sf ~/.themes/Dracula/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

temp_dir=$(mktemp -d)
wget -P "$temp_dir" https://github.com/dracula/gtk/files/5214870/Dracula.zip
rm -rf ~/.icons/Dracula
unzip "$temp_dir/Dracula.zip" -d ~/.icons

gsettings set org.gnome.desktop.interface icon-theme "Dracula"
