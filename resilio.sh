#!/usr/bin/env bash

source _setup.sh

## TODO Add the repository an import server key
sudo apt-fast -qq -y install resilio-sync
sudo systemctl enable resilio-sync
sudo sed -i "s/WantedBy=multi-user.target/WantedBy=default.target/g" '/usr/lib/systemd/user/resilio-sync.service '
sudo systemctl --user enable resilio-sync
sudo systemctl --user start resilio-sync

