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
	asoundconf
	heroku-cli	# A tool for creating and managing Heroku apps from the command line
	mbpfan-git
	pommed-light
	spotify
	stress		# A tool that stess tests your system (CPU, memory, I/O, disks)
)

dot-info 'Yaourt install apps'
yaourt -S --needed --noconfirm --force "${apps[@]}"

dot-info 'Yaourt update'
sudo yaourt -Syu --noconfirm

dot-info 'Mbpfan enable'
sudo systemctl enable mbpfan && sudo systemctl start mbpfan

dot-info 'Pommed enable'
sudo systemctl enable pommed && sudo systemctl start pommed
