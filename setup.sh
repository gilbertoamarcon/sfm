#!/bin/bash

# Source directory
mkdir -p ${HOME}/dev

# General Dependencies
./apt-gets.sh

# openMVG
./openMVG.sh

# openMVS
./openMVS.sh
