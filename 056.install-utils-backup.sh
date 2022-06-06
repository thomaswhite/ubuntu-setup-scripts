#!/usr/bin/env bash

source _setup.sh

#sudo apt-fast -qq -y install doublecmd
sudo apt-fast -qq -y install zip unzip p7zip-full p7zip-rar rar unrar cabextract rsync

#ppa_add teejee2008/ppa
sudo apt-fast -qq -y install aptik


#ppa_add teejee2008/ppa
#sudo apt-fast -qq -y install libgee json-glib rsync   # requred by timeshift
#sudo apt-fast -qq -y install ukuu  timeshift # http://www.teejeetech.in/p/timeshift.html

# sudo apt-fast -qq -y install systemback

## TODO Add the repository an import server key

if  [ ! -f /etc/apt/sources.list.d/resilio-sync.list ]; then
   echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
   curl -LO http://linux-packages.resilio.com/resilio-sync/key.asc && sudo apt-key add ./key.asc
fi
sudo apt-fast -qq -y install resilio-sync

#sudo systemctl enable resilio-sync
# sudo sed -i "s/WantedBy=multi-user.target/WantedBy=default.target/g" '/usr/lib/systemd/user/resilio-sync.service '
systemctl --user enable resilio-sync
systemctl --user reenable resilio-sync
systemctl --user start resilio-sync

## TODO Add the repository an import server key
sudo apt-fast -qq -y install insync


