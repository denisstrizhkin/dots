#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# other stuff
exec pulseaudio --start --exit-idle-time=-1 &
exec feh --bg-scale /home/fox/Pictures/gold-picture_072508136_204.jpg &

# dwm
while true; do
	dwm >/dev/null 2>&1
done
