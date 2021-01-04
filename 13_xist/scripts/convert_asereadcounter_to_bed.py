# In this script, we are converting the results from asereadcounter to bed file.
# The purpose is so that we can use this bed file to intersect with the xist bed file in order to find variants in the xist region

import argparse

parser = argparse.ArgumentParser(description='Convert asereadcounter results to bed file format.')
parser.add_argument("--input_asereadcounter",required=True,help="Input the path to the asereadcounter file")
parser.add_argument("--output_filepath",required=True,help="Input the path to the output file")

args = parser.parse_args()

outfile = open(args.output_filepath, "w")

with open(args.input_asereadcounter, "r") as f:
    for line in f:
        if not line.startswith('contig'):
            items = line.rstrip('\n').split('\t')
            out = ['chr' + items[0], items[1], str(int(items[1]) + 1), items[5], items[6], items[7]]
            print ('\t'.join(out), file=outfile)