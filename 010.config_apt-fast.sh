#!/bin/bash

source _setup.sh

#sudo apt-get -y -qq install etckeeper
# sudo apt-get -y -qq install git
# source 061.dev-git-config.sh

# some ideas from https://raw.githubusercontent.com/ilikenwf/apt-fast/master/quick-install.sh

sudo apt-get -y -qq install aria2 apt-transport-https  bash-completion

if ! [[ -f /usr/local/sbin/apt-fast ]]; then
  sudo wget https://raw.githubusercontent.com/ilikenwf/apt-fast/master/apt-fast -O /usr/local/sbin/apt-fast
  sudo chmod +x /usr/local/sbin/apt-fast

  sudo wget https://raw.githubusercontent.com/ilikenwf/apt-fast/master/completions/bash/apt-fast -O /etc/bash_completion.d/apt-fast
  sudo chown root:root /etc/bash_completion.d/apt-fast

  if ! [[ -f /etc/apt-fast.conf ]]; then    sudo wget https://raw.githubusercontent.com/ilikenwf/apt-fast/master/apt-fast.conf -O /etc/apt-fast.conf
    
    sudo sed -i 's/#DOWNLOADBEFORE/DOWNLOADBEFORE/g'  /etc/apt-fast.conf
    sudo sed -i 's/#_MAXNUM/_MAXNUM/g'  /etc/apt-fast.conf
    sudo sed -i 's/#_MAXCONPERSRV/_MAXCONPERSRV/g'  /etc/apt-fast.conf
    sudo sed -i 's/#_SPLITCON/_SPLITCON/g'  /etc/apt-fast.conf
    sudo sed -i 's/#_MINSPLITSZ="1M"/_MINSPLITSZ="16M"/g'  /etc/apt-fast.conf

    echo "MIRRORS=( 'http://mirror.bytemark.co.uk/ubuntu/,http://mirrors.ukfast.co.uk/sites/archive.ubuntu.com/,http://mirror.cov.ukservers.com/ubuntu/,http://mirror.eu-lo.kamatera.com/ubuntu/,http://mirror.mythic-beasts.com/ubuntu/,http://mirrors.melbourne.co.uk/ubuntu/,https://uk.mirrors.clouvider.net/ubuntu/,http://www.mirrorservice.org/sites/archive.ubuntu.com/ubuntu/,http://ubuntu.positive-internet.com/ubuntu/,http://mirror.freethought-internet.co.uk/ubuntu/,https://mirrors.gethosted.online/ubuntu/,http://uk.mirror.nsec.pt/ubuntu/,http://mirror.vorboss.net/ubuntu-archive/,http://mirror.ox.ac.uk/sites/archive.ubuntu.com/ubuntu/,https://mirror.pulsant.com/sites/ubuntu-archive/,http://mirrors.coreix.net/ubuntu/,http://uk.mirror.worldbus.ge/ubuntu/,http://mirror.as29550.net/archive.ubuntu.com/,http://archive.ubuntu.com/ubuntu/,http://mirror.sov.uk.goscomb.net/ubuntu/,http://ubuntu.mirrors.uk2.net/ubuntu/' )" | sudo tee -a /etc/apt-fast.conf

    echo  "VERBOSE_OUTPUT=n" | sudo tee -a  /etc/apt-fast.conf
    
  fi  
fi

