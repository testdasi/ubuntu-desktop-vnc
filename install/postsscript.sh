#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
set -u

echo "add 'source generate_container_user' to .bashrc"
# have to be added to hold all env vars correctly
echo 'source $STARTUPDIR/generate_container_user' >> $HOME/.bashrc

echo "Apt Cleanup"
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
RUN apt-get clean -y
RUN apt-get autoclean -y
RUN apt-get autoremove -y

