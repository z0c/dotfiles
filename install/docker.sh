dot-info 'Docker setup'
sudo systemctl disable docker
groups |grep docker >/dev/null 2>&1 || sudo groupadd docker
sudo usermod -aG docker $USER
