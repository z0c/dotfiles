# Packages
declare -a packages=("package-query" "yaourt")

# Install packages
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
	mbpfan-git
)

# Install
yaourt -S --needed --noconfirm --force "${apps[@]}"

# Update
sudo yaourt -Syu --noconfirm

# Enable services
sudo systemctl enable mbpfan && sudo systemctl start mbpfan
