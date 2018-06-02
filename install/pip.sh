dot-info 'Pip install or upgrade'
sudo pip install --upgrade pip

dot-info 'Pip install system packages'
system_packages=(
    msgpack-python # Cache control dependency
)
pip install "${system_packages[@]}"

dot-info 'Pip install user packages'
user_packages=(
    markdown       # Markdown helper
)
pip install "${user_packages[@]}" --user

