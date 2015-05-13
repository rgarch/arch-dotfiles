#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?* ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

killall pulseaudio 
nitrogen --restore &

restore_alsa() {
	while [ -z "$(pidof pulseaudio)" ]; do
		sleep 0.5
		done
	alsactl -f /var/lib/alsa/asound.state restore 
}

restore_alsa &

xset +fp /usr/share/fonts/local
xset fp rehash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3
#exec startxfce4
