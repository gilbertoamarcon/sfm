# sfm

A script bundle to automatically setup and run openMVG and openMVS for dense stereo reconstruction.

## Setup ##

```
./setup.sh
```

## Usage ##

Usage is ```./run input-folder output-folder``` , example:
```
./run.sh ${HOME}/Pictures/box ${HOME}/Pictures/res
```

## Adding camera not in the database ##

Check the camera parameters by pointing to a picture file, example:
```
${HOME}/dev/openMVG/openMVG_Build/Linux-x86_64-RELEASE/openMVG_main_exif_Parsing -i ${HOME}/Pictures/box/*
```

Use the script for adding a camera ```./add-cam.sh cam-model cam-focal-dist``` , example:
```
./add-cam.sh 'Moto G (5) Plus' '4.28'
```
