#!/bin/bash
set -euxo pipefail


packages=(
    jq
    stow
    tree
    # zsh #uncomment onfresh install
)


echo "Updating package list..."
sudo apt update


echo "Installing packages..."
for pkg in "${packages[@]}";
do
    echo "Installing $pkg..."
    sudo apt install -y "$pkg"

done
