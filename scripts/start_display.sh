#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script as root"; exit 1;
fi

killall unclutter
killall firefox-esr

unclutter --display=:0 &
firefox --display=:0 --kiosk $(head -n 1 website.txt) &
