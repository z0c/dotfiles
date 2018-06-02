# Packages
declare -a packages=("package-query" "yaourt")

dot-info 'Yaourt install'
for p in "${packages[@]}"; do
	if ! which ${p} &>/dev/null; then
		echo "Installing ${p}..."
		PACKAGE_DIR=/tmp/${p}
		if [ -d $PACKAGE_DIR ]; then rm -rf $PACKAGE_DIR; fi
		git clone https://aur.archlinux.org/${p}.git $PACKAGE_DIR
		cd $PACKAGE_DIR
		makepkg -si --noconfirm
	else
		echo "Package ${p} already installed."
	fi
done

apps=(
	asoundconf 		# Get and set configuration parameters in ~/.asoundrc.asoundconf
    bind-tools  	# The ISC DNS tools (dig, nslookup, etc)
	heroku-cli		# A tool for creating and managing Heroku apps from the command line
	mbpfan-git 		# Automatically adjust the fan on a MacBook Pro
	pommed-light 	# Handles the hotkeys of Apple MacBook (Pro) laptops - lightweight edition
	spotify			# A proprietary music streaming service
	stress			# A tool that stess tests your system (CPU, memory, I/O, disks)
)

dot-info 'Yaourt install apps'
sudo yaourt -S --needed --noconfirm --overwrite "${apps[@]}"

dot-info 'Yaourt update'
yaourt -Syua --noconfirm

dot-info 'Yaourt clean'
yaourt -Sc --noconfirm

dot-info 'Mbpfan enable'
sudo systemctl enable mbpfan && sudo systemctl start mbpfan

dot-info 'Pommed enable'
sudo systemctl enable pommed && sudo systemctl start pommed
