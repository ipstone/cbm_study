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
# open hugo/public/index.html # On mac, launch browser to check
echo "You can use the following to upload::"
echo "    rsync -avz hugo/public/ a1:www/cbmministry/wed_study/ "
echo "---------------------------------------------------------"

# Confirm whether to perform sync now
read -p "Woulc you like to run the above rsync now (y/n)? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rsync -avz hugo/public/ a1:www/cbmministry/wed_study/
fi
# DONE!
