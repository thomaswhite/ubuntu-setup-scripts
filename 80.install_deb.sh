#!/bin/bash

source _setup.sh

sudo apt-get -y update
sudo apt-get -y upgrade

deb_install_packages_from_file_URL_list deb_files.txt "$download_deb"

sudo apt-get -y upgrade
sudo apt-get -y autoclean
sudo apt-get -y autoremove

#readarray files < deb-files-to-download.txt
#for f in "${files[@]}"; do wget $f; done

# dpkg -s tcpdump | grep Status 
# Status: install ok installed

# for (( i = 0 ; i < ${file[@]} ; i++ )); wget ${file[$i]}; done 
# find /some/directory -maxdepth 1 -type f -exec cmd option {} \; > results.out



#rm /tmp/vivaldi-stable_1.4.589.41-1_amd64.deb
#sudo apt install -y libcurl3
#sudo apt-get -f install
#wget https://downloads.vivaldi.com/stable/vivaldi-stable_1.4.589.41-1_amd64.deb -O /tmp/vivaldi-stable_1.4.589.41-1_amd64.deb
#curl -o /tmp/code_1.5.3-1474533365_amd64.deb https://code.visualstudio.com/docs/?dv=linux64_deb
#sudo dpkg -i /tmp/vivaldi-stable_1.4.589.41-1_amd64.deb
#rm /tmp/vivaldi-stable_1.4.589.41-1_amd64.deb

# wget http://download.virtualbox.org/virtualbox/5.1.12/virtualbox-5.1_5.1.12-112440~Ubuntu~xenial_amd64.deb -O /tmp/virtual-box.deb
#curl -o /tmp/code_1.5.3-1474533365_amd64.deb https://code.visualstudio.com/docs/?dv=linux64_deb


#rm /tmp/google-chrome-stable_current_amd64.deb
#echo "downloading google chrome latest stable edition"
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb
# sudo apt install -y libcurl3
#sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
#rm /tmp/google-chrome-stable_current_amd64.deb
#sudo apt install -f -y

#-O /tmp/google-chrome-stable_current_amd64.deb



