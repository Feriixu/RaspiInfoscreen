# RaspiInfoscreen
Simple Infoscreen. Displays a Google presentation and personio calendar by default.
Made for IOX in the scope of an internship.

## Requirements
* Raspberry Pi with Raspian Full (preferably; not tested with other dists)
* Micro SD Card
* Power supply (or power from the TV / display)
* HDMI Card (if raspi doesn’t have HDMI output)
* Ethernet Card / WiFi dongle (if raspi doesn’t have onboard connectivity)
* Optional: Case
## Installation / Setup
1. Enable SSH (for later enabling and disabling of  the kiosk script)
2. Setup network connection
3. Copy all files to /home/pi
4. Run kiosk_setup.sh
5. Edit kiosk.sh and enter the URL’s for Presentation and Personio
6. Reboot
7. Done!
Log in via SSH and run enable_kiosk.sh / disable_kiosk.sh for enabling and disabling. (Kiosk is enabled by default after setup)

## Contact
For questions please send an email to:

Felix Stoltenberg
felix.elias.stoltenberg@gmail.com
