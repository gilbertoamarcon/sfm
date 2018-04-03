#!/bin/bash

cam_model=$1
cam_focal_dist=$2

sensor_db=${HOME}/dev/openMVG/src/openMVG/exif/sensor_width_database/sensor_width_camera_database.txt

# Inserting camera into the db
echo $cam_model';'$cam_focal_dist >> $sensor_db
sort -o $sensor_db $sensor_db

