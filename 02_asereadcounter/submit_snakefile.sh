#!/bin/bash
#SBATCH --job-name=cayo_xci  # Job name
#SBATCH --mail-type=END,FAIL           # notifications for job done & fail
#SBATCH --mail-user=tphung3@asu.edu # send-to address
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 10:00:00
# conda activate cayo_xci
snakemake --snakefile post_asereadcounter_processing.snakefile -j 19 --cluster "sbatch --mem=24000 -c 4 -t 24:00:00"
