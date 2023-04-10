#!/bin/sh
time=$(date +"%d,%m,%Y[]%H:%M:%S")
#maim -s /home/deadvey/Screenshots/$time.png
copyq &
#maim -s --format png /dev/stdout | copyq copy image/png - | -u
maim -s --format png /home/deadvey/Screenshots/$time.png | -u
cat "/home/deadvey/Screenshots/$time.png" | copyq copy image/png -
