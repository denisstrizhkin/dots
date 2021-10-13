#!/bin/sh

dbus-update-activation-environment DBUS_SESSION_DBUS_ADDRESS DISPLAY XAUTHORITY

xrdb -merge $HOME/.Xresources &

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# exec feh --bg-scale /home/denis/Pictures/bg_img.jpg &
exec barupdate.sh &
exec fcitx5 &
exec xrandr --output HDMI-0 --mode 1920x1080 --rate 74.97 --dpi 81 &
exec picom --experimental-backends &
exec redshift &

dbus-run-session -- dwm
