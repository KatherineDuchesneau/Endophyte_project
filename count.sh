#!/bin/bash

for i in ./*/
do
        echo $i >> counts.txt
        ls $i*fastq* | wc -l >> counts.txt
        echo -e '\n' >> counts.txt
done
