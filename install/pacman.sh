apps=(
	alsa-utils			# An alternative implementation of Linux sound support
	base-devel			# Make / build tools
	dialog				# A tool to display dialog boxes from shell scripts
	dosfstools			# DOS filesystem utilities
	exfat-utils			# Utilities for exFAT file systems
	firefox-developer-edition
	git
	htop 				# Improved top (interactive process viewer)
	i3-gaps
	i3status
	i3blocks
	iftop				# Display bandwidth usage on an interface
	iotop				# View I/O usage of processes
	mesa				# An open-source implementation of the OpenGL specification
	obconf
	openssh
	pulseaudio			# A featureful, general-purpose sound server
	pulseaudio-alsa
	python
	qutebrowser			# A keyboard-driven, vim-like browser based on PyQt5
	ranger				# A simple, vim-like file manager
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
