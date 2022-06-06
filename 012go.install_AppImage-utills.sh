#!/usr/bin/env bash


#Folders being watched for AppImage files:
#  /usr/local/bin
#  /opt
#  ~/Applications
#  ~/.local/bin
#  $PATH, which frequently includes /bin, /sbin, /usr/bin, /usr/sbin, /usr/local/bin, /usr/local/sbin, and other locations


sudo apt-get  -qq -y  install golang 


### from  https://github.com/probonopd/go-appimage/blob/master/src/appimaged/README.md

# Remove pre-existing similar tools
systemctl --user stop appimaged.service || true
sudo apt-get -y remove appimagelauncher || true

# Clear cache
rm "$HOME"/.local/share/applications/appimage*

# Optionally, install Firejail (if you want sandboxing functionality)
# sudo apt-get  -qq -y  install firejail


# Download
mkdir -p ~/Applications
wget -c https://github.com/$(wget -q https://github.com/probonopd/go-appimage/releases -O - | grep "appimaged-.*-x86_64.AppImage" | head -n 1 | cut -d '"' -f 2) -P ~/Applications/
chmod +x ~/Applications/appimaged-*.AppImage

# Launch
~/Applications/appimaged-*.AppImage
