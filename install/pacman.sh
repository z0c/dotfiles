apps=(
	alsa-utils			# An alternative implementation of Linux sound support
    ansible             # Radically simple IT automaion platform
    aws-cli             # Universal Command Line Interface for Amazon Web Services
	base-devel			# Make / build tools
    ctags               # Generates an index file of language objects found in source files
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
	python              # Next generation of the python high-level scripting language
    python-pip          # The PyPA recommended tool for installing Python packages
	qutebrowser			# A keyboard-driven, vim-like browser based on PyQt5
	ranger				# A simple, vim-like file manager
	rofi				# A window switcher, application launcher and dmenu replacemet
    terraform           # Tool for building, changing, and versioning infrastructure safely and efficiently
	termite				# A simple VTE-based terminal
	tree
	ttf-dejavu
	ttf-hack
	unzip
	vim
	wget 				# Internet file retriever
	wpa_supplicant
    xclip               # Command line interface to the X11 clipboard
	xbindkeys			# Launch shell commands with your keyboard or your mouse under X
	xorg-server
	xorg-xinit
	zip
)

dot-info 'Pacman install'
sudo pacman -S --needed --noconfirm --overwrite "${apps[@]}"

dot-info 'Pacman update'
sudo pacman -Syu --noconfirm

