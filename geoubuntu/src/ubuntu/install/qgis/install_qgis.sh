. /etc/os-release; echo "$UBUNTU_CODENAME"

sudo mkdir -m755 -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/qgis-archive-keyring.gpg https://download.qgis.org/downloads/qgis-archive-keyring.gpg




sudo sh -c 'echo "deb https://qgis.org/ubuntugis $UBUNTU_CODENAME main" >> /etc/apt/sources.list'  
sudo sh -c 'echo "deb-src https://qgis.org/ubuntugis $UBUNTU_CODENAME main " >> /etc/apt/sources.list'  
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
sudo apt-get update
sudo apt-get install -y qgis qgis-plugin-grass 