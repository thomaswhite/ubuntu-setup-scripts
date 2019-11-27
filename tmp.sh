#!/usr/bin/env bash

sudo apt-fast -y -qq install speedtest-cli                  #  Command line interface for testing internet bandwidth using speedtest.net 
sudo apt-fast -y -qq install yad                            #  tool for creating graphical dialogs from shell scripts      
sudo apt-fast -y -qq install youtube-dl                     #  downloader of videos from YouTube and other sites           
 
# ./052.install-utils-system.sh ------------------------
sudo apt-fast -y -qq install apt                            #  commandline package manager                                 
sudo apt-fast -y -qq install aptitude                       #  terminal-based package manager                              
# Bad
sudo apt-fast -y -qq install dconf-cli                      #  simple configuration storage system - utilities             
sudo apt-fast -y -qq install dconf-editor                   #  simple configuration storage system - graphical editor      
# dconf-tools
# enable
sudo apt-fast -y -qq install fdupes                         #  identifies duplicate files within given directories         
sudo apt-fast -y -qq install fslint                         #  Utility collection to find and fix common errors in file storage 
sudo apt-fast -y -qq install gdebi                          #  simple tool to view and install deb files - GNOME GUI       
sudo apt-fast -y -qq install gnome-disk-utility             #  manage and configure disk drives and media                  
sudo apt-fast -y -qq install gparted                        #  GNOME partition editor                                      
# launchpad-getkeys
sudo apt-fast -y -qq install libstdc++5                     #  The GNU Standard C++ Library v3                             
sudo apt-fast -y -qq install notify-osd                     #  daemon that displays passive pop-up notifications           
sudo apt-fast -y -qq install ppa-purge                      #  disables a PPA and reverts to official packages             
sudo apt-fast -y -qq install preload                        #  adaptive readahead daemon                                   
# start
sudo apt-fast -y -qq install symlinks                       #  scan/change symbolic links                                  
sudo apt-fast -y -qq install synaptic                       #  Graphical package manager                                   
# systemctl
sudo apt-fast -y -qq install udisks2                        #  D-Bus service to access and manipulate storage devices      
sudo apt-fast -y -qq install xdotool                        #  simulate (generate) X11 keyboard/mouse input events         
# y-ppa-manager
 
# ./054.install-utils-network.sh ------------------------
sudo apt-fast -y -qq install curl                           #  command line tool for transferring data with URL syntax     
sudo apt-fast -y -qq install lynx                           #  classic non-graphical (text-mode) web browser               
sudo apt-fast -y -qq install moreutils                      #  additional Unix utilities                                   
sudo apt-fast -y -qq install network-manager-openconnect    #  network management framework (OpenConnect plugin core)      
sudo apt-fast -y -qq install network-manager-openconnect-gnome #  network management framework (OpenConnect plugin GNOME GUI) 
sudo apt-fast -y -qq install uget                           #  easy-to-use download manager written in GTK+                
sudo apt-fast -y -qq install wget                           #  retrieves files from the web                                
sudo apt-fast -y -qq install x2goclient                     #  X2Go Client application (Qt5)                               
 
# ./056.install-utils-backup.sh ------------------------
# aptik
sudo apt-fast -y -qq install cabextract                     #  Microsoft Cabinet file unpacker                             
sudo apt-fast -y -qq install insync                         #  Sync all your Google Drive & OneDrive accounts to your local filesystem 
sudo apt-fast -y -qq install p7zip-full                     #  7z and 7za file archivers with high compression ratio       
sudo apt-fast -y -qq install p7zip-rar                      #  non-free rar module for p7zip                               
sudo apt-fast -y -qq install rar                            #  Archiver for .rar files                                     
sudo apt-fast -y -qq install resilio-sync                   #  Resilio Sync is a proprietary peer-to-peer file synchronisation tool. 
sudo apt-fast -y -qq install rsync                          #  fast, versatile, remote (and local) file-copying tool       
# systemback
sudo apt-fast -y -qq install unrar                          #  Unarchiver for .rar files (non-free version)                
sudo apt-fast -y -qq install unzip                          #  De-archiver for .zip files                                  
sudo apt-fast -y -qq install zip                            #  Archiver for .zip files                                     
 
