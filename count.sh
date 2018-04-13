#!/bin/bash


# use a for loop to count the number of files in each species directory
for i in ./*/
do
        echo $i >> counts.txt
        ls $i*fastq* | wc -l >> counts.txt
        echo -e '\n' >> counts.txt
done
