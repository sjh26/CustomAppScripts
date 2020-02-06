#!/bin/bash
rm -rf /d/D/P/SlicerCustomAppTemplate
rm -rf /d/D/P/SC-0-build


cd /d/D/P

cookiecutter gh:KitwareMedical/SlicerCustomAppTemplate --no-input

cp /d/D/CustomAppScripts/CTestConfig.cmake /d/D/P/SlicerCustomAppTemplate/CTestConfig.cmake

ctest -S /d/D/CustomAppScripts/sam-vs2017-slicercat_preview_nightly.cmake -C RelWithDebInfo -VV -O /d/D/Logs/sam-vs2017-slicercat_preview_nightly.txt 