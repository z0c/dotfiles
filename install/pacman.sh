apps=(
	chromium
	dosfstools
	exfat-utils
	git
	i3-wm
	i3status
	i3blocks
	obconf
	openssh
	qt4
	ttf-dejavu
	ttf-hack
	vlc
	unzip
	xorg-xinit
	xterm
	zip
)

pacman -S --needed --noconfirm --force "${apps[@]}"
