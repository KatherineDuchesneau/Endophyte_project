#!/bin/bash

for i in ./*/*fastq
do
       gunzip $i
done
