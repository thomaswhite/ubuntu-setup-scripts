#!/bin/bash

source _setup.sh

# dev & build
sudo apt-fast -qq  -y install build-essential make autoconf automake libtool flex bison gdb libc6-dev libgcc1 cmake cmake-curses-gui pkg-config help2man checkinstall libgtk-3.0
sudo apt-fast -qq  -y install clang g++-4.8 git git-core kiki perl gcc-multilib
sudo apt-fast -qq  -y install build-essential debhelper devscripts libblkid-dev libmount-dev libncursesw5-dev libparted0-dev qtbase5-dev qttools5-dev-tools

# used to build_exiftool
sudo apt-fast  -qq -y install lynx

# used to build_libphoto
sudo apt-fast  -qq -y install build-essential cmake llvm clang-4.0 lldb-4.0 gcc g++ intltool automake autoconf autopoint gettext libtool

#used to build_darktable
sudo apt-fast  -qq -y install build-essential cmake llvm clang-4.0 lldb-4.0 gcc g++ cmake intltool xsltproc libgtk-3-dev libxml2-utils libxml2-dev liblensfun-dev librsvg2-dev libsqlite3-dev libcurl4-gnutls-dev libjpeg-dev libtiff5-dev liblcms2-dev libjson-glib-dev libexiv2-dev libpugixml-dev libgphoto2-dev libsoup2.4-dev libopenexr-dev libwebp-dev libflickcurl-dev  libsecret-1-dev libgraphicsmagick1-dev libcolord-dev libcolord-gtk-dev libcups2-dev libsdl1.2-dev libsdl-image1.2-dev libgl1-mesa-dev libosmgpsmap-1.0-dev default-jdk gnome-doc-utils libsaxon-java fop imagemagick docbook-xml docbook-xsl liblua5.2-0 liblua5.2-dev lua5.2 lua5.2-doc


sudo apt-fast -qq  -y install git
git config --global user.name Thomas White
git config --global user.email thomas.0007@gmail.com
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default simple
sudo git config --system core.editor gedit

mkdir -p "$HOME/app"
pushd "$HOME/app"
echo downloading WebStorm-2016.2.4
wget -N https://download-cf.jetbrains.com/webstorm/WebStorm-2016.2.4.tar.gz
tar -xzf WebStorm-2016.2.4.tar.gz
popd
