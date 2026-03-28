#!/bin/bash
#install all soft
sudo pacman -S waybar waybg river-classsic foot fuzzel fastfetch 
# copy all files to .config in home directory
cp -rv ./.config/* ~/.config/
