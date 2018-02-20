#!/bin/bash

source timestamp-line.sh

# ???  ppa-add xubuntu-dev/xfce4-gtk3		# xfce4 tools

sudo apt-fast -qq  -y install dconf-tools
# gsettings set com.canonical.indicator.sound blacklisted-media-players
gsettings set com.canonical.indicator.sound interested-media-players []

sudo apt-fast -qq  -y install xfce-theme-manager xfce-keyboard-shortcuts xfburn xfe xterm menulibre alacarte
sudo apt-fast -qq  -y install xfce4-*-plugin xfce4-appfinder xfce4-dict xfce4-goodies xfce4-notifyd xfce4-panel xfce4-power-* xfce4-settings xfce4-terminal

#xfce4-dev-tools 

sudo apt-fast -qq  -y install xubuntu-restricted-addons xubuntu-restricted-extras
#sudo apt-fast -qq  -y install gtk3-engines-xfce #desktop-profiles

### thunar ----

# cp ./thunar/uca.xml ~/.config/Thunar/uca.xml
xfconf-query --channel thunar --property /misc-full-path-in-title 		        --create --type bool --set true
xfconf-query --channel thunar --property /misc-exec-shell-scripts-by-default 	--create --type bool --set true
xfconf-query --channel thunar --property /misc-image-size-in-statusbar 		    --create --type bool --set true

sudo apt-fast -qq  -y install thunar*  gthumb* gnome-*-thumbnailer thumbnailer-service tumbler*  ffmpegthumbnailer  thumbnailer* ooo-thumbnailer

#http://xubuntugeek.blogspot.co.uk/search/label/Tips?updated-max=2012-06-17T13:50:00%2B01:00&max-results=20&start=40&by-date=false
#[HOW TO] Openraster (*.ora) thumbnails for Nautilus in Xubuntu
wget -q http://goo.gl/cbXjm -O- | sudo tee /usr/local/bin/openraster_thumbnailer.py
wget -q http://goo.gl/nlODH -O- | sudo tee /usr/share/thumbnailers/openraster.thumbnailer
sudo chmod +x /usr/local/bin/openraster_thumbnailer.py

sudo chown -R tom ~/.cache/thumbnails/
sudo chmod 701 -R ~/.cache/thumbnails

sudo killall thunar
sudo killall thunar
thunar

