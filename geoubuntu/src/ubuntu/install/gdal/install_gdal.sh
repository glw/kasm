#!/usr/bin/env bash

# use the repo for now
sudo apt-get install gnupg python-software-properties
add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
apt update
apt-get install -y gdal