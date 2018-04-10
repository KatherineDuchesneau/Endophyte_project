#!/bin/bash
#SBATCH -c 4
#SBATCH --time=1-10:00:00
#SBATCH --job-name=standardize_fasta_format
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=standardize_fasta_format.err

module load python/3.6.3

gunzip ./*/*.fastq.gz

for i in ./*/*.fastq
do
        BASENAME="$i - .fastq"
        python ../ModifySRAtoILLUMINA.py $i $BASENAME.fasta
done
