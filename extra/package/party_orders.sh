#!/bin/bash

set -xeu -o pipefail

cd "$release_dir"
wget -nv "$(curl -s https://api.github.com/repos/${party_orders_repo}/releases/latest | grep browser_download_url | awk -F '"' '{print $4}')"
unzip party_orders*.zip mods/party_orders.ini mods/party_orders.dat
rm -f party_orders*.zip
