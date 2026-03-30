#!/bin/bash
#install all soft
# river uses seat
sudo usermod -aG seat $USER
sudo systemctl enable seatd
# I like this font
sudo pacman -S ttf-jetbrains-mono-nerd waybar river-classic foot fuzzel fastfetch eza tree bat dysk yazi ncdu lynx
# copy all files to .config in home directory
cp -rv ./.config/* ~/.config/
cp ./.config/bash/.* ~/
