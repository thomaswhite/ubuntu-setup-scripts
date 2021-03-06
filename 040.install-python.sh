#!/usr/bin/env bash

# echo $(printf '%s\n' zebra ant spider spider ant zebra ant | sort -u)

source _setup.sh

sudo apt-fast -qq  -y install python python-pip
sudo apt-fast -qq  -y install python3 python3-pip python3-venv python3-virtualenv
sudo apt-fast -qq  -y install python-software-properties
sudo apt-fast -qq  -y install python-gpgme

pip install --allow-unverified pyPdf pyPdf
pip install requests bottle yad speedtest-cli apt-select
pip install git+https://github.com/dmpop/sonnenhut.git@develop
sudo pip install repren
sudo -H pip install --upgrade youtube-dl
# pip install --upgrade pip

### best mirrors, not used because apt-fast has its own mirrors list
# apt-select -t 10
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup && sudo mv sources.list /etc/apt/

