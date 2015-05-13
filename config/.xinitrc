#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

killall pulseaudio
nitrogen --restore &

xset +fp /usr/share/fonts/TTF
xset fp rehash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3
#exec startxfce4
