#!/usr/bin/env python
import os
os.chdir("/global/home/sa104007/EndophytePRJ") 
# setting my working directory to facilitate pulling files in

import re
# importing the regex library

with open ("toy.fastq", 'r' ) as ifp: #WE NEED TO FIND A WAY TO RUN THROUGH ALL OUR SRA?
    with open("toynew.fasta", "w") as ofp: #and then write in file output.txt (call it ofp)
        for line in ifp: # each line (call it line)
            if re.search(r'^@',line): # if you find a line that starts with @
                ofp.write(re.sub(r'^@([A-Z,1-9]+)\.(\d+)\s.+\n', '@Inst:\\1:1:1:1:1:1 \\2:Y:1:1\n',line)) # select only the portion after the space until the end of line
            if re.search(r'^[A,T,G,C]+$',line): # if you find a line that starts with BP
                  ofp.write(re.sub(r'([A,T,G,C]+)', '\\1',line)) # select it (in case the definition is multiline... if there are mistakes they will be taken care of later)             )
            else:
                ofp.write('') # delete everything else
                
quit()
