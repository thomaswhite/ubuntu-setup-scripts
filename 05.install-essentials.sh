#!/bin/bash


#system utilities
sudo apt-fast -qq  -y install udisks2 gparted libstdc++5 gksu gdebi synaptic apt aptitude cabextract preload wget uget notify-osd curl libcurl3
sudo apt-fast -qq  -y install gnome-terminal gnome-search-tool  gnome-disk-utility
sudo apt-fast -qq  -y install systemback
sudo apt-fast -qq  -y install gedit*

sudo apt-fast -qq  -y install s3cmd

# linux-tools-generic
sudo apt-fast -qq  -y install dconf-editor dconf-cli
sudo apt-fast -qq  -y install doublecmd
sudo apt-fast -qq  -y install zip unzip p7zip-full p7zip-rar rar unrar


sudo ppa-add webupd8team/java
sudo apt-fast -qq  -y install  oracle-java8-installer #  oracle-java9-installer

sudo ppa-add teejee2008/ppa
sudo apt-fast -qq  -y install aptik

sudo ppa-add webupd8team/y-ppa-manager
sudo apt-fast -qq  -y install y-ppa-manager launchpad-getkeys
sudo apt-fast -qq  -y install ppa-purge

sudo ppa-add teejee2008/ppa
sudo apt-fast -qq  -y install libgee json-glib rsync   # requred by timeshift
sudo apt-fast -qq  -y install ukuu   # timeshift # http://www.teejeetech.in/p/timeshift.html

sudo apt-fast -qq  -y install skypeforlinux

sudo apt-fast -qq  -y install insync

sudo apt-fast -qq  -y install resilio-sync; sudo systemctl enable resilio-sync
sudo sed -i "s/WantedBy=multi-user.target/WantedBy=default.target/g" '/usr/lib/systemd/user/resilio-sync.service '
sudo systemctl --user start resilio-sync

sudo apt-fast -qq  -y install calibre fbreader
sudo apt-fast -qq  -y install evince diffpdf pdfshuffler pdftk xpdf origami-pdf pdfchain pdfmod pdf-presenter-console  qpdf  poppler-utils pdfsam

sudo apt-get -y -qq install  exfat-fuse exfat-utils #ntfs-3g 


# cisco vpn client
sudo apt-fast -qq  -y install network-manager-openconnect network-manager-openconnect-gnome
sudo systemctl restart NetworkManager.service

# remote connection
sudo ppa-add x2go/stable
sudo apt-fast -qq  -y install x2goclient x2goserver x2goserver-xsession

#find dupicate files
sudo apt-fast -qq  -y install  fslint fdupes
sudo apt-fast -qq  -y install  xdotool ruby-full


