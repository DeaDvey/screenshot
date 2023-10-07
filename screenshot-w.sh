set -x

filename=$(date +"%d:%m:%Y-%H:%M:%S-screenshot.png")

touch $HOME/Screenshots/$filename

grim -g "$(slurp)" "$HOME/Screenshots/$filename"
wl-copy < "$HOME/Screenshots/$filename"
