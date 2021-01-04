# --------------------------------------------------------------------------------------------
# In this script, rows where the ref allele that is the same as the alt allele will be removed
# --------------------------------------------------------------------------------------------

outfile = open(snakemake.output[0], 'w')
with open(snakemake.input[0], 'r') as f:
    for line in f:
        if line.startswith('contig'):
            print (line.rstrip('\n'), file=outfile)
        else:
            items = line.rstrip('\n').split('\t')
            if items[3] != items[4]:
                print (line.rstrip('\n'), file=outfile)



