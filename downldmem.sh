#!/bin/bash
# Create the swap file: (e.g., 4GB)
sudo fallocate -l 512M /swapfile

# Set permissions:
sudo chmod 600 /swapfile

# Setup as swap space:
sudo mkswap /swapfile

# Enable the swap
sudo swapon /swapfile

# Make it permanent: Add to /etc/fstab.
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Verify
sudo swapon --show
free -h

# Enable zswap with command in U-Boot console "boot.txt"
# setenv bootargs ${bootargs} zswap.enabled=1
# saveenv
# boot
sudo sed -i 's/bootargs/bootargs zswap.enabled=1/g' /boot/boot.txt
