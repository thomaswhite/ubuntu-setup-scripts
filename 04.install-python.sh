#!/bin/bash

# echo $(printf '%s\n' zebra ant spider spider ant zebra ant | sort -u)

source _setup.sh

sudo apt-fast -qq  -y install python python-pip python-software-properties python-gpgme
sudo apt-fast -qq  -y install python3 python3-pip

pip install --allow-unverified pyPdf pyPdf
pip install requests bottle yad speedtest-cli apt-select
#sudo pip install repren
pip install --upgrade pip 

### best mirrors, not used because apt-fast has its own mirrors list
# apt-select -t 10 
# sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup && sudo mv sources.list /etc/apt/

