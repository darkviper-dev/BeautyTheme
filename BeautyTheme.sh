#!/bin/bash

pkgname="BeautyTheme"
repo_url="https://github.com/darkviper-dev/$pkgname.git"

# Install git if not already installed
if ! command -v git &> /dev/null; then
    echo "Installing git..."
    sudo pacman -S --noconfirm git
fi

# Clone the repository
if [ ! -d "$pkgname" ]; then
    echo "Cloning $pkgname repository..."
    git clone "$repo_url"
else
    echo "$pkgname repository already exists. Pulling latest changes..."
    cd "$pkgname" && git pull && cd ..
fi

# Extract tar.gz if it exists
if [ -f "$pkgname/$pkgname.tar.gz" ]; then
    echo "Extracting $pkgname.tar.gz..."
    tar -xzvf "$pkgname/$pkgname.tar.gz" -C "$pkgname/"
else
    echo "Archive '$pkgname/$pkgname.tar.gz' not found. Skipping extraction."
fi

sudo cp -r "$pkgname/default" "/usr/share/icons/"
sudo cp -r "$pkgname/$pkgname" "/usr/share/icons/"
