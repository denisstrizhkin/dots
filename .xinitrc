#!/bin/sh

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

dbus-launch --sh-syntax --exit-with-x11

exec fcitx5 &
# exec feh --bg-scale /home/denis/Pictures/bg_img.jpg &
exec barupdate.sh &
exec xrandr --output HDMI-0 --mode 1920x1080 --rate 74.97 --dpi 125 &
xrdb -merge $HOME/.Xresources
exec picom --experimental-backends &
exec redshift &

exec dwm
