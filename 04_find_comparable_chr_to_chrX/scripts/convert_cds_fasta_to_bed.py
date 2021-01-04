# In this script, we are converting cds fasta file to bed file format so that we can use bedtools intersect to extract
# out the variants that are in coding regions only

outfile = open('/scratch/tphung3/Cayo_x_inactivation/04_find_comparable_chr_to_chrX/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.bed', 'w')
with open('/scratch/tphung3/Cayo_x_inactivation/04_find_comparable_chr_to_chrX/Macaca_mulatta.Mmul_8.0.1.cds.all.fa', 'r') as f:
    for line in f:
        if line.startswith('>'):
            chr_position_str = line.rstrip('\n').split(' ')[2].split(':')
            chromosome = 'chr' + chr_position_str[2]
            start = chr_position_str[3]
            end = str(int(chr_position_str[4]) + 1)
            out = [chromosome, start, end]
            print ('\t'.join(out), file=outfile)
