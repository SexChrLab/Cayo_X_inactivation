# WHAT: This script filters results from GATK ASEReadCounter to contain sites that are found in another VCF file

# import sys
from collections import defaultdict

# Store positions to keep from the VCF file
variants_to_keep = defaultdict(list) #This is a dictionary where key is chromosome name and value is a list where
# each item in the list is the position to keep
with open(snakemake.input['vcf'], 'r') as f:
    for line in f:
        if not line.startswith('#'):
            items = line.rstrip("\n").split("\t")
            variants_to_keep[items[0]].append(items[1])

# Filter results from GATK ASEReadCounter to contain only the sites in the VCF file
outfile = open(snakemake.output[0], 'w')
with open(snakemake.input['asereadcounter'], 'r') as f:
    for line in f:
        if line.startswith('contig'):
            items = line.rstrip('\n').split('\t')
            print ('\t'.join(items), file=outfile)
        else:
            items = line.rstrip('\n').split('\t')
            if items[1] in variants_to_keep[items[0]]:
                print('\t'.join(items), file=outfile)