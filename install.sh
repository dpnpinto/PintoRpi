#!/bin/bash
#install all soft
sudo pacman -S waybar swaybg river-classic foot fuzzel fastfetch eza tree bat dysk yazi ncdu
# copy all files to .config in home directory
cp -rv ./.config/* ~/.config/
