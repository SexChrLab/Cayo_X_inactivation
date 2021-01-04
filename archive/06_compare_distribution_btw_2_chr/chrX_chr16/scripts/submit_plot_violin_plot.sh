#!/bin/bash

# ---------------------------------------------------------------------
# Date: 12/31/2019
# Submit R script to plot and compute statistics between chrX and chr16
# ---------------------------------------------------------------------
# macaque
for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
do

for t in heart lung liver gonads adrenal pituitary
do

Rscript /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/scripts/plot_violin_plot_chrX_chr16_Cayo_prephasing.R ${id} ${t}

done
done

#
for id in PT103046 PT104733
do

for t in heart liver gonads adrenal pituitary
do

Rscript /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/scripts/plot_violin_plot_chrX_chr16_Cayo_prephasing.R ${id} ${t}

done
done

#
for id in PT103760 PT104270
do

for t in heart lung liver adrenal pituitary
do

Rscript /agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/scripts/plot_violin_plot_chrX_chr16_Cayo_prephasing.R ${id} ${t}

done
done

# -------------------
# End Date 12/31/2019
# -------------------
