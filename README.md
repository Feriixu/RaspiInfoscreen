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
`$ sudo raspi-config`
`Interfacing options -> SSH -> Enable`
2. Setup network connection
3. Clone Repository
`$ git clone https://github.com/RaspiInfoscreen`
5. Copy all files from /kiosk to /home/pi
`$ cp RaspiInfoscreen/kiosk/* /home/pi`
6. Make the scripts executable
`$ sudo chmod +x /home/pi/*kiosk*`
6. Run kiosk_setup.sh
`$ sudo /home/pi/kiosksetup.sh`
7. Edit kiosk.sh and enter the URL’s for Presentation and Personio
`$ sudo nano /home/pi/kiosk.sh`
`Enter the URL's`
`CTRL+X -> Y -> Enter`
8. Open Chromium browser and log in to personio
9. Reboot with `$ sudo reboot`
10. Done!
---
## How to connect via SSH
1. Download and install [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html "Putty Download")
2. Create Shortcut on desktop -> 
`putty.exe pi@<IP of the raspi> -pw <password>`
3. Double click the Shortcut to connect

## How to dis-/enable the kiosk
1. Log in via SSH (double click the shortcut you created)
* Run `$ ./enable_kiosk.sh` to **enable**
* Run `$ ./disable_kiosk.sh`to **disable**
3. Reboot the raspi with `$ sudo reboot`

## How to adjust settings
1. Log in via SSH (double click the shortcut you created)
2. Run `$ sudo nano /home/pi/kiosksettings.config` to edit the config file
3. Edit values *(Tip: You cant use CTRL+V to paste, use Right-Click instead)*
4. Press **CTRL+S** to save
5. Press **CTRL+X** to exit
6. Reboot the raspi for the changes to take effect -> `$ sudo reboot` 
---
## Contact
For questions please send an email to:

Felix Stoltenberg

felix.elias.stoltenberg@gmail.com
