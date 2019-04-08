#!/usr/bin/env bash

source _setup.sh

sudo apt-fast -qq -y install ubuntu-restricted-extras

# remove very old and slow video driver
sudo apt-fast -qq  -y remove xserver-xorg-video-intel

#system utilities
sudo apt-fast -qq -y install dconf-tools
sudo apt-fast -qq -y install linux-tools-common
sudo apt-fast -qq -y install gnome-network-admin
sudo apt-fast -qq -y install resolvconf-admin
sudo apt-fast -qq -y install seahorse

sudo apt-fast -qq  -y install preload; sudo systemctl enable preload; sudo systemctl start preload

sudo apt-fast -qq -y install udisks2 gparted libstdc++5 gdebi synaptic apt aptitude
sudo apt-fast -qq -y install cabextract preload wget uget notify-osd curl
sudo apt-fast -qq -y install gnome-terminal 
sudo apt-fast -qq -y install gnome-disk-utility
sudo apt-fast -qq -y install systemback
sudo apt-fast -qq -y install gedit*
sudo apt-fast -qq -y install lynx

# gksu gnome-search-tool 
# sudo apt-fast -qq -y install s3cmd

# linux-tools-generic
sudo apt-fast -qq -y install dconf-editor
sudo apt-fast -qq -y install dconf-cli
#sudo apt-fast -qq -y install doublecmd
sudo apt-fast -qq -y install zip unzip p7zip-full p7zip-rar rar unrar


#ppa_add teejee2008/ppa
sudo apt-fast -qq -y install aptik

#ppa_add webupd8team/y-ppa-manager
sudo apt-fast -qq -y install y-ppa-manager launchpad-getkeys
sudo apt-fast -qq -y install ppa-purge

#ppa_add teejee2008/ppa
#sudo apt-fast -qq -y install libgee json-glib rsync   # requred by timeshift
sudo apt-fast -qq -y install ukuu  timeshift # http://www.teejeetech.in/p/timeshift.html
#sudo apt-fast -qq -y install hipchat
#sudo apt-fast -qq -y install skypeforlinux
sudo apt-fast -qq -y install insync

sudo apt-fast -qq -y install resilio-sync
sudo systemctl enable resilio-sync
sudo sed -i "s/WantedBy=multi-user.target/WantedBy=default.target/g" '/usr/lib/systemd/user/resilio-sync.service '
sudo systemctl --user enable resilio-sync
sudo systemctl --user start resilio-sync

sudo apt-fast -y -qq install calibre fbreader
sudo apt-fast -y -qq install evince diffpdf pdfshuffler xpdf 
sudo apt-fast -y -qq install origami-pdf pdfmod pdf-presenter-console  
sudo apt-fast -y -qq install qpdf  poppler-utils pdfsam

sudo apt-get -y -qq install  exfat-fuse exfat-utils #ntfs-3g 

# cisco vpn client
sudo apt-fast -qq -y install network-manager-openconnect network-manager-openconnect-gnome
sudo systemctl restart NetworkManager.service

# remote connection
ppa_add x2go/stable
sudo apt-fast -qq -y install x2goclient x2goserver x2goserver-xsession

#find dupicate files
sudo apt-fast -qq -y install  fslint fdupes
sudo apt-fast -qq -y install  xdotool ruby-full

sudo ppa_add webupd8team/java
sudo apt-fast -y -qq install  oracle-java8-installer #  oracle-java9-installer

sudo apt-fast -qq -y install   ttf-mscorefonts-installer

#sudo apt-fast -y -qq install gksu
#sudo apt-fast -y -qq install gnome-search-tool
#sudo apt-fast -y -qq install pdfchain 
#sudo apt-fast -y -qq install pdftk 
#sudo apt-fast -y -qq install doublecmd
