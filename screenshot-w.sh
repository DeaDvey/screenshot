set -x

filename=$(date +"%d:%m:%Y-%H:%M:%S-screenshot.png")

touch ~/Screenshots/$filename

grim -g "$(slurp)" "/home/deadvey/Screenshots/$filename"
#swappy -f "/home/deadvey/Screenshots/$filename" -o "/home/deadvey/Screenshots/$filename"
wl-copy < "/home/deadvey/Screenshots/$filename"
