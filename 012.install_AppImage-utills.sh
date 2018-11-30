#!/usr/bin/env bash


# $HOME/Downloads (or its localized equivalent, as determined by G_USER_DIRECTORY_DOWNLOAD in glib)
# $HOME/.local/bin
# $HOME/bin
# $HOME/Applications
# /Applications
# /isodevice/Applications
# /isofrom/Applications
# /run/initramfs/isoscan/Applications
# /run/archiso/img_dev/Applications
# /lib/live/mount/findiso/Applications
# /opt
# /usr/local/bin

sudo apt-get  -qq -y  install firejail

mkdir -p ~/tmp
pushd ~/tmp

wget https://github.com/AppImage/appimaged/releases/download/continuous/appimaged_1-alpha-gita3b100b.travis57_amd64.deb
sudo dpkg -i appimaged_*.deb
systemctl --user add-wants default.target appimaged
systemctl --user start appimaged

wget https://github.com/AppImage/AppImageUpdate/releases/download/continuous/AppImageUpdate-x86_64.AppImage
sudo chmod a+x AppImageUpdate-x86_64.AppImage
sudo mv AppImageUpdate-x86_64.AppImage /usr/local/bin/AppImageUpdate


popd
