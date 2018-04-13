#!/bin/bash
#SBATCH -c 4
#SBATCH --time=1-10:00:00
#SBATCH --job-name=SRA_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=SRA_2.err

# load sra-toolkit which allows the designated reads to be downloaded from the SRA database
module load sra-toolkit

# Make directories for each species identified using our keywords in the SRA database
# Enter the specified directory to download fastq files from the SRA database associated with that species using fastq-dump
mkdir Chladophora
cd /global/home/sa104007/EndophytePRJ/Chladophora
fastq-dump --gzip --split-files --accession SRR4734837

# use a for loop to download fastq files for samples in the SRA database that have consecutive SRR IDs
mkdir ../Brassica_napus
cd ../Brassica_napus
for ((i = 51; i<= 98; i++)); do fastq-dump --gzip --split-files --accession SRR54397$i; done

mkdir ../Brassica_oleracea
cd ../Brassica_oleracea
for ((i = 24; i<= 47; i++)); do fastq-dump --gzip --split-files --accession SRR51859$i; done

mkdir ../Populus
cd ../Populus
for ((i = 756; i<= 805; i++)); do fastq-dump --gzip --split-files --accession ERR688$i; done

mkdir ../Cratoneuron
cd ../Cratoneuron
fastq-dump --gzip --split-files --accession SRR4734815

mkdir ../Pylaisiella
cd ../Pylaisiella
fastq-dump --gzip --split-files --accession SRR4708713

mkdir ../Bryum
cd ../Bryum
fastq-dump --gzip --split-files --accession SRR4706101

mkdir ../Grimmia
cd ../Grimmia
fastq-dump --gzip --split-files --accession SRR4453815

mkdir ../Aloe
cd ../Aloe
fastq-dump --gzip --split-files --accession SRR2204709	
fastq-dump --gzip --split-files --accession SRR2204707
fastq-dump --gzip --split-files --accession SRR2204344	
fastq-dump --gzip --split-files --accession SRR2204159

mkdir ../Zea
cd ../Zea
fastq-dump --gzip --split-files --accession SRR5052006
fastq-dump --gzip --split-files --accession SRR5052004
fastq-dump --gzip --split-files --accession SRR5052003		
fastq-dump --gzip --split-files --accession SRR5052001
fastq-dump --gzip --split-files --accession SRR5052000
fastq-dump --gzip --split-files --accession SRR5051999
fastq-dump --gzip --split-files --accession SRR5051568		
fastq-dump --gzip --split-files --accession SRR5051567
fastq-dump --gzip --split-files --accession SRR5051415
fastq-dump --gzip --split-files --accession SRR5051407
fastq-dump --gzip --split-files --accession SRR5051401		
fastq-dump --gzip --split-files --accession SRR5051400

mkdir ../Oryza
cd ../Oryza
fastq-dump --gzip --split-files --accession SRR5211361
fastq-dump --gzip --split-files --accession SRR5211360

mkdir ../Paeonia_suffruticosa
cd ../Paeonia_suffruticosa
fastq-dump --gzip --split-files --accession SRR4289224	
fastq-dump --gzip --split-files --accession SRR4289222
fastq-dump --gzip --split-files --accession SRR4289220	
fastq-dump --gzip --split-files --accession SRR4289218
fastq-dump --gzip --split-files --accession SRR4289217
fastq-dump --gzip --split-files --accession SRR4289215
fastq-dump --gzip --split-files --accession SRR4267992	
fastq-dump --gzip --split-files --accession SRR4267988
fastq-dump --gzip --split-files --accession SRR4267987
fastq-dump --gzip --split-files --accession SRR4267985
fastq-dump --gzip --split-files --accession SRR4265353	
fastq-dump --gzip --split-files --accession SRR4265352

mkdir ../Paeonia_rockii
cd ../Paeonia_rockii
fastq-dump --gzip --split-files --accession SRR4289219
fastq-dump --gzip --split-files --accession SRR4289223
fastq-dump --gzip --split-files --accession SRR4267986	
fastq-dump --gzip --split-files --accession SRR4263477

mkdir ../Pinus
cd ../Pinus
fastq-dump --gzip --split-files --accession SRR3742197
fastq-dump --gzip --split-files --accession SRR3742194
fastq-dump --gzip --split-files --accession SRR3742193
fastq-dump --gzip --split-files --accession SRR3742191
fastq-dump --gzip --split-files --accession SRR3742190
fastq-dump --gzip --split-files --accession SRR3742184
fastq-dump --gzip --split-files --accession SRR3742182
fastq-dump --gzip --split-files --accession SRR3742180
fastq-dump --gzip --split-files --accession SRR3742179
fastq-dump --gzip --split-files --accession SRR3742177
fastq-dump --gzip --split-files --accession SRR3742176
fastq-dump --gzip --split-files --accession SRR3742138

mkdir ../Orchid
cd ../Orchid
fastq-dump --gzip --split-files --accession SRR3747548
fastq-dump --gzip --split-files --accession SRR3747548

mkdir ../Pinus_flexilis
cd ../Pinus_flexilis
fastq-dump --gzip --split-files --accession SRR3073559
fastq-dump --gzip --split-files --accession SRR3073558
fastq-dump --gzip --split-files --accession SRR3073557
fastq-dump --gzip --split-files --accession SRR3073556
fastq-dump --gzip --split-files --accession SRR3073555
fastq-dump --gzip --split-files --accession SRR3073554
fastq-dump --gzip --split-files --accession SRR3073553

mkdir ../Solanum
cd ../Solanum
fastq-dump --gzip --split-files --accession ERR632221
fastq-dump --gzip --split-files --accession ERR632220
fastq-dump --gzip --split-files --accession ERR632219
fastq-dump --gzip --split-files --accession ERR632218
fastq-dump --gzip --split-files --accession ERR632209
fastq-dump --gzip --split-files --accession ERR632208
fastq-dump --gzip --split-files --accession ERR632207
fastq-dump --gzip --split-files --accession ERR631092
fastq-dump --gzip --split-files --accession ERR592858

mkdir ../Espeletia
cd ../Espeletia
fastq-dump --gzip --split-files --accession SRR2087835
fastq-dump --gzip --split-files --accession SRR2087834
fastq-dump --gzip --split-files --accession SRR2087833
fastq-dump --gzip --split-files --accession SRR2087832
fastq-dump --gzip --split-files --accession SRR2087831
fastq-dump --gzip --split-files --accession SRR2087830

mkdir ../Vitis
cd ../Vitis  
fastq-dump --gzip --split-files --accession SRR4010872
fastq-dump --gzip --split-files --accession SRR4010871
fastq-dump --gzip --split-files --accession SRR2064975
fastq-dump --gzip --split-files --accession SRR2064974

mkdir ../Santiria
cd ../Santiria
for ((i = 51; i<= 59; i++)); do fastq-dump --gzip --split-files --accession ERR17451$i; done

mkdir ../Microdesmis
cd ../Microdesmis
for ((i = 63; i<= 71; i++)); do fastq-dump --gzip --split-files --accession ERR17451$i; done

mkdir ../Rothmannia
cd ../Rothmannia
for ((i = 75; i<= 83; i++)); do fastq-dump --gzip --split-files --accession ERR17451$i; done

# remove reverse reads
rm */*_2.fastq.gz
