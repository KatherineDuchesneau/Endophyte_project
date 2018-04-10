#!/bin/bash
#SBATCH -c 12
#SBATCH --time=1-10:00:00
#SBATCH --job-name=Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=Trimmomatic_3.err

module load trimmomatic

for file in ./Zea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Vitis/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done
