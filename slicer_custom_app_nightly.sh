#!/bin/bash

#remove previous source and build directories
rm -rf /d/D/P/SlicerCAT
rm -rf /d/D/P/SC-0-build

#generate app in dashboard tree with default values
cd /d/D/P
cookiecutter gh:KitwareMedical/SlicerCustomAppTemplate --no-input project_name="SlicerCAT"

#copy ctestconfig - TODO:  can I just set these in the cmake script?
cp /d/D/CustomAppScripts/CTestConfig.cmake /d/D/P/SlicerCAT/CTestConfig.cmake

#launch build using cmake script
ctest -S /d/D/CustomAppScripts/sam-vs2017-slicercat_preview_nightly.cmake -C RelWithDebInfo -VV -O /d/D/Logs/sam-vs2017-slicercat_preview_nightly.txt 