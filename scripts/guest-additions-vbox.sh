echo "Installing guest additions"
sudo apt-get install linux-headers-$(uname -r) build-essential dkms
wget http://download.virtualbox.org/virtualbox/5.2.8/VBoxGuestAdditions_5.2.8.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_5.2.8.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_5.2.8.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
