#!/bin/bash

source _setup.sh

deb_install_from_file_list deb_audio.txt "$download_deb"

sudo apt-fast -qq  -y install  --allow-unauthenticated easytag
sudo apt-fast -qq  -y install  sox libsox-fmt-* lame vlc
sudo apt-fast -qq  -y install  normalize-audio


