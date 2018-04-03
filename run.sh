#!/bin/bash

# Input pictures directory
pic_dir=$1

# Output directory
out_dir=$2

# Binary directories
openMVG_bins=${HOME}/dev/openMVG/openMVG_Build
openMVS_bins=${HOME}/dev/openMVS/openMVS_build/bin

# Global SFM script
SfM_GlobalPipeline=${HOME}/dev/openMVG/openMVG_Build/software/SfM/SfM_GlobalPipeline.py

# openMVG to openMVS converter
openMVG_main_openMVG2openMVS=$openMVG_bins/Linux-x86_64-RELEASE/openMVG_main_openMVG2openMVS

# openMVS post processing binaries
DensifyPointCloud=$openMVS_bins/DensifyPointCloud
ReconstructMesh=$openMVS_bins/ReconstructMesh
RefineMesh=$openMVS_bins/RefineMesh
TextureMesh=$openMVS_bins/TextureMesh

# Files
sfmdata=$out_dir/reconstruction_global/sfm_data.bin
mvs_scene=$out_dir/scene

# SFM Reconstruction
python $SfM_GlobalPipeline $pic_dir $out_dir

# openMVG to openMVS
$openMVG_main_openMVG2openMVS -i $sfmdata -o $mvs_scene.mvs

# Post processing
$DensifyPointCloud $mvs_scene
$ReconstructMesh ${mvs_scene}_dense.mvs
$RefineMesh ${mvs_scene}_dense_mesh.mvs
$TextureMesh ${mvs_scene}_dense_mesh.mvs
