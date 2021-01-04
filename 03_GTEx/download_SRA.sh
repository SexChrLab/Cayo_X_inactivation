#!/bin/bash
#SBATCH --job-name=download_SRA  # Job name
#SBATCH --mail-type=END,FAIL           # notifications for job done & fail
#SBATCH --mail-user=tphung3@asu.edu # send-to address
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 96:00:00

for srr in SRR8218771 SRR8219626 SRR8220165 SRR8222774 SRR8225648 SRR8226801; do
  /home/tphung3/softwares/sratoolkit.2.9.6-1-ubuntu64/bin/prefetch.2.9.3 $srr
  PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ /home/tphung3/softwares/sratoolkit.2.9.6-1-ubuntu64/bin/fastq-dump.2.9.6 $srr

done
