#!/bin/bash

## Needs 2 inputs: file_name ($1), starting_time ($2), 
#  - the starting_time is inthe format of HH:MM:SS
## the cut audio file is copied to the folder '../'
ffmpeg -ss "$2" -i "$1" -c copy ../static/audio/"$1"

# An useful thread/reference can be found here: https://github.com/rg3/youtube-dl/issues/622