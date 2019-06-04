#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
set -u

echo "add 'source generate_container_user' to .bashrc"
# have to be added to hold all env vars correctly
echo 'source $STARTUPDIR/generate_container_user' >> $HOME/.bashrc

echo "Apt Cleanup"
apt-get update -y
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get clean -y
apt-get autoclean -y
apt-get autoremove -y

