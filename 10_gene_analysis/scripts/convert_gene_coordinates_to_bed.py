# In this script, I am converting the file that has the gene coordinates for genes that are inactivate, genes that escape XCI, and genes with variable escape to bed file
# The format of the bed file is: chr, start, end, gene name
outfile = open('c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/gene_analysis/genes_coordinates_inactive.bed', 'w')
with open('c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/gene_analysis/genes_coordinates_inactive.csv', 'r') as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        start_end = items[4].split('-')
        out = ['chrX', start_end[0], start_end[1], items[0]]
        print ('\t'.join(out), file=outfile)
