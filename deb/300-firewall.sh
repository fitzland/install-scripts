#!/bin/bash
#set -e


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################

sudo apt install ufw -y
sudo ufw enable
sudo ufw default deny incoming
sudo ufw allow outgoing
sudo ufw allow ssh

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
