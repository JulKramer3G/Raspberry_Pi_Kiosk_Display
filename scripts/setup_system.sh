#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script as root"; exit 1;
fi

echo 'disable_overscan=0' | tee -a /boot/config.txt
# ONLY REQUIRED if you want to set the HDMI output to a fixed resolution and frame rate (here: 1280x800 @60Hz)
# echo 'hdmi_cvt=1280 800 60 5 0 0 0' | tee -a /boot/config.txt
# echo 'hdmi_group=2' | tee -a /boot/config.txt
# echo 'hdmi_mode=87' | tee -a /boot/config.txt
# echo 'hdmi_drive=2' | tee -a /boot/config.txt
echo 'dtparam=act_led_trigger=default-on' | tee -a /boot/config.txt