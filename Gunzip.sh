#!/bin/bash

for i in ./*/*fastq.gz
do
       gunzip $i
done
