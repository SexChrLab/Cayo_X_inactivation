# In this script, we are converting the results from the phased chrX data to bed file format
import argparse

parser = argparse.ArgumentParser(description='Convert phased chrX data to bed file format.')
parser.add_argument('--phased_chrX_data',required=True,help='Input the path to the phased chrX data.')
parser.add_argument('--outfile',required=True,help='Input the path to the output file for phased chrX data in bed file format')

args = parser.parse_args()

outfile = open(args.outfile, 'w')
with open(args.phased_chrX_data, 'r') as f:
    for line in f:
        items = line.rstrip('\n').split('\t')
        position = int(items[0])
        out = ['chrX', str(position), str(position+1), items[1], items[2], items[3]]
        print ('\t'.join(out), file=outfile)