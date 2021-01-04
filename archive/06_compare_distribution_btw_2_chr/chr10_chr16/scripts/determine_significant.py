# In this script, we want to determine whether the pvalue of the statistics tests are significant. Specifically, in the file /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/PT101159/PT101159_heart_pvalues.txt, we want to add a column to indicate whether the pvalues are significant

import argparse
import pandas as pd

parser = argparse.ArgumentParser(description='Determine whether the statistic tests are significant.')
parser.add_argument('--input_fn',required=True,help='Path to the input filename.')
parser.add_argument('--output_fn',required=True,help='Path to the output filename.')

args = parser.parse_args()

macaque_alpha_val = 0.05/(14*4+12*2)

data = pd.read_csv(args.input_fn, sep='\t')

data['significant'] = ['significant' if x < macaque_alpha_val else 'not_significant' for x in data['pvals']]

data.to_csv(args.output_fn, sep='\t', index=False)