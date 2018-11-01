#!/usr/bin/env bash

source _setup.sh

# dev & build
sudo apt-fast -qq  -y install build-essential flex bison gdb libtool debhelper devscripts intltool
sudo apt-fast -qq  -y install make autoconf automake cmake cmake-curses-gui checkinstall pkg-config help2man
sudo apt-fast -qq  -y install g++ g++-4.8 gcc  gcc-multilib libgcc1 libc6-dev
sudo apt-fast -qq  -y install clang clang-4.0 kiki
sudo apt-fast -qq  -y install perl perl-tk
sudo apt-fast -qq  -y install libblkid-dev libmount-dev libncursesw5-dev libparted0-dev qtbase5-dev qttools5-dev-tools
sudo apt-fast -qq  -y install libgtk-3.0 libgtk-3-dev
sudo apt-fast -qq  -y install default-jdk libsaxon-java

# used to build_exiftool
sudo apt-fast  -qq -y install lynx perl

# used to build_libphoto
sudo apt-fast  -qq -y install build-essential cmake llvm clang-4.0 lldb-4.0 gcc g++ intltool automake autoconf autopoint gettext libtool

#used to build_darktable
sudo apt-fast  -qq -y install build-essential cmake llvm clang-4.0 lldb-4.0 gcc g++ cmake intltool xsltproc libgtk-3-dev libxml2-utils libxml2-dev liblensfun-dev librsvg2-dev libsqlite3-dev libcurl4-gnutls-dev libjpeg-dev libtiff5-dev liblcms2-dev libjson-glib-dev libexiv2-dev libpugixml-dev libgphoto2-dev libsoup2.4-dev libopenexr-dev libwebp-dev libflickcurl-dev  libsecret-1-dev libgraphicsmagick1-dev libcolord-dev libcolord-gtk-dev libcups2-dev libsdl1.2-dev libsdl-image1.2-dev libgl1-mesa-dev libosmgpsmap-1.0-dev default-jdk gnome-doc-utils docbook-xml docbook-xsl libsaxon-java fop imagemagick liblua5.2-0 liblua5.2-dev lua5.2 lua5.2-doc

source 061.dev-git-config.sh

mkdir -p "$HOME/app"
pushd "$HOME/app"
#echo downloading WebStorm-2016.2.4
#wget -N https://download-cf.jetbrains.com/webstorm/WebStorm-2016.2.4.tar.gz
#tar -xzf WebStorm-2016.2.4.tar.gz
popd
