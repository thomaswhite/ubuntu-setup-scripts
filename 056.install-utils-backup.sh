#!/usr/bin/env bash

source _setup.sh

#sudo apt-fast -qq -y install doublecmd
sudo apt-fast -qq -y install zip unzip p7zip-full p7zip-rar rar unrar cabextract rsync

#ppa_add teejee2008/ppa
sudo apt-fast -qq -y install aptik


#ppa_add teejee2008/ppa
#sudo apt-fast -qq -y install libgee json-glib rsync   # requred by timeshift
#sudo apt-fast -qq -y install ukuu  timeshift # http://www.teejeetech.in/p/timeshift.html

sudo apt-fast -qq -y install systemback

## TODO Add the repository an import server key
sudo apt-fast -qq -y install resilio-sync
sudo systemctl enable resilio-sync
sudo sed -i "s/WantedBy=multi-user.target/WantedBy=default.target/g" '/usr/lib/systemd/user/resilio-sync.service '
sudo systemctl --user enable resilio-sync
sudo systemctl --user start resilio-sync

## TODO Add the repository an import server key
sudo apt-fast -qq -y install insync


