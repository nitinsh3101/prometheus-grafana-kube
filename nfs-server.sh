sudo apt update
sudo apt install nfs-kernel-server
sudo mkdir -p /drive/data
sudo chown -R nobody:nogroup /drive/data/
sudo chmod 777 /drive/data/
sudo echo "/drive/data 172.27.59.0/24(rw,sync,no_subtree_check)" >> /etc/exports
sudo exportfs -a
sudo systemctl restart nfs-kernel-server