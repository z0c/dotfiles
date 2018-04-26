#!/bin/bash

# Set the correct dpi
xrandr --dpi 180

# Merge load configurations from .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Fix keymap
setxkbmap gb -variant mac

# Let QT and GTK autodetect retina screen and autoadjust
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GDK_SCALE=1
export GDK_DPI_SCALE=0.8

# Start i3 window manager
exec i3
