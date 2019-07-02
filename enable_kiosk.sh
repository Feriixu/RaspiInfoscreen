#!/bin/bash
./disable_kiosk.sh
(crontab -u pi -l ; echo "@reboot DISPLAY=:0 LANG=de_DE.UTF-8 ~/kiosk.sh") | crontab -u pi -