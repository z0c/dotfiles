packages=(
    markdown       # Markdown helper
    msgpack-python # Cache control dependency
)

dot-info 'Pip install or upgrade'
sudo pip install --upgrade pip

dot-info 'Pip install packages'
pip install "${packages[@]}" --user
