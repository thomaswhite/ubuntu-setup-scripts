#!/bin/bash

# audio

#http://mp3splt.sourceforge.net/mp3splt_page/debian_downloads.php?version=Utopic&ubuntu=true
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/libmp3splt/0.9.2/libmp3splt0_0.9.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/libmp3splt/0.9.2/libmp3splt0-flac_0.9.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/libmp3splt/0.9.2/libmp3splt0-ogg_0.9.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/libmp3splt/0.9.2/libmp3splt-doc_0.9.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/libmp3splt/0.9.2/libmp3splt0-mp3_0.9.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/libmp3splt/0.9.2/libmp3splt-dev_0.9.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/mp3splt/2.6.2/mp3splt_2.6.2.utopic_amd64.deb
# https://10gbps-io.dl.sourceforge.net/project/mp3splt/mp3splt-gtk/0.9.2/mp3splt-gtk_0.9.2.utopic_amd64.deb

deb_install_from_file_list ../deb_files-audio.txt donwload-only
sudo apt-fast -qq  -y install libmp3splt0-mp3 libmp3splt0-ogg libmp3splt0-flac libmp3splt-doc libmp3splt-dev
sudo apt-fast -qq  -y install mp3splt mp3splt-gtk

# sudo apt-fast -qq  -y install  --allow-unauthenticated libmp3splt0-mp3 libmp3splt0-ogg libmp3splt0-flac libmp3splt-doc libmp3splt-dev mp3splt mp3splt-gtk

sudo apt-fast -qq  -y install  --allow-unauthenticated easytag
sudo apt-fast -qq  -y install  sox libsox-fmt-* lame vlc
sudo apt-fast -qq  -y install  normalize-audio


