#!/bin/sh
time=$(date +"%d,%m,%Y[]%H:%M:%S")
#maim -s $HOME/Screenshots/$time.png
copyq &
#maim -s --format png /dev/stdout | copyq copy image/png - | -u
maim -s --format png $HOME/Screenshots/$time.png | -u
cat "$HOME/Screenshots/$time.png" | copyq copy image/png -
