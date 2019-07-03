#!/bin/bash
crontab -u pi -l | grep -v 'kiosk.sh' | crontab -u pi -