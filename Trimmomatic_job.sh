#!/bin/bash
#SBATCH -c 12
#SBATCH --time=1-10:00:00
#SBATCH --job-name=SRA_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=SRA_2.err

module load trimmomatic

cd /Chladophora
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Brassica_napus
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Brassica_oleracea
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Populus
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Cratoneuron
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Pylaisiella
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Bryum
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Grimmia
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Aloe
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Zea
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Oryza
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Paeonia_suffruticosa
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Paeonia_rockii
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Pinus
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Orchid
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Pinus_flexilis
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Solanum
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Espeletia
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Vitis  
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Santiria
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Microdesmis
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

cd ../Rothmannia
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.36.jar SE -phred33 *.fq.gz *.fq.gz ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
