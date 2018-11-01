#!/usr/bin/env bash

source _setup.sh


# gsettings set com.canonical.indicator.sound blacklisted-media-players
gsettings set com.canonical.indicator.sound interested-media-players []
gconftool-2 -s -t string /apps/notify-osd/multihead_mode focus-follow

#[HOW TO] Disable crash reports in Xubuntu
sudo sed -i "s/enabled=1/enabled=0/g" '/etc/default/apport'

# http://xubuntugeek.blogspot.co.uk/2014/10/solved-thunar-slow-startup.html
sudo sed -i 's/AutoMount=true/AutoMount=false/' /usr/share/gvfs/mounts/network.mount

# https://www.dynacont.net/documentation/linux/Useful_SystemD_commands/
sudo systemctl enable systemd-readahead-collect.service
sudo systemctl enable systemd-readahead-replay.service

if ! grep "Acquire::Languages" /etc/apt/apt.conf.d/00aptitude; then 
  sudo echo 'Acquire::Languages "none";' >> /etc/apt/apt.conf.d/00aptitude
fi


if ! grep "vm.swappiness" /etc/sysctl.d/99-sysctl.conf; then 
  sudo echo 'vm.swappiness=5' >> /etc/sysctl.d/99-sysctl.conf
fi


# sudo systemctl edit apt-daily.timer 
sudo mkdir -p /etc/systemd/system/apt-daily-upgrade.timer.d/
sudo cat > /etc/systemd/system/apt-daily-upgrade.timer.d/override.conf<<EOL
[Timer]
OnBootSec=15min
OnUnitActiveSec=1d
AccuracySec=1h
RandomizedDelaySec=47min
EOL

# sudo systemctl edit apt-daily.timer 
sudo mkdir -p /etc/systemd/system/apt-daily.timer.d/
sudo cat > /etc/systemd/system/apt-daily.timer.d/override.conf<<EOL
[Timer]
OnBootSec=15min
OnUnitActiveSec=1d
AccuracySec=1h
RandomizedDelaySec=33min
EOL


#http://askubuntu.com/questions/627899/nameserver-127-0-1-1-in-resolv-conf-wont-go-away
#sudo sed -i "s/dns=dnsmasq/#dns=dnsmasq/g" '/etc/NetworkManager/NetworkManager.conf'
#sudo service network-manager restart

# https://askubuntu.com/questions/16376/connect-to-network-before-user-login




