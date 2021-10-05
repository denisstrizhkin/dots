#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

exec pulseaudio --start --exit-idle-time=-1 &
# exec feh --bg-scale /home/denis/Pictures/bg_img.jpg &
exec barupdate.sh &
exec fcitx &
# exec picom &

# dwm
while true; do
	dwm >/dev/null 2>&1
done
