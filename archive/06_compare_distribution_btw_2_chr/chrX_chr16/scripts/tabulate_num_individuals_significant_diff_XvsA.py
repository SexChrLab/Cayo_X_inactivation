# In this script, we want to return: for each tissue, how many individuals where the difference in distribution between the X chromosome and a chromosome on the autosomes is significant

import os
# # For tissues where there are all 14 individuals in each tissues (adrenal, heart, liver, pituitary)
# individuals = ['PT104219', 'PT105290', 'PT102485', 'PT101159', 'PT105239', 'PT104883', 'PT103811', 'PT103352', 'PT102842', 'PT101210', 'PT103046', 'PT104733', 'PT103760', 'PT104270']
# tissues = ['adrenal', 'heart', 'liver', 'pituitary']

# # For lung
# individuals = ['PT104219', 'PT105290', 'PT102485', 'PT101159', 'PT105239', 'PT104883', 'PT103811', 'PT103352', 'PT102842', 'PT101210', 'PT103760', 'PT104270']
# tissues = ['lung']

# For gonads
individuals = ['PT104219', 'PT105290', 'PT102485', 'PT101159', 'PT105239', 'PT104883', 'PT103811', 'PT103352', 'PT102842', 'PT101210', 'PT103046', 'PT104733']
tissues = ['gonads']


for tissue in tissues:
    count = 0
    for i in individuals:
        filename = os.path.join('/agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats', i, i + '_' + tissue + '_pvalues_significant.txt')
        with open(filename, 'r') as f:
            for line in f:
                if line.startswith('wilcox'):
                    if line.rstrip('\n').split('\t')[2] == 'significant':
                        count += 1

    print (count)
