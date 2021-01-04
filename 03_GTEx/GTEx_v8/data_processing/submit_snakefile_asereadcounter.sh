#!/bin/bash
#SBATCH --job-name=asereadcounter  # Job name
#SBATCH --mail-type=END,FAIL           # notifications for job done & fail
#SBATCH --mail-user=tphung3@asu.edu # send-to address
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 48:00:00

# snakemake --snakefile asereadcounter.snakefile -j 42 --use-conda --cluster-config /scratch/tphung3/Cayo_x_inactivation/cluster.json --cluster "sbatch -n {cluster.n} --nodes 1 -t 24:00:00 " --latency-wait 60

snakemake --snakefile asereadcounter.snakefile -j 147 --cluster-config /scratch/tphung3/Cayo_x_inactivation/cluster.json --cluster "sbatch -n {cluster.n} --nodes 1 -t 24:00:00 --mem=60000" --latency-wait 60
