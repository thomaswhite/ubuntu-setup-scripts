#!/bin/bash

# photo  ================================
sudo apt-fast -qq  -y install  converseen pngnq  feh flickrfs frogr postr gpicview simple-image-reducer viewnior xpaint jpegoptim optipng imagemagick gimp darktable libnotify-bin yad gphoto2 shutter gnome-web-photo

ppa-add dhor/myway
sudo apt-fast -qq  -y install  hdrmerge luminance-hdr  photoflow photoxx

sudo apt-fast -qq  -y install  hugin enblend-enfuse

# darktable support
sudo apt-fast install liblua5.3-0 liblua5.3-dev lua5.3 lua5.3-doc
sudo apt-fast install sqlitebrowser sqlite

## from the book Linux photography
sudo apt-fast -qq  -y install  autoconf pkg-config nasm libtool inotify-tools imagemagick	jhead libnotify-bin  yad git-core curl bc jq fdupes dcraw libjpeg-turbo-progs autoconf pkg-config nasm libtool argyll libcolorhug2 colorhug-client gthumb testdisk

#input-wacom 

# video
#sudo apt-fast -qq  -y install   libavcodec-extra transcode transcode-doc libav-tools advancecomp youtube-viewer

ppa-add nilarimogard/webupd8
sudo apt-fast -qq  -y install youtube-dl


sudo apt-fast -qq  -y install deluge  ffmpeg


# Done Darktable
# copy styles
# copy LUA scripts
# restore db

