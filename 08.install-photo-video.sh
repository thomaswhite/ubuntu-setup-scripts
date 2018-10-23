#!/usr/bin/env bash

source _setup.sh
# photo  ================================
sudo apt-fast -qq  -y install  converseen pngnq  feh flickrfs frogr postr gpicview simple-image-reducer  viewnior xpaint jpegoptim optipng imagemagick  gimp
sudo apt-fast -qq  -y install  libnotify-bin yad gphoto2 shutter

#sudo apt-fast -qq  -y install  gnome-web-photo

# darktable support
sudo apt-fast  -qq  -y install liblua5.3-0 liblua5.3-dev #lua5.3 lua5.3-doc sqlitebrowser sqlite

add_ppa dhor/myway
sudo apt-get -y -qq install hdrmerge
sudo apt-get -y -qq install luminance-hdr  
sudo apt-get -y -qq install photoflow 
sudo apt-get -y -qq install photoxx

sudo apt-get -y -qq install  hugin 
sudo apt-get -y -qq install enblend-enfuse

## from the book Linux photography
sudo apt-fast -qq  -y install  autoconf pkg-config nasm libtool inotify-tools imagemagick jhead libnotify-bin  yad git-core curl bc jq fdupes dcraw libjpeg-turbo-progs autoconf pkg-config nasm libtool argyll libcolorhug2 colorhug-client gthumb testdisk

#input-wacom 

# video
#sudo apt-fast -qq  -y install   libavcodec-extra transcode transcode-doc libav-tools advancecomp youtube-viewer

# ppa_add nilarimogard/webupd8
sudo apt-fast -qq  -y install youtube-dl

sudo apt-fast -qq  -y install deluge  ffmpeg


echo TO Fix ================
ppa_add dhor/myway
sudo apt-fast -qq  -y install luminance-hdr
sudo apt-fast -qq  -y install photoflow
sudo apt-fast -qq  -y install hdrmerge
#  photoxx

sudo apt-fast -qq -y install  hugin
# enblend-enfuse

# Done Darktable
# copy styles
# copy LUA scripts
# restore db

