#!/usr/bin/env bash

source _setup.sh

#system utilities
sudo apt-fast -qq -y install libstdc++5
sudo apt-fast -qq -y install gdebi
sudo apt-fast -qq -y install synaptic
sudo apt-fast -qq -y install apt
sudo apt-fast -qq -y install aptitude
# sudo apt-fast -qq -y install dconf-tools
sudo apt-fast -qq -y install dconf-editor
sudo apt-fast -qq -y install dconf-cli
sudo apt-fast -qq -y install preload; sudo systemctl enable preload; sudo systemctl start preload
sudo apt-fast -qq -y install grub-customizer
sudo apt-fast -qq -y install hardinfo
# sysinfo

# disk utilites
sudo apt-fast -qq -y install gparted gpart
sudo apt-fast -qq -y install gnome-disk-utility
sudo apt-fast -qq -y install udisks2
# sudo apt-fast -qq -y install exfat-fuse
sudo apt-fast -qq -y install exfat-utils


#ppa_add webupd8team/y-ppa-manager
# sudo apt-fast -qq -y install y-ppa-manager
# sudo apt-fast -qq -y install launchpad-getkeys
sudo apt-fast -qq -y install ppa-purge

sudo apt-fast -qq -y install sshfs
sudo apt-fast -qq -y install notify-osd
sudo apt-fast -qq -y install fslint
sudo apt-fast -qq -y install fdupes
sudo apt-fast -qq -y install xdotool

# sudo apt-fast -qq -y install solaar
