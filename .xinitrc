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
# exec wal -R &
# exec wal -i /home/fox/Pictures/bg_img.jpg &
exec pulseaudio --start --exit-idle-time=-1 &
# exec pipewire &
# exec pipewire-pulse &
# exec pipewire-media-session &
exec feh --bg-scale /home/fox/Pictures/bg_img.jpg &
exec picom &

# dwm
while true; do
	dwm >/dev/null 2>&1
done
