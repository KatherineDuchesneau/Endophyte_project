#!/bin/bash
#SBATCH -c 6
#SBATCH --time=1-10:00:00
#SBATCH --mem=24576
#SBATCH --job-name=OTU_table
#SBATCH --mail-type=ALL
#SBATCH --mail-user=h_driver23@hotmail.com
#SBATCH --error=OTU_table.err

module load anaconda
source activate py27
module load qiime

echo "pick_otus:enable_rev_strand_match True"  >> $PWD/otu_picking_params_97.txt
echo "pick_otus:similarity 0.97" >> $PWD/otu_picking_params_97.txt
pick_closed_reference_otus.py -i $PWD/Complete_collection.fasta -o $PWD/ucrC97/ -p $PWD/otu_picking_params_97.txt -r $PWD/gg_13_5_otus/rep_set/97_otus.fasta -t $PWD/gg_13_5_otus/taxonomy/97_otu_taxonomy.txt -a -O 6
rm $PWD/otu_picking_params_97.txt
