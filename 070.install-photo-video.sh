#!/usr/bin/env bash

source _setup.sh

# thumbnailers
sudo apt-fast -qq  -y install webp # Decodes the WebP image file to PNG format [Default]
sudo apt-fast -qq  -y install dcraw
sudo apt-fast -qq  -y install *thumbnailer*

ppa_add linuxuprising/shutter
# Screenshot
sudo apt-fast -qq  -y  install shutter  # -install-suggests



# photo  ================================
sudo apt-fast -qq  -y install  imagemagick 
sudo sed -i '/disable ghostscript format types/,+6d' /etc/ImageMagick-6/policy.xml

sudo apt-fast -qq  -y install  converseen pngnq  feh flickrfs frogr postr gpicview simple-image-reducer  viewnior xpaint jpegoptim optipng gimp

sudo apt-fast -qq  -y install  libnotify-bin yad gphoto2
sudo apt-fast -qq  -y install  shutter
sudo apt-fast -qq  -y install gnome-raw-thumbnailer ufraw-batch
sudo cp ./2copy/usr/share/thumbnailers/*.*  /usr/share/thumbnailers/
rm -rf .cache/thumbnails/* .thumbnails/*

#sudo apt-fast -qq  -y install  gnome-web-photo

# darktable support
sudo apt-fast  -qq  -y install liblua5.3-0 liblua5.3-dev sqlitebrowser
sudo apt-fast  -qq  -y install  ocl-icd-libopencl1


#ppa_add dhor/myway
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
#ppa_add dhor/myway
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

