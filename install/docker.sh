log-info 'Docker setup...'
# Pack, ship and run any application as a lightweight container
dot-info 'Docker setup'
sudo pacman -S --needed --noconfirm --overwrite docker
sudo systemctl disable docker
sudo groupadd docker
sudo usermod -aG docker $USER
