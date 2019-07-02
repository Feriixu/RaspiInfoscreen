sudo apt-get purge wolfram-engine -y
sudo apt-get purge scratch -y
sudo apt-get purge scratch2 -y
sudo apt-get purge nuscratch -y
sudo apt-get purge sonic-pi -y
sudo apt-get purge idle3 -y
sudo apt-get purge smartsim -y
sudo apt-get purge java-common -y
sudo apt-get purge minecraft-pi -y
sudo apt-get purge libreoffice* -y
sudo apt-get clean
sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install xdotool unclutter crontab sed -y
./enable_kiosk.sh