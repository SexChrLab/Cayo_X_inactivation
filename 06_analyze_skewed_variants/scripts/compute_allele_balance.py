import sys

outfile = open(sys.argv[2], 'w')

with open(sys.argv[1], 'r') as f:
    for line in f:
        items = line.rstrip('\n').split('\t')
        ref_ratio = float(items[10])/float(items[12])
        alt_ratio = float(items[11])/float(items[12])
        if ref_ratio > alt_ratio:
            items.append(str(ref_ratio))
        else:
            items.append(str(alt_ratio))
        print ('\t'.join(items), file=outfile)