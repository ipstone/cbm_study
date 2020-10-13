#!/usr/bin/env python
# Translate the slides from orgmode to each item English/Chinese format
helpText = """
if the argument given is -h , then print out this help text.

Need two input files: 
    English, and translated Chinese txt from google translation:
        Going through each file, generating a text dictionary
        for each outline items:
        Then print out the English item and the chinese item by the item order.

    such as [program] english_input.txt chinese_input.txt

"""

import sys

if sys.argv[1] == "-h":
    print(helpText)
    exit

en_file = sys.argv[1]
cn_file = sys.argv[2]

def get_file_items(en_file):
# Start to process the translated content
    en_dict =[]
    with open(en_file) as f:
        trunk=""
        headline=""
        for l in f:
            if l.startswith("*") and trunk=="":
                trunk = l
            elif l.startswith("*"):
                # meeting the next outline item 
                en_dict.append(trunk)
                trunk = l
            else:
                trunk += l
        en_dict.append(trunk)
    return(en_dict)

# Calling the get_file_items
en_dict = get_file_items(en_file)
cn_dict = get_file_items(cn_file)

for i in range(len(en_dict)):
    print(en_dict[i])
    print(cn_dict[i])

