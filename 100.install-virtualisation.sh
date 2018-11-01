#!/usr/bin/env bash

source _setup.sh

#   qemu lzop
sudo apt-fast -y -qq install wine-stable wine32 wine32-tools  wine32-preloader 
sudo apt-fast -y -qq install wine64 
sudo apt-fast -y -qq install wine64-tools wine64-preloader 
sudo apt-fast -y -qq install winetricks 
#sudo apt-fast -y -qq install wine-fish 
sudo apt-fast -y -qq install playonlinux

