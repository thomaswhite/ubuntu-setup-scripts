#!/usr/bin/env bash

source _setup.sh

ppa_add_file_and_key "resilio-sync.list" "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" "https://linux-packages.resilio.com/resilio-sync/key.asc"