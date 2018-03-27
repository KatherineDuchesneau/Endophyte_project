#!/bin/bash
#SBATCH -c 12
#SBATCH --time=1-10:00:00
#SBATCH --job-name=SRA_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=SRA_2.err

module load sra-toolkit

cd /global/home/sa104007/EndophytePRJ/Chladophora
fastq-dump --accession SRR4734837

cd ../Cratoneuron
fastq-dump --accession SRR4734815

cd ../Pylaisiella
fastq-dump --accession SRR4708713

cd ../Bryum
fastq-dump --accession SRR4706101

cd ../Grimmia
fastq-dump --accession SRR4453815

cd ../Aloe
fastq-dump --accession SRR2204709	
fastq-dump --accession SRR2204707
fastq-dump --accession SRR2204344	
fastq-dump --accession SRR2204159

cd ../Zea
fastq-dump --accession SRR5052006
fastq-dump --accession SRR5052004
fastq-dump --accession SRR5052003		
fastq-dump --accession SRR5052001
fastq-dump --accession SRR5052000
fastq-dump --accession SRR5051999
fastq-dump --accession SRR5051568		
fastq-dump --accession SRR5051567
fastq-dump --accession SRR5051415
fastq-dump --accession SRR5051407
fastq-dump --accession SRR5051401		
fastq-dump --accession SRR5051400

cd ../Oryza
fastq-dump --accession SRR5211361
fastq-dump --accession SRR5211360

cd ../Paeonia_suffruticosa
fastq-dump --accession SRR4289224	
fastq-dump --accession SRR4289222
fastq-dump --accession SRR4289220	
fastq-dump --accession SRR4289218
fastq-dump --accession SRR4289217
fastq-dump --accession SRR4289215
fastq-dump --accession SRR4267992	
fastq-dump --accession SRR4267988
fastq-dump --accession SRR4267987
fastq-dump --accession SRR4267985
fastq-dump --accession SRR4265353	
fastq-dump --accession SRR4265352

cd ../Paeonia_rockii
fastq-dump --accession SRR4289219
fastq-dump --accession SRR4289223
fastq-dump --accession SRR4267986	
fastq-dump --accession SRR4263477

cd ../Pinus
fastq-dump --accession SRR3742197
fastq-dump --accession SRR3742194
fastq-dump --accession SRR3742193
fastq-dump --accession SRR3742191
fastq-dump --accession SRR3742190
fastq-dump --accession SRR3742184
fastq-dump --accession SRR3742182
fastq-dump --accession SRR3742180
fastq-dump --accession SRR3742179
fastq-dump --accession SRR3742177
fastq-dump --accession SRR3742176
fastq-dump --accession SRR3742138

cd ../Orchid
fastq-dump --accession SRR3747548

cd ../Pinus_flexilis
fastq-dump --accession SRR3073559
fastq-dump --accession SRR3073558
fastq-dump --accession SRR3073557
fastq-dump --accession SRR3073556
fastq-dump --accession SRR3073555
fastq-dump --accession SRR3073554
fastq-dump --accession SRR3073553

cd ../Solanum
fastq-dump --accession ERR632221
fastq-dump --accession ERR632220
fastq-dump --accession ERR632219
fastq-dump --accession ERR632218
fastq-dump --accession ERR632209
fastq-dump --accession ERR632208
fastq-dump --accession ERR632207
fastq-dump --accession ERR631092
fastq-dump --accession ERR592858

cd ../Espeletia
fastq-dump --accession SRR2087835
fastq-dump --accession SRR2087834
fastq-dump --accession SRR2087833
fastq-dump --accession SRR2087832
fastq-dump --accession SRR2087831
fastq-dump --accession SRR2087830

cd ../Brassica_napus
for ((i = 51; i<= 98; i++)); do fastq-dump --accession SRR54397$i; done

cd ../Brassica_oleracea
for ((i = 24; i<= 47; i++)); do fastq-dump --accession SRR51859$i; done

cd ../Populus
for ((i = 756; i<= 805; i++)); do fastq-dump --accession ERR688$i; done
