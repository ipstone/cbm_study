#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Use this script youtube_url ; to output the extracted start time in
# the format of MM:SS - for the starting audio time

import sys
url = sys.argv[1]
time = int(url.strip().split("=")[-1])

min = int(time / 60)
sec = time % 60
#print(min, sec)
print( f"{min:02}:{sec:02}" )
