#!/bin/bash

source timestamp-line.sh
sudo dpkg  -add -architecture i386


[ -d deb-tmp ] || mkdir -p deb-download
pushd deb-download
wget -nv -i ../deb_files.txt

deb_install_from_file_list ../deb_files.txt

# gdebi -o APT::Install-Recommends=0 -o APT::Install-Suggests=0 .....
for f in *.deb; do
   is_installed=deb_check_if_installed $f
   if [ "$is_installed" != 'yes' ]; then
       rulem " installing $f"
       sudo gdebi -n -o APT::Install-Recommends=1 "$f"
       sudo apt-get install -fy
   fi
done

sudo apt-fast -y upgrade
sudo apt-fast -y autoclean 
sudo apt -y autoremove


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



