#!/bin/bash
echo 'Please have hugo installed: https://gohugo.io/'
#cp docs/README.md hugo/content/index.md

# Clean the public folder before rebuild - not sure why needed but issues on some machine
rm -rf  hugo/public/*

# Generating the hugo site
cd hugo
hugo

# Uploading generated site to 
cd ../
open hugo/public/index.html # On mac, launch browser to check
echo "Please use the following command to upload:"
echo "    rsync -avz hugo/public/ a1:1www/cbmministry/wed_study/ to upload to server."
