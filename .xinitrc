#!/bin/bash

# Set the correct dpi
xrandr --dpi 180

# Merge load configurations from .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Let QT and GTK autodetect retina screen and autoadjust
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# Start i3 window manager
exec i3
