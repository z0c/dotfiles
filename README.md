Setup
=====

Install Qemu
```
brew install qemu-system-x86_64
```

Download Arch
```
wget http://mirror.bytemark.co.uk/archlinux/iso/2018.04.01/archlinux-2018.04.01-x86_64.iso
```

Boot Qemu with arch distro and USB device
```
sudo qemu-system-x86_64 -cpu core2duo -cdrom ~/Downloads/archlinux-2018.04.01-x86_64.iso -boot order=d -m 1G -hdb /dev/disk2
```

Bootstrap
```
pacstrap /mnt base vim wpa_supplicant dialog
```

Set xterm as default terminal in i3
```
vim ~/.config/i3/config
bindsym $mod+Return exec xterm
```

Fix retina display
```
vim~/.Xresources

Xft.dpi: 180
Xft.autohint: 0
Xft.lcdfilter:  lcddefault
Xft.hintstyle:  hintfull
Xft.hinting: 1
Xft.antialias: 1
Xft.rgba: rgb
```

Make sure the settings are loaded properly when X starts, for instance in your ~/.xinitrc with `xrdb -merge ~/.Xresources`

Reference
=========

* https://gist.github.com/elerch/678941eb670324ffc3f261eabba81310
* https://www.youtube.com/watch?v=sDq1oaYRgeg
* http://tutos.readthedocs.io/en/latest/source/Arch.html
* https://github.com/mohlerm/dotfiles
