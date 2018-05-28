log-info 'Docker setup...'
# Pack, ship and run any application as a lightweight container
dot-info 'Docker setup'
sudo pacman -S --needed --noconfirm --force docker
sudo systemctl enable docker && sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
