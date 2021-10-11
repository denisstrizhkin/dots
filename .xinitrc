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
exec fcitx5 &
exec dbus-launch thunar --daemon &
exec picom --experimental-backends --backend glx -b &

# dwm
while true; do
	#dbus-launch --sh-syntax --exit-with-session dwm >/dev/null 2>&1
  dbus-launch dwm >/dev/null 2>&1
done
