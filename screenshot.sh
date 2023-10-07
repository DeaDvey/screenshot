#!/bin/sh
time=$(date +"%d,%m,%Y--%H:%M:%S")
maim -s --format png $HOME/Screenshots/$time.png | -u
cat $HOME/Screenshots/$time.png | xclip -selection clipboard -target image/png -i
