sudo apt install nfs-common
sudo mkdir /nfs_share
sudo mount 172.27.59.199:/drive /nfs_share 
# testing
cd /nfs_share
touch test.txt

#For permanently add
sudo echo "172.27.59.199:/drive    /nfs-share      nfs     defaults        0       0" >> /etc/fstab 
