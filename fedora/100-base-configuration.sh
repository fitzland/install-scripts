#!/bin/bash
#set -e

###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf upgrade --refresh
sudo dnf groupupdate core

sudo hostnamectl set-hostname "awa51r5"

sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel

#sudo dnf group upgrade --with-optional Multimedia

#sudo dnf install -y gnome-tweaks gnome-extensions-app

sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

sudo dnf install -y lxpolkit
sudo dnf install -y rofi
sudo dnf install -y dropbox nautilus-dropbox
sudo dnf install -y unzip p7zip p7zip-plugins unrar

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
