#!/usr/bin/env bash

dropbox stop		  &> /dev/null
dbus-launch dropbox start &> /dev/null
dropbox autostart y

# https://blog.linuxadmins.org/fix-dropbox-indicator-icon-and-menu-not-working-in-xubuntu-lubuntu-or-ubuntu-mate/
cp ~/.config/autostart/dropbox.desktop ~/.config/autostart/start_dropbox.desktop;
sed -i 's/^Exec=dropbox start/Exec=dbus-launch dropbox start/' ~/.config/autostart/dropbox.desktop;
sed -i 's/^Exec=dropbox start/Exec=dbus-launch dropbox start/' ~/.config/autostart/start_dropbox.desktop;

mkdir -p ~/.local/share/applications/;
sudo sed -i 's/^Exec=dropbox start/Exec=dbus-launch dropbox start/' /usr/share/applications/dropbox.desktop;
cp /usr/share/applications/dropbox.desktop ~/.local/share/applications/;

sudo chown -R tom ~/.cache/thumbnails/
sudo chmod 701 -R ~/.cache/thumbnails
