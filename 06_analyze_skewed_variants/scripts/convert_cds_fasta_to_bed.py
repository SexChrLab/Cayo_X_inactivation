# In this script, we are converting cds fasta file to bed file format so that we can use bedtools intersect to extract
# out the variants that are in coding regions only
# The bed file has the following format: chr, start, end, transcript_name, gene_name

outfile = open('/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/data/Macaca_mulatta.Mmul_8.0.1.cds.all.bed', 'w')
with open('/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/data/Macaca_mulatta.Mmul_8.0.1.cds.all.fa', 'r') as f:
    for line in f:
        if line.startswith('>'):
            if 'gene_symbol' in line:
                items = line.rstrip('\n').split(' ')
                chr_position_str = items[2].split(':')
                chromosome = 'chr' + chr_position_str[2]
                start = chr_position_str[3]
                end = str(int(chr_position_str[4]) + 1)
                transcript_name = items[3].split(':')[1]
                gene_name = items[6].split(':')[1]
                out = [chromosome, start, end, transcript_name, gene_name]
                print ('\t'.join(out), file=outfile)
            else:
                items = line.rstrip('\n').split(' ')
                chr_position_str = items[2].split(':')
                chromosome = 'chr' + chr_position_str[2]
                start = chr_position_str[3]
                end = str(int(chr_position_str[4]) + 1)
                transcript_name = items[3].split(':')[1]
                out = [chromosome, start, end, transcript_name, 'NA']
                print ('\t'.join(out), file=outfile)
