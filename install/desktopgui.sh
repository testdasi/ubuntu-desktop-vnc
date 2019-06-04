#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install default Ubuntu Desktop"

### Install default ubuntu desktop experience
tasksel install ubuntu-desktop

### Start GNOME session?
#service gdm3 start
systemctl enable gdm3
systemctl start gdm3
