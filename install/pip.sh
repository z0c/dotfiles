dot-info 'Pip install or upgrade'
sudo pip install --upgrade pip

system_packages=(
    msgpack-python # Cache control dependency
)

dot-info 'Pip install system packages'
pip install "${system_packages[@]}"

user_packages=(
    markdown       # Markdown helper
)

dot-info 'Pip install user packages'
pip install "${user_packages[@]}" --user

