#!/bin/bash

# Download the youtube audio from the given url at command line
# - The setting needs further tweaking - ideally just mp3 files and lower bits?
# - Is there a way to start the audio at certain time point automatically?
youtube-dl --add-metadata -ic -x -f bestaudio/best "$1"
# youtube-dl --extract-audio --audio-format mp3 "$1"
# youtube-dl -f bestaudio[ext=m4a] --embed-thumbnail --add-metadata "$1"