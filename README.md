# RaspiInfoscreen
Simple Infoscreen. Displays a Google presentation and personio calendar by default.
Made for IOX in the scope of an internship.

Tested on Raspberry Pi 3 B+
## Requirements
* Raspberry Pi with Raspian Full (preferably; not tested with other dists)
* Micro SD Card
* Power supply (or power from the TV / display)
* HDMI Card (if raspi doesn’t have HDMI output)
* Ethernet Card / WiFi dongle (if raspi doesn’t have onboard connectivity)
* Optional: Case
## Installation / Setup
1. Enable SSH (for later enabling and disabling of  the kiosk script)
`sudo raspi-config`
`Interfacing options -> SSH -> Enable`
2. Setup network connection
3. Clone Repository
`git clone https://github.com/RaspiInfoscreen`
5. Copy all files from /kiosk to /home/pi
`cp RaspiInfoscreen/kiosk/* /home/pi`
6. Make the scripts executable
`sudo chmod +x /home/pi/*kiosk*`
6. Run kiosk_setup.sh
`sudo /home/pi/kiosksetup.sh`
7. Edit kiosk.sh and enter the URL’s for Presentation and Personio
`sudo nano /home/pi/kiosk.sh`
`Enter the URL's`
`CTRL+X -> Y -> Enter`
8. Reboot
`sudo reboot`
9. Done!
Log in via SSH and run enable_kiosk.sh / disable_kiosk.sh for enabling and disabling. (Kiosk is enabled by default after setup)

## Contact
For questions please send an email to:

Felix Stoltenberg

felix.elias.stoltenberg@gmail.com
