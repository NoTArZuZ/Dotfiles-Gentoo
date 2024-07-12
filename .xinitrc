#!/bin/sh
gentoo-pipewire-launcher &
xsetroot -cursor_name left_ptr &
xrdb -merge /home/sus/.Xresources &
feh --bg-fill /home/sus/Pictures/Wallpapers/gentoo.png
exec dbus-launch --sh-syntax --exit-with-session dusk
