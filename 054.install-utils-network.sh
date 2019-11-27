#!/usr/bin/env bash

source _setup.sh

#sudo apt-fast -qq -y install gnome-network-admin
sudo apt-fast -qq -y install moreutils
sudo apt-fast -qq -y install wget uget curl
sudo apt-fast -qq -y install net-tools traceroute

# cisco vpn client
sudo apt-fast -qq -y install network-manager-openconnect network-manager-openconnect-gnome
sudo systemctl restart NetworkManager.service

sudo apt-fast -qq -y install x2goclient # x2goserver x2goserver-xsession

sudo apt-fast -qq -y install lynx