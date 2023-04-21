#!/bin/sh
xrdb ~/.Xresources &
xrandr --dpi 80 &

nitrogen --set-scaled $HOME/.wallpapers/1656506748556.png
picom &

gentoo-pipewire-launcher &
slstatus &
exec dbus-launch --exit-with-session dwm
