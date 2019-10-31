#!/usr/bin/env bash

source _setup.sh

# remove very old and slow video driver
sudo apt-fast -qq  -y remove xserver-xorg-video-intel
sudo apt-fast -qq -y install ubuntu-restricted-extras

sudo apt-fast -qq -y install gedit*

# PDF manupulating
sudo apt-fast -y -qq install calibre fbreader
sudo apt-fast -y -qq install evince # PDF viwer
sudo apt-fast -y -qq install diffpdf pdfshuffler xpdf
sudo apt-fast -y -qq install origami-pdf pdfmod pdf-presenter-console
sudo apt-fast -y -qq install qpdf  poppler-utils pdfsam

# sudo apt-get -y -qq install  exfat-fuse exfat-utils #ntfs-3g

# remote connection

sudo apt-fast -qq -y install  ruby-full

#sudo ppa_add webupd8team/java
#sudo apt-fast -y -qq install  oracle-java8-installer #  oracle-java9-installer

sudo apt-fast -qq -y install   ttf-mscorefonts-installer # easy installation of the Microsoft True Type

#sudo apt-fast -y -qq install gksu
#sudo apt-fast -y -qq install gnome-search-tool
#sudo apt-fast -y -qq install pdfchain
#sudo apt-fast -y -qq install pdftk
#sudo apt-fast -y -qq install doublecmd
