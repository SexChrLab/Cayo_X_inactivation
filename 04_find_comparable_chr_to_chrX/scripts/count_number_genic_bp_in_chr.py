# This script counts the number of base pairs that are in the coding regions on each chromosome in macaque

from collections import defaultdict
chr_nbasepair = defaultdict()

for chr in range(1, 21):
    chr_name = 'chr' + str(chr)
    chr_nbasepair[chr_name] = 0

chr_nbasepair['chrX'] = 0

with open('/scratch/tphung3/Cayo_x_inactivation/04_find_comparable_chr_to_chrX/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.bed', 'r') as f:
    for line in f:
        items = line.rstrip('\n').split('\t')
        if items[0] in chr_nbasepair:
            chr_nbasepair[items[0]] += (int(items[2]) - int(items[1]))

for k, v in sorted(chr_nbasepair.items(), key=lambda item: item[1]):
    print (k, v)