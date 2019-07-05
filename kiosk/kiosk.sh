#!/bin/bash
. /kiosksettings.config
# Disable screen timeout
xset s noblank
xset s off
xset -dpms

# Hide cursor if idle for 0.5 sceconds
unclutter -idle 0.5 -root &

# Clear chromium flags to disable warning banner
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

# Wait for secure startup
sleep 10

# Launch chromium
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --no-sandbox --start-fullscreen $sitePersonio $sitePresentation&

# move mouse to corner to prevent pop ups on website
xdotool mousemove 0 0

# Wait for browser to start up
sleep 20

#login
xdotool key Enter
sleep 10
xdotool key Tab
sleep 1
xdotool key Tab
sleep 1
xdotool key Tab
sleep 1
xdotool key Enter
sleep 1
#change back to presentation
xdotool key ctrl+Tab

# Loop
while true; do
        #Show presentation
        sleep $presentationDuration;

        #Change to personio
        xdotool key ctrl+Tab;
        #Reload Personio
        xdotool key F5;
        #Wait for website
        sleep 7;
		xdotool key End
		sleep $personioInitialDelay;
        #Move up
        for (( c=0; c<=$personioScrollAmount; c++ ))
		do
                xdotool key Up;
                sleep $personioScrollDelay;
        done
		sleep $personioEndDelay;
		
        #Change back to presentation
        xdotool key ctrl+Tab;
        #Reload presentation
        xdotool key F5;
done
