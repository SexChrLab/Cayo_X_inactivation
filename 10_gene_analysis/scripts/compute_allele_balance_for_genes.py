# In this script, I will be computing allele balance for each gene

from collections import defaultdict
import sys
genes_variants_refcount_dict = defaultdict(list)
genes_variants_altcount_dict = defaultdict(list)
genes_variants_totalcount_dict = defaultdict(list)

input_file_path = sys.argv[1]
output_file_path = sys.argv[2]

outfile = open(output_file_path, 'w')

with open(input_file_path, 'r') as f:
    for line in f:
        items = line.rstrip('\n').split('\t')
        genes_variants_refcount_dict[items[3]].append(float(items[7]))
        genes_variants_altcount_dict[items[3]].append(float(items[8]))
        genes_variants_totalcount_dict[items[3]].append(float(items[9]))

for gene in genes_variants_refcount_dict:
    total_refcount = 0
    total_altcount = 0
    total_totalcount = 0
    for i in genes_variants_refcount_dict[gene]:
        total_refcount += i
    for i in genes_variants_altcount_dict[gene]:
        total_altcount += i
    for i in genes_variants_totalcount_dict[gene]:
        total_totalcount += i

    ref_ratio = total_refcount/total_totalcount
    alt_ratio = total_altcount/total_totalcount
    if ref_ratio > alt_ratio:
        out = [gene, str(ref_ratio)]
        print ('\t'.join(out), file=outfile)
    else:
        out = [gene, str(alt_ratio)]
        print ('\t'.join(out), file=outfile)

