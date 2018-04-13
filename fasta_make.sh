#!/bin/bash
#SBATCH -c 4
#SBATCH --time=1-10:00:00
#SBATCH --job-name=fasta-make
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=fasta-make.err

module load python/3.6.3

# unzip all zipped fastq files in each of the species directories
gunzip ./*/*.fastq.gz

# employ regex script ("ModifySRAtoILLUMINA") on all fastq files in each species directory to convert them to fasta format (with extensions ".fastq.fasta")
for i in ./*/*.fastq
do
        python ./ModifySRAtoILLUMINA.py $i $i.fasta
done

# delete the original ".fastq" files
rm ./*/*.fastq

# for each of the new files, remove file extension ".fastq.fasta" and add file extension ".fasta"
for nam in ./*/*.fastq.fasta
do
    newname=${nam%.fastq.fasta}
    mv $nam $newname.fasta
done
