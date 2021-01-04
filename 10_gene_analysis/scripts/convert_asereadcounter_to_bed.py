# In this script, I want to convert the asereadcounter results to bed file for intersecting with the gene coordinates bed file in order to know which genes these variants are falling into
# Example input file: /scratch/tphung3/PlacentaSexDiff/GTEx/08_troubleshoot_placenta_cayo/asereadcounter/HISAT/minDepth10/chrX/cayo/GTEX-12WSD-0002_GTEX-12WSD-2726_chrX_rmSameRefAlt.tsv

import sys

file_path = sys.argv[1]
outfile = open(sys.argv[2], 'w')

with open(file_path, 'r') as f:
    for line in f:
        if not line.startswith('contig'):
            items = line.rstrip('\n').split('\t')
            end = int(items[1]) + 1
            out = [items[0], items[1], str(end), items[5], items[6], items[7]]
            print ('\t'.join(out), file=outfile)
