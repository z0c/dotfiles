apps=(
	dialog
	dmenu
	dosfstools
	exfat-utils
	firefox-developer-edition
	git
	htop 				# Improved top (interactive process viewer)
	i3-gaps
	i3-dmenu-desktop
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
	wget 				# Internet file retriever
	wpa_supplicant
	xorg
	xorg-xinit
	xterm
	zip
)

sudo pacman -S --needed --noconfirm --force "${apps[@]}"
