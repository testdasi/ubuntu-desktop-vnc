#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update
apt-get install -y vim wget net-tools locales bzip2 python-numpy mc tasksel libnss-wrapper gettext
apt-get clean -y

echo "Generate locales for en_GB.UTF-8 because I'm British"
locale-gen en_GB.UTF-8
