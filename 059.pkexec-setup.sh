#!/usr/bin/env bash

sudo sed -i 's/gksudo gdebi-gtk/pkexec gdebi-gtk/'  /usr/share/applications/gdebi.desktop

wget https://raw.githubusercontent.com/hotice/webupd8/master/org.gnome.gedit.policy -O /tmp/org.gnome.gedit.policy
sudo cp /tmp/org.gnome.gedit.policy /usr/share/polkit-1/actions/