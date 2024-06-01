#!/bin/bash

# Update and install necessary packages
sudo pacman -Syu --needed base-devel git libx11 libxft libxinerama

# Create a directory for the source code
mkdir -p ~/src
cd ~/src

# Clone, build, and install dwm
git clone https://git.suckless.org/dwm
cd dwm
sudo make clean install
cd ..

# Clone, build, and install dmenu
git clone https://git.suckless.org/dmenu
cd dmenu
sudo make clean install
cd ..

# Create or update .xinitrc to launch dwm
echo "exec dwm" > ~/.xinitrc

echo "dwm and dmenu have been installed successfully."
echo "A .xinitrc file has been created to launch dwm."
