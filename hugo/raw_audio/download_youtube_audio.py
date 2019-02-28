#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Use this script youtube_url ; to output the extracted start time in
# the format of MM:SS - for the starting audio time

import sys
# import subprocess
import os

# use input youtube url to determine time
url = sys.argv[1]
time = int(url.strip().split("=")[-1])
min = int(time / 60)
sec = time % 60
time_string= "00:" + f"{min:02}:{sec:02}"

# download the youtube audio
os.system('youtube-dl --add-metadata -ic -x -f bestaudio/best --output "%(title)s.%(ext)s" ' + url)

# process downloaded audio with right start time
# As it's hard to get the downloaded file name from script, next step is manual
# TODO: figure out how to get download file name!
print("---------------------------------------")
print("Please rename the downloaded file, and run:")
print("    ./cut_mp3_start.sh file_name " + time_string)
print("          After cut_mp3_start.sh runs, processed audio file will be copied to static/audio .")
