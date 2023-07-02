#!/bin/bash
#set -e

###############################################################################
echo "Installation of Spotify"
###############################################################################

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf install lpf-spotify-client -y

sudo usermod -a -G pkg-build jeff

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Reboot and then run lpf spotify-client"
echo "################################################################"
echo;tput sgr0
