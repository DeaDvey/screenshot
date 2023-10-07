#!/bin/bash

echo "You need xclip installed for the xorg screenshot tool"
echo "You need slurp, grim and wl-clipboard for the wayland screenshot tool"

sudo cp screenshot /usr/bin
sudo cp screenshot-wayland /usr/bin
sudo chmod +x /usr/bin/screenshot
sudo chmod +x /usr/bin/screenshot-wayland
cp screenshot.sh $HOME
cp screenshot-w.sh $HOME
sudo chmod +x $HOME/screenshot.sh
sudo chmod +x $HOME/screenshot-w.sh
mkdir $HOME/Screenshots



