#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
setxkbmap us
numlockx &
#exec openbox-session
exec i3
# exec startxfce4
# ...or the Window Manager of your choice
