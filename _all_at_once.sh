#!/usr/bin/env bash

source /etc/lsb-release # DISTRIB_ID, DISTRIB_RELEASE, DISTRIB_CODENAME, DISTRIB_DESCRIPTION
source variables.sh

sudo apt-get -qq -y install git rsync wget curl gdebi



pushd $download_path

#rulem " $(date +%Y-%m-%d:%H:%M:%S), running file: ${0##*/} "
/bin/bash ./000.configure_merge_history.sh
/bin/bash ./001.copy-home-dot-files.sh
/bin/bash ./010.config_apt-fast.sh
/bin/bash ./012go.install_AppImage-utills.sh
/bin/bash ./035.install_resilio.sh
/bin/bash ./040.install-python.sh

/bin/bash ./050.install-essentials.sh
/bin/bash ./052.install-utils-system.sh
/bin/bash ./054.install-utils-network.sh
/bin/bash ./056.install-utils-backup.sh

/bin/bash ./060.dev-tools.sh
/bin/bash ./061.dev-git-config.sh



popd

# rulem " $(date +%Y-%m-%d:%H:%M:%S), running file: ${0##*/} "
#rulem " $1 " "="
