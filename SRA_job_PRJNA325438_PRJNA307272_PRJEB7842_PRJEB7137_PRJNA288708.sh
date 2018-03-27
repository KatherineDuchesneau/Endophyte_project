#!/bin/bash
#SBATCH -c 12
#SBATCH --time=1-10:00:00
#SBATCH --job-name=SRA_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=SRA_2.err

cd /global/home/sa104007/EndophytePRJ/Orchid
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1901425

cd ../Pinus
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1510984
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1510983
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1510982
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1510981
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1510980
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1510979
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1508996


cd ../Solanum
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588989
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588988
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588987
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588986
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588977
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588976
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX588975
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX587862
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession ERX550857


cd ../Espeletia
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1081807
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1081806
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1081805
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1081804
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1081803
/global/home/sa104007/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0 --accession SRX1081802


cd ../Populus
for ((i = 32; i<= 55; i++)); do "/global/home/sa104006/SRA/sratoolkit.2.9.0-ubuntu64/bin/fastq-dump.2.9.0" --accession ERX633$i$; done
