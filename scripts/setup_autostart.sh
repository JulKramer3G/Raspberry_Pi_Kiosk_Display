#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script as root"; exit 1;
fi

echo '@pcmanfm --desktop --profile LXDE-pi' | tee -a /etc/xdg/lxsession/LXDE-pi/autostart 
echo '@xscreensaver -no-splash' | tee -a /etc/xdg/lxsession/LXDE-pi/autostart 
echo '@sh /home/pi/Raspberry_Pi_Kiosk_Display/scripts/start_display.sh' | tee -a /etc/xdg/lxsession/LXDE-pi/autostart

echo "Done!"