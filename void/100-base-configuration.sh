#!/bin/bash
#set -e

###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################

sudo xbps-install -S void-repo-nonfree void-repo-multilib-nonfree

sudo xbps-install -y lxpolkit
sudo xbps-install -y rofi
sudo xbps-install -y dropbox nautilus-dropbox
sudo xbps-install -y unzip p7zip p7zip-plugins unrar

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
