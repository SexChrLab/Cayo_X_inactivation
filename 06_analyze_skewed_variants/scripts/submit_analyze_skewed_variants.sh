#!/bin/bash
#SBATCH --job-name=cayo_xci  # Job name
#SBATCH --mail-type=END,FAIL           # notifications for job done & fail
#SBATCH --mail-user=tphung3@asu.edu # send-to address
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 2:00:00
snakemake --snakefile analyze_skewed_variants.snakefile -j 21 --cluster "sbatch --mem=24000 -c 4 -t 2:00:00"
