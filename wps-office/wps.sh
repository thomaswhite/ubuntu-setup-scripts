#!/bin/bash

#https://github.com/so-zengtao/nginx-wps-community/tree/master/root/download/dicts
#https://github.com/so-zengtao/nginx-wps-community/tree/master/root/download/fonts

sudo apt-get install cabextract
sudo unzip en-GB.zip -d /opt/kingsoft/wps-office/office6/dicts/en-GB; 
sudo unzip wps_symbol_fonts.zip -d /usr/share/fonts/wps-office; 
sudo ./vistafonts-installer-modified.sh 



