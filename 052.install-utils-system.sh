#!/usr/bin/env bash

source _setup.sh

#system utilities
sudo apt-fast -qq -y install libstdc++5 gdebi synaptic apt aptitude
sudo apt-fast -qq -y install dconf-tools  dconf-editor  dconf-cli udisks2
sudo apt-fast -qq -y install preload; sudo systemctl enable preload; sudo systemctl start preload

# disk utilites
sudo apt-fast -qq -y install gparted gnome-disk-utility

#ppa_add webupd8team/y-ppa-manager
sudo apt-fast -qq -y install y-ppa-manager launchpad-getkeys
sudo apt-fast -qq -y install ppa-purge


sudo apt-fast -qq -y install notify-osd # daemon that displays passive pop-up notifications
sudo apt-fast -qq -y install fslint     # Duplicate files, Bad symlinks
sudo apt-fast -qq -y install fdupes     # identifies duplicate files within given directories
sudo apt-fast -qq -y install xdotool    # simulate (generate) X11 keyboard/mouse input events

