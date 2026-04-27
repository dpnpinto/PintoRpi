#!/bin/sh
#install all soft
# river uses seat
apk add seatd
rc-update add seatd
rc-service seatd start 
doas adduser $USER seat
doas setup-wayland-base
# I like this font
doas apk add font-jetbrains-mono-nerd ncurses waybar river-classic river-classic-doc foot fuzzel fastfetch eza tree bat dysk yazi ncdu lynx
# enable grapic card
# missing ccode
# copy all files to .config in home directory
cp -rv ./.config/* ~/.config/
rm ~/.config/fastfetch/*
cp ./.config/bash/.* ~
