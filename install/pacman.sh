apps=(
	base-devel
	dialog
	dmenu
	dosfstools
	exfat-utils
	firefox-developer-edition
	git
	htop 				# Improved top (interactive process viewer)
	i3-gaps
	i3status
	i3blocks
	obconf
	openssh
	python
	tree
	ttf-dejavu
	ttf-hack
	unzip
	vim
	wget 				# Internet file retriever
	wpa_supplicant
	xorg-server
	xorg-xinit
	xterm
	zip
)

# Install
sudo pacman -S --needed --noconfirm --force "${apps[@]}"

# Update
sudo pacman -Syu --confirm
