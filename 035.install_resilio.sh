#!/usr/bin/env bash

source _setup.sh

if [ ! -f /etc/apt/sources.list.d/resilio-sync.list ]; then
 echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
fi
curl -LO http://linux-packages.resilio.com/resilio-sync/key.asc && sudo apt-key add ./key.asc
sudo apt-fast update

sudo apt-fast -qq -y install resilio-sync
systemctl --user enable resilio-sync
systemctl  stop resilio-sync
systemctl  disable resilio-sync
systemctl --user start resilio-sync
