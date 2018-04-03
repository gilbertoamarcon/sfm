#!/bin/bash

sudo apt-add-repository ppa:zarquon42/meshlab -y
sudo apt-get -y update
sudo apt-get -y update -qq
sudo apt-get -y install -qq
sudo apt-get -y install meshlab
sudo apt-get -y install build-essential
sudo apt-get -y install git
sudo apt-get -y install mercurial
sudo apt-get -y install cmake
sudo apt-get -y install libpng-dev
sudo apt-get -y install libjpeg-dev
sudo apt-get -y install libtiff-dev
sudo apt-get -y install libglu1-mesa-dev
sudo apt-get -y install freeglut3-dev
sudo apt-get -y install libglew-dev
sudo apt-get -y install libglfw3-dev
sudo apt-get -y install libatlas-base-dev
sudo apt-get -y install libsuitesparse-dev
sudo apt-get -y install libcgal-dev
sudo apt-get -y install libcgal-qt5-dev
sudo apt-get -y install libopencv-dev
sudo apt-get -y install libboost-iostreams-dev
sudo apt-get -y install libboost-program-options-dev
sudo apt-get -y install libboost-system-dev
sudo apt-get -y install libboost-serialization-dev
sudo apt-get -y install libxmu-dev
sudo apt-get -y install libxi-dev

