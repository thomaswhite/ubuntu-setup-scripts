#!/bin/bash

# examples
# echo $(printf '%s\n' zebra ant spider spider ant zebra ant | sort -u)
# [ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# git clone https://github.com/erikdubois/Surfn /tmp/Surfn
# find /tmp/Surfn -maxdepth 1 -type f -exec rm -rf '{}' \;

source _setup.sh

sudo apt-get -y -qq install etckeeper
sudo apt-get -y -qq install git wget aria2 apt-transport-https

if ! [[ -f /usr/bin/apt-fast ]]; then
  sudo cp 2copy/etc/apt-fast.conf /etc/apt-fast.conf
  github_get_a_file /ilikenwf/apt-fast/master/apt-fast                       /usr/local/sbin/apt-fast          x
  github_get_a_file /ilikenwf/apt-fast/master/completions/bash/apt-fast /etc/bash_completion.d/apt-fast  ''  'root:root'
fi


sudo sh -c 'echo "Acquire::Languages { \"en\"; };" > /etc/apt/apt.conf.d/99translations'

source 99.upgrade-all.sh


## https://launchpad.net/~saiarcot895/+archive/ubuntu/myppa


ppa-add teejee2008/ppa			    # aptik, compared ukuu timeshift
ppa-add dhor/myway			        # luminance-hdr, fotoxx, ffmpeg
ppa-add webupd8team/y-ppa-manager   # y-ppa-manager
ppa-add nilarimogard/webupd8		# youtube-dl
ppa-add webupd8team/java		    # oracle JAVA 8..9
ppa-add mkusb/ppa 			        # mkusb
ppa-add x2go/stable			        # remore connection
ppa-add graphics-drivers/ppa		# nvidia
ppa-add pmjdebruijn/darktable-unstable # darktable pmjdebruijn/darktable-release
#ppa-add linrunner/tlp			    #  tlp tlp-rdw ;

ppa-add xubuntu-dev/staging   # thunar freeze fix https://launchpad.net/~xubuntu-dev/+archive/ubuntu/staging
                                                             # https://bugs.launchpad.net/ubuntu/+source/thunar/+bug/1679488


# Not available above Ubuntu 16.10
ppa-add_from-previous-release http://ppa.launchpad.net/rebuntu16/other-stuff/ubuntu yakkety main	    # # xfce-theme-manager xfwm4-composite-editor
ppa-add_from-previous-release http://ppa.launchpad.net/videolan/stable-daily/ubuntu yakkety main        # vlc
ppa-add_from-previous-release http://ppa.launchpad.net/noobslab/apps/ubuntu         xenial  main	# playonlinux
ppa-add_from-previous-release http://ppa.launchpad.net/hugin/hugin-builds/ubuntu    xenial  main     # hugin enblend-enfuse
ppa-add_from-previous-release http://ppa.launchpad.net/nemh/systemback/ubuntu       yakkety main  	# systemback
# ppa-add_from-previous-release http://mp3splt.sourceforge.net/repository             trusty  main		# mp3splt
ppa-add_from-previous-release http://ppa.launchpad.net/alexx2000/doublecmd/ubuntu   zesty   main      # Double Commander
ppa-add_from-previous-release http://ppa.launchpad.net/amigadave/ppa/ubuntu         yakkety main    # easytag

# opera developer
ppa-add-list-file_and_key "deb http://deb.opera.com/opera-stable/ stable non-free"                          opera.list          http://deb.opera.com/archive.key
ppa-add-list-file_and_key "deb http://apt.insynchq.com/ubuntu $(lsb_release -c -s) non-free contrib"        insync.list          "" keyserver.ubuntu.com ACCAF35C
ppa-add-list-file_and_key "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" atlassian-hipchat4.list https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public
ppa-add-list-file_and_key "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free"    resilio-sync.list   https://linux-packages.resilio.com/resilio-sync/key.asc
ppa-add-list-file_and_key "deb https://apt.syncthing.net/ syncthing stable"                                 syncthing.list      https://syncthing.net/release-key.txt
#ppa-add-list-file_and_key "deb [arch=amd64] https://repo.skype.com/deb stable main"                         skypeforlinux.list  https://repo.skype.com/data/SKYPE-GPG-KEY



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

