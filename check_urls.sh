#!/bin/bash
# Using linkcheck (https://github.com/filiph/linkcheck) to check site urls

echo "This is to check urls of CBM announcement page using linkcheck ."

if ! command -v linkcheck &>/dev/null; then
    echo "linkcheck not found: download at https://github.com/filiph/linkcheck"
    exit
else

    linkcheck http://www.cbmministry.org/wed_study/
fi
