#!/bin/bash
#SBATCH -c 4
#SBATCH --time=1-10:00:00
#SBATCH --job-name=Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=Trimmomatic_error.err

module load trimmomatic

for file in ./Zea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Vitis/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Solanum/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Santiria/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Rothmannia/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Pylaisiella/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Populus/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Pinus_flexilis/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Pinus/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Paeonia_suffruticosa/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Paeonia_rockii/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Oryza/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Orchid/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Microdesmis/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Grimmia/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Espeletia/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Cratoneuron/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Chladophora/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Bryum/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_napus/*.fastq.gz; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done
