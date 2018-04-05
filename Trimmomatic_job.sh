#!/bin/bash
#SBATCH -c 12
#SBATCH --time=1-10:00:00
#SBATCH --job-name=SRA_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=SRA_2.err

module load trimmomatic

java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 input.fq.gz output.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
