#!/bin/bash
#SBATCH -c 8
#SBATCH --time=1-10:00:00
#SBATCH --job-name=Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=Trimmomatic_error.err

module load trimmomatic

for file in ./Zea/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Vitis/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Solanum/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Santiria/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Rothmannia/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Pylaisiella/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Populus/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Pinus_flexilis/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Pinus/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Paeonia_suffruticosa/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Paeonia_rockii/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Oryza/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Orchid/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Microdesmis/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Grimmia/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Espeletia/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Cratoneuron/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Chladophora/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Bryum/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_oleracea/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done

for file in ./Brassica_napus/*.fastq; do java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 ./$file ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36; done
