#!/bin/bash

# Add the UbuntuGIS PPA for more recent packages
sudo add-apt-repository -y -s ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get -y upgrade

# Install some of the base packages we'll need
sudo apt-get -y install build-essential python-pip python3-pip gdal-bin python-gdal python3-gdal python-dev python-setuptools libgdal-dev libgeos-dev git wget python-mpltoolkits.basemap

# Use pip to install the additional python packages we'll need
yes | sudo pip2 install ipython[notebook] pandas fiona shapely rasterio rasterstats requests sqlalchemy geopandas mplleaflet==0.0.2

# Symlink the /vagrant shared directory to home directory
if [ ! -L ~/workspace ]; then
    ln -s /vagrant ~/workspace
else
    echo "~/workspace is already linked."
fi
