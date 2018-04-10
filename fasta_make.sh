#!/bin/bash
#SBATCH -c 4
#SBATCH --time=1-10:00:00
#SBATCH --job-name=fasta-make
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=fasta-make.err

module load python/3.6.3

gunzip ./*/*.fastq.gz

for i in ./*/*.fastq
do
        python ./ModifySRAtoILLUMINA.py $i $i.fasta
done

rm ./*/*.fastq

for nam in ./*/*.fastq.fasta
do
    newname=${nam%.fastq.fasta}
    mv $nam $newname.fasta
done
