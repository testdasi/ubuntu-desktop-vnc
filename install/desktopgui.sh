#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install default Ubuntu Desktop"

### Install default ubuntu desktop experience
apt-get update 
apt-get install -y --no-install-recommends ubuntu-desktop
# tasksel install ubuntu-desktop
# tasksel install ubuntu-desktop --no-install-recommends

### Start GNOME session?
#service gdm3 start
systemctl enable gdm3
systemctl start gdm3
