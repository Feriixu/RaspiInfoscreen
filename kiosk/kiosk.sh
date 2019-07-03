#!/bin/bash
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
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --no-sandbox --start-fullscreen $sitePresentation $sitePersonio &

# Wait for browser to start up
sleep 20;

# move mouse to corner to prevent pop ups on website
xdotool mousemove 0 0

#Wait a little
sleep 20;

# move mouse to corner to prevent pop ups on website
xdotool mousemove 0 0

# Loop
while true; do
        #Show presentation
        sleep $presentationDuration;

        #Change to personio
        xdotool key ctrl+Tab;
        #Reload Personio
        xdotool key F5;
        #Wait for website
        sleep 10;
		xdotool key End
		sleep 5
        #Move up
        for (( c=0; c<=$personioScrollAmount; c++ ))
		do
                xdotool key Up;
                sleep 2;
        done

        #Change back to presentation
        xdotool key ctrl+Tab;
        #Reload presentation
        xdotool key F5;
done
