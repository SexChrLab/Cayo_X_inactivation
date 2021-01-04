#!/bin/bash
#SBATCH --job-name=gtex  # Job name
#SBATCH --mail-type=END,FAIL           # notifications for job done & fail
#SBATCH --mail-user=tphung3@asu.edu # send-to address
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 48:00:00
# snakemake --snakefile strip_reads.snakefile -j 49 --use-conda --cluster-config /scratch/tphung3/Cayo_x_inactivation/cluster.json --cluster "sbatch -n {cluster.n} --nodes 1 -t 24:00:00 " --latency-wait 60 --rerun-incomplete

# snakemake --snakefile process_dna.snakefile -j 14 --use-conda --cluster-config /scratch/tphung3/Cayo_x_inactivation/cluster.json --cluster "sbatch -n {cluster.n} --nodes 1 -t 24:00:00 " --latency-wait 60

snakemake --snakefile process_dna.snakefile -j 14 --cluster-config /scratch/tphung3/Cayo_x_inactivation/cluster.json --cluster "sbatch -n {cluster.n} --nodes 1 -t 24:00:00 " --latency-wait 60
