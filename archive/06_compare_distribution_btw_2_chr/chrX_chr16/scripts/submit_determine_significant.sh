#!/bin/bash
# ------------------------------------------------------------------------
# Date: 12/31/2019
# Submit python script to determine whether the statistics are significant
# ------------------------------------------------------------------------
# macaque
for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
do

for t in heart lung liver gonads adrenal pituitary
do

python /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/scripts/determine_significant.py --input_fn /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/${id}/${id}_${t}_pvalues.txt --output_fn /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/${id}/${id}_${t}_pvalues_significant.txt

done
done

#
for id in PT103046 PT104733
do

for t in heart liver gonads adrenal pituitary
do

python /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/scripts/determine_significant.py --input_fn /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/${id}/${id}_${t}_pvalues.txt --output_fn /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/${id}/${id}_${t}_pvalues_significant.txt

done
done

#
for id in PT103760 PT104270
do

for t in heart lung liver adrenal pituitary
do

python /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/scripts/determine_significant.py --input_fn /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/${id}/${id}_${t}_pvalues.txt --output_fn /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/${id}/${id}_${t}_pvalues_significant.txt

done
done
