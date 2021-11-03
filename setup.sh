#!/bin/bash
if [ "$EUID" -ne 0 ]; then
	echo "Please run this script as root"; exit 1;
fi

bash scripts/setup_dependencies.sh
bash scripts/setup_system.sh
bash scripts/setup_autostart.sh

echo "Done, please reboot now!"

