#!/bin/bash
#install all soft
sudo pacman -S waybar swaybg river-classsic foot fuzzel fastfetch eza tree bat dysk yazi ncdu pcmanfm
# copy all files to .config in home directory
cp -rv ./.config/* ~/.config/
