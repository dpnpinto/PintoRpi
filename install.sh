#!/bin/bash
#install all soft
sudo usermod -aG seat $USER
sudo pacman -S ttf-jetbrains-mono-nerd waybar river-classic foot fuzzel fastfetch eza tree bat dysk yazi ncdu
# copy all files to .config in home directory
cp -rv ./.config/* ~/.config/
cp ./.config/bash/.* ~/
