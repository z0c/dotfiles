apps=(
	chromium
	dialog
	dmenu
	dosfstools
	exfat-utils
	git
	htop 			# Improved top (interactive process viewer)
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
	wget 			# Internet file retriever
	wpa_supplicant
	xorg
	xorg-xinit
	xterm
	zip
)

sudo pacman -S --needed --noconfirm --force "${apps[@]}"
