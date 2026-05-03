#!/bin/bash
# Create the swap file: (exaample 512MB)
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
swapon --show
free -h
