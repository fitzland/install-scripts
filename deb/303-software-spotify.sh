#!/bin/bash
#set -e


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


###############################################################################
echo "Installation of Spotify"
###############################################################################

sudo apt update && sudo apt upgrade

sudo apt install curl libcanberra-gtk-module curl software-properties-common apt-transport-https gnupg2 debian-keyring -y

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/spotify.gpg

echo "deb [signed-by=/usr/share/keyrings/spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

udo apt update

sudo apt install -y spotify-client

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
