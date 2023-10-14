#!/bin/bash

echo "You need xclip installed for the xorg screenshot tool"
echo "You need slurp, grim and wl-clipboard for the wayland screenshot tool"
read -p 'do you have these tools installed? (y/n): ' confirmation
if [ $confirmation = 'y' ]
then
	echo 'continuing...'
else
	echo 'exiting...'
	exit 1

fi
read -p 'if you use wayland press w, if you use xorg press x: ' Display

if [ $Display = 'w' ]
then
	sudo cp screenshot-wayland /usr/bin
	sudo chmod +x /usr/bin/screenshot-wayland
	cp screenshot-w.sh $HOME
	sudo chmod +x $HOME/screenshot-w.sh
	mkdir $HOME/Screenshots

elif [ $Display = 'x' ] 
then
	sudo cp screenshot /usr/bin
	sudo chmod +x /usr/bin/screenshot
	cp screenshot.sh $HOME
	sudo chmod +x $HOME/screenshot.sh
	mkdir $HOME/Screenshots

else
	echo 'you did not press w or x'
	exit 1
fi
