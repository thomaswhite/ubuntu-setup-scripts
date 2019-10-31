#!/usr/bin/env bash

# examples
# echo $(printf '%s\n' zebra ant spider spider ant zebra ant | sort -u)
# [ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# git clone https://github.com/erikdubois/Surfn /tmp/Surfn
# find /tmp/Surfn -maxdepth 1 -type f -exec rm -rf '{}' \;

source _setup.sh

source 061.dev-git-config.sh
sudo apt-get -y -qq install etckeeper
sudo apt-get -y -qq install git wget aria2 apt-transport-https gdebi

if ! [[ -f /usr/bin/apt-fast ]]; then
  sudo cp 2copy/etc/apt-fast.conf /etc/apt-fast.conf
  github_get_a_file /ilikenwf/apt-fast/master/apt-fast                       /usr/local/sbin/apt-fast          x
  github_get_a_file /ilikenwf/apt-fast/master/completions/bash/apt-fast /etc/bash_completion.d/apt-fast  ''  'root:root'
fi


sudo sh -c 'echo "Acquire::Languages { \"en\"; };" > /etc/apt/apt.conf.d/99translations'

# source 999.upgrade-all.sh
