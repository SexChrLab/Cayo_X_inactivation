import argparse

parser = argparse.ArgumentParser(description='Remove duplicated positions')
parser.add_argument('--infile',required=True,help='Input the path to the infile')
parser.add_argument('--outfile',required=True,help='Input the path to the output file.')

args = parser.parse_args()

positions = set()

outfile = open(args.outfile, 'w')

with open(args.infile, 'r') as f:
    for line in f:
        items = line.rstrip('\n').split('\t')
        if items[1] not in positions:
            print ('\t'.join(items), file=outfile)
        positions.add(items[1])