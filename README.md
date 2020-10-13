
To clone this repo, please do the following:
    `git clone --recurse-submodules git@github.com:ipstone/cbm_study.git`

Note: the bootstrap hugo theme will be cloned as the submodules.

* For slides translation:
    - Obtain the content of the slides in
        (orgmode)[https://orgmode.org/org.html] file (each item headline
        start with '* ', the rest is the content of that slides)
        orgmode is an text based outliner format:
            https://orgmode.org/org.html
        

    - Using google translate, documents translate function to translate the 
        input slides orgmode file into traditional chinese; save the output
        into a file such as chinese.txt 
    
    - python lib/match_slides_translate.py english.txt chinese.txt 
      to generate the interlaced English/Chinese per outline item.
        we can save the output into a file such as 
            python .. ... ... > output.txt

    - the output interlaced orgmode file can be copy/paste into google docs
        for collobrative fixing the translation etc.
        (for people using orgmode, it can be nicely output to html before copy
        and pasting into google docs, which will have better formats.
