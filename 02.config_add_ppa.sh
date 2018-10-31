#!/usr/bin/env bash

# examples
# echo $(printf '%s\n' zebra ant spider spider ant zebra ant | sort -u)
# [ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# git clone https://github.com/erikdubois/Surfn /tmp/Surfn
# find /tmp/Surfn -maxdepth 1 -type f -exec rm -rf '{}' \;

source _setup.sh

## https://launchpad.net/~saiarcot895/+archive/ubuntu/myppa

# releases
# Ubuntu 18.10    Cosmic Cuttlefish
# Ubuntu 18.04    Bionic Beaver
# Ubuntu 17.10    Artful Aardvark
# Ubuntu 17.04    Zesty Zapus
# Ubuntu 16.10    Yakkety Yak
# Ubuntu 16.04    Xenial Xerus
# Ubuntu 15.10    Wily Werewolf
# Ubuntu 15.04    Vivid Vervet
# Ubuntu 14.04    Trusty Tahr

# cosmic bionic artful zesty yakkety xenial
#  curl -s --head http://ppa.launchpad.net/webupd8team/y-ppa-manager/ubuntu/dists/artful/main/ | head -n 1 | grep "HTTP/1.[01] [23].." > /dev/null
# on success (page exists), $? will be 0; on failure (page does not exist or is unreachable), $? will be 1



ppa_add teejee2008/ppa			    # aptik, compared ukuu timeshift
ppa_add dhor/myway			        # luminance-hdr, fotoxx, ffmpeg, hdrmerge
ppa_add webupd8team/y-ppa-manager   # y-ppa-manager
ppa_add nilarimogard/webupd8		# youtube-dl
ppa_add webupd8team/java		    # oracle JAVA 8..9
ppa_add mkusb/ppa 			        # mkusb
ppa_add x2go/stable			        # remore connection
ppa_add graphics-drivers/ppa		# nvidia
#ppa_add pmjdebruijn/darktable-unstable # darktable pmjdebruijn/darktable-release
#ppa_add linrunner/tlp			    #  tlp tlp-rdw ;

ppa_add xubuntu-dev/staging   # thunar freeze fix https://launchpad.net/~xubuntu-dev/+archive/ubuntu/staging
                                                             # https://bugs.launchpad.net/ubuntu/+source/thunar/+bug/1679488


echo "Add repositories not available above Ubuntu 16.10"
# Not available above Ubuntu 16.10
ppa_add_from_previous_release http://ppa.launchpad.net/rebuntu16/other-stuff/ubuntu yakkety main	    # # xfce-theme-manager xfwm4-composite-editor
ppa_add_from_previous_release http://ppa.launchpad.net/videolan/stable-daily/ubuntu yakkety main        # vlc
# ppa_add_from_previous_release http://ppa.launchpad.net/noobslab/apps/ubuntu         xenial  main	# playonlinux
ppa_add_from_previous_release http://ppa.launchpad.net/hugin/hugin-builds/ubuntu    xenial  main     # hugin enblend-enfuse
ppa_add_from_previous_release http://ppa.launchpad.net/nemh/systemback/ubuntu       yakkety main  	# systemback
# ppa_add_from_previous_release http://mp3splt.sourceforge.net/repository             trusty  main		# mp3splt
ppa_add_from_previous_release http://ppa.launchpad.net/alexx2000/doublecmd/ubuntu   zesty   main      # Double Commander
ppa_add_from_previous_release http://ppa.launchpad.net/amigadave/ppa/ubuntu         yakkety main    # easytag

# opera developer
# ppa_add_list_file_and_key "deb http://deb.opera.com/opera-stable/ stable non-free"                          opera.list          http://deb.opera.com/archive.key
ppa_add_list_file_and_key "deb http://apt.insynchq.com/ubuntu $(lsb_release -c -s) non-free contrib"        insync.list          "" keyserver.ubuntu.com ACCAF35C
# $(lsb_release -c -s)
ppa_add_list_file_and_key "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client artful main" atlassian-hipchat4.list https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public
ppa_add_list_file_and_key "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free"    resilio-sync.list   https://linux-packages.resilio.com/resilio-sync/key.asc
ppa_add_list_file_and_key "deb https://apt.syncthing.net/ syncthing stable"                                 syncthing.list      https://syncthing.net/release-key.txt
#ppa_add_list_file_and_key "deb [arch=amd64] https://repo.skype.com/deb stable main"                        skypeforlinux.list  https://repo.skype.com/data/SKYPE-GPG-KEY



## spotify-client
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

## mounty
# http://xubuntugeek.blogspot.co.uk/2012/06/easy-mount-disc-image-files-iso-img-bin.html
#sudo add-apt-repository "deb http://download.learnfree.eu/repository/skss / #SKSS" && wget http://download.learnfree.eu/repository/skss/repo.pub.asc -q -O- | sudo apt-key add - 

## https://askubuntu.com/questions/760896/how-can-i-automatically-fix-w-target-packages-is-configured-multiple-times

sudo apt-get       -y update
#sudo apt-get  -qq  -y install apt-fast
sudo apt-fast -qq  -y install aptik y-ppa-manager launchpad-getkeys

sudo apt-fast -qq -y install python
sudo ./apt-remove-duplicate-source-entries.py

## Add missing keys: http://www.webupd8.org/2011/02/launchpad-getkeys-gets-proxy-support.html
sudo apt-fast -qq  -y install ubuntu*keyring debian*keyring gnome*keyring python*keyring
sudo launchpad-getkeys # -p  http://lotg-new.odd.blackspider.com:3128
sudo apt-fast update
sudo apt-fast -y dist-upgrade

## remove duplicate PPA entries
# sudo cat /etc/apt/sources.list | perl -ne '$H{$_}++ or print' > /tmp/sources.list && sudo mv /tmp/sources.list /etc/apt/sources.list
# sudo  awk '!a[$0]++' /etc/apt/sources.list

# sudo aptik --backup-dir ./backup-aptik  --restore-cache 

