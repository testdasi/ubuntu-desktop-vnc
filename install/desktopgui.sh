#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install default Ubuntu Desktop"

### Install default ubuntu desktop experience
apt-get update 
apt-get install -y --no-install-recommends ubuntu-desktop

### Start GNOME session?
#service gdm3 start
