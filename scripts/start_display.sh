#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script as root"; exit 1;
fi

unclutter --display=:0 &
firefox --display=:0 --kiosk $(head -n 1 /home/pi/Raspberry_Pi_Kiosk_Display/website.txt) &
