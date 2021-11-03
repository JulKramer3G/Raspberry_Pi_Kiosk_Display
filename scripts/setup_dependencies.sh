#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script as root"; exit 1;
fi

sudo apt-get update
# sudo apt-get upgrade
sudo apt-get --assume-yes install firefox-esr
sudo apt-get --assume-yes install unclutter


