# In this script, for the phased data, I am returning the positions where it is completely skewed (allele balance is 1)
from optparse import OptionParser

# Parsing arguments from command line
parser = OptionParser(usage='python find_complete_skewed_positions.py <options>')
parser.add_option('--filename', dest='filename', action='store')
parser.add_option('--out_filename', dest='out_filename', action='store')
(options, args) = parser.parse_args()

def find_complete_skewed_positions(filename, out_filename):
    outfile = open(out_filename, 'w')
    with open(filename, 'r') as file:
        for i in list(filter(lambda l: float(l.rstrip().split('\t')[3]) == 1, file)):
            print (i.rstrip(), file=outfile)

def main():
    find_complete_skewed_positions(options.filename, options.out_filename)

main()
