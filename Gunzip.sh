#!/bin/bash


# unzip every file ending in "fastq.gz" in each species folder

for i in ./*/*fastq.gz
do
       gunzip $i
done
