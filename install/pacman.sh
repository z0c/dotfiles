apps=(
	alsa-utils			# An alternative implementation of Linux sound support
	base-devel			# Make / build tools
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
	mesa				# An open-source implementation of the OpenGL specification
	obconf
	openssh
	pulseaudio			# A featureful, general-purpose sound server
	pulseaudio-alsa
	python
	rofi				# A window switcher, application launcher and dmenu replacemet
	tree 
	ttf-dejavu
	ttf-hack
	unzip
	vim
	wget 				# Internet file retriever
	wpa_supplicant
	xbindkeys			# Launch shell commands with your keyboard or your mouse under X
	xorg-server
	xorg-xinit
	xterm
	zip
)

# Install
sudo pacman -S --needed --noconfirm --force "${apps[@]}"

# Update
sudo pacman -Syu --noconfirm
