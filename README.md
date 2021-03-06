# Dotfiles

My dotfiles setup on archlinux

## ArchLinux setup

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
pacstrap /mnt base linux linux-firmware vim git dhcpcd wpa_supplicant dialog netctl grub os-prober ntfs-3g 
```

Change root to mount
```
arch-chroot /mnt
```

Then checkout and execute the installr
```
git clone https://github.com/z0c/dotfiles
bash dotfiles/dot.sh
```

## TODO
* microphone
* vpn client
* mopidy as an alternative to spotify
* weechat / wee-slack

## Hacks

### Wireless fails to reconnect

This is by no means a permanent fix, but a work-around to re-enable the wifi-connection via netctl
Edit `/etc/netclt/profileid` and add `ForceConnect=yes`

## Reference

* https://wiki.archlinux.org/index.php/mac
* https://wiki.archlinux.org/index.php/MacBookPro11,x
* https://gist.github.com/elerch/678941eb670324ffc3f261eabba81310
* https://www.youtube.com/watch?v=sDq1oaYRgeg
* http://tutos.readthedocs.io/en/latest/source/Arch.html
* https://github.com/mohlerm/dotfiles
* https://github.com/Airblader/dotfiles-manjaro
* https://bitbucket.org/marcoslopes/dotfiles-arch/src/217299091578da9f19663518235fc1861713d3e7/?at=master&fileviewer=file-view-default
* https://github.com/pcm720/i3-dotfiles
* https://github.com/webpro/dotfiles
