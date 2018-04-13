apps=(
	chromium
	dialog
	dmenu
	dosfstools
	exfat-utils
	git
	i3-wm
	i3status
	i3blocks
	obconf
	openssh
	qt4
	tree
	ttf-dejavu
	ttf-hack
	unzip
	vim
	vlc
	wpa_supplicant
	xorg
	xorg-xinit
	xterm
	zip
)

sudo pacman -S --needed --noconfirm --force "${apps[@]}"
