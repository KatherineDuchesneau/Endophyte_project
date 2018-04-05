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
fastq-dump --split-files --accession SRR4734815

cd ../Pylaisiella
fastq-dump --split-files --accession SRR4708713

cd ../Bryum
fastq-dump --split-files --accession SRR4706101

cd ../Grimmia
fastq-dump --split-files --accession SRR4453815

cd ../Aloe
fastq-dump --split-files --accession SRR2204709	
fastq-dump --split-files --accession SRR2204707
fastq-dump --split-files --accession SRR2204344	
fastq-dump --split-files --accession SRR2204159

cd ../Zea
fastq-dump --split-files --accession SRR5052006
fastq-dump --split-files --accession SRR5052004
fastq-dump --split-files --accession SRR5052003		
fastq-dump --split-files --accession SRR5052001
fastq-dump --split-files --accession SRR5052000
fastq-dump --split-files --accession SRR5051999
fastq-dump --split-files --accession SRR5051568		
fastq-dump --split-files --accession SRR5051567
fastq-dump --split-files --accession SRR5051415
fastq-dump --split-files --accession SRR5051407
fastq-dump --split-files --accession SRR5051401		
fastq-dump --split-files --accession SRR5051400

cd ../Oryza
fastq-dump --split-files --accession SRR5211361
fastq-dump --split-files --accession SRR5211360

cd ../Paeonia_suffruticosa
fastq-dump --split-files --accession SRR4289224	
fastq-dump --split-files --accession SRR4289222
fastq-dump --split-files --accession SRR4289220	
fastq-dump --split-files --accession SRR4289218
fastq-dump --split-files --accession SRR4289217
fastq-dump --split-files --accession SRR4289215
fastq-dump --split-files --accession SRR4267992	
fastq-dump --split-files --accession SRR4267988
fastq-dump --split-files --accession SRR4267987
fastq-dump --split-files --accession SRR4267985
fastq-dump --split-files --accession SRR4265353	
fastq-dump --split-files --accession SRR4265352

cd ../Paeonia_rockii
fastq-dump --split-files --accession SRR4289219
fastq-dump --split-files --accession SRR4289223
fastq-dump --split-files --accession SRR4267986	
fastq-dump --split-files --accession SRR4263477

cd ../Pinus
fastq-dump --split-files --accession SRR3742197
fastq-dump --split-files --accession SRR3742194
fastq-dump --split-files --accession SRR3742193
fastq-dump --split-files --accession SRR3742191
fastq-dump --split-files --accession SRR3742190
fastq-dump --split-files --accession SRR3742184
fastq-dump --split-files --accession SRR3742182
fastq-dump --split-files --accession SRR3742180
fastq-dump --split-files --accession SRR3742179
fastq-dump --split-files --accession SRR3742177
fastq-dump --split-files --accession SRR3742176
fastq-dump --split-files --accession SRR3742138

cd ../Orchid
fastq-dump --split-files --accession SRR3747548

cd ../Pinus_flexilis
fastq-dump --split-files --accession SRR3073559
fastq-dump --split-files --accession SRR3073558
fastq-dump --split-files --accession SRR3073557
fastq-dump --split-files --accession SRR3073556
fastq-dump --split-files --accession SRR3073555
fastq-dump --split-files --accession SRR3073554
fastq-dump --split-files --accession SRR3073553

cd ../Solanum
fastq-dump --split-files --accession ERR632221
fastq-dump --split-files --accession ERR632220
fastq-dump --split-files --accession ERR632219
fastq-dump --split-files --accession ERR632218
fastq-dump --split-files --accession ERR632209
fastq-dump --split-files --accession ERR632208
fastq-dump --split-files --accession ERR632207
fastq-dump --split-files --accession ERR631092
fastq-dump --split-files --accession ERR592858

cd ../Espeletia
fastq-dump --split-files --accession SRR2087835
fastq-dump --split-files --accession SRR2087834
fastq-dump --split-files --accession SRR2087833
fastq-dump --split-files --accession SRR2087832
fastq-dump --split-files --accession SRR2087831
fastq-dump --split-files --accession SRR2087830

cd ../Brassica_napus
for ((i = 51; i<= 98; i++)); do fastq-dump --split-files --accession SRR54397$i; done

cd ../Brassica_oleracea
for ((i = 24; i<= 47; i++)); do fastq-dump --split-files --accession SRR51859$i; done

cd ../Populus
for ((i = 756; i<= 805; i++)); do fastq-dump --split-files --accession ERR688$i; done

cd ../Vitis  
fastq-dump --split-files--accession SRR4010872
fastq-dump --split-files --accession SRR4010871
fastq-dump --split-files --accession SRR2064975
fastq-dump --split-files --accession SRR2064974

cd ../Santiria
for ((i = 51; i<= 59; i++)); do fastq-dump --split-files --accession ERR17451$i; done

cd ../Microdesmis
for ((i = 63; i<= 71; i++)); do fastq-dump --split-files --accession ERR17451$i; done

cd ../Rothmannia
for ((i = 75; i<= 83; i++)); do fastq-dump --split-files --accession ERR17451$i; done
