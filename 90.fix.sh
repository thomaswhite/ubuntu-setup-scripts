#!/usr/bin/env bash

dropbox start

dropbox
# https://blog.linuxadmins.org/fix-dropbox-indicator-icon-and-menu-not-working-in-xubuntu-lubuntu-or-ubuntu-mate/
# cp ~/.config/autostart/dropbox.desktop ~/.config/autostart/start_dropbox.desktop;
sed -i 's/^Exec=dropbox start/Exec=dbus-launch dropbox start/' ~/.config/autostart/dropbox.desktop;

# dropbox autostart n; # this will delete

mkdir -p ~/.local/share/applications/;
cp /usr/share/applications/dropbox.desktop ~/.local/share/applications/;
sed -i 's/^Exec=dropbox start/Exec=dbus-launch dropbox start/' ~/.local/share/applications/dropbox.desktop


sudo chown -R tom ~/.cache/thumbnails/
sudo chmod 701 -R ~/.cache/thumbnails