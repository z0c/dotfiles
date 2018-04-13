apps=(
	chromium
	dialog
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
	unzip
	vim
	vlc
	wpa_supplicant
	xorg-xinit
	xterm
	zip
)

pacman -S --needed --noconfirm --force "${apps[@]}"
