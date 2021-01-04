#!/bin/bash

# # macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for t in heart lung liver gonads adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103046 PT104733
# do
#
# for t in heart liver gonads adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103760 PT104270
# do
#
# for t in heart lung liver adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing.R ${id} ${t}
#
# done
# done

# # human
# for id in GTEX-1A32A-0001 GTEX-1A8FM-0004 GTEX-131YS-0003 GTEX-12WSD-0002 GTEX-15ER7-0002 GTEX-11GSP-0004 GTEX-14DAQ-0004
# do
#
# for t in heart lung liver ovary adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing.R ${id} ${t}
#
# done
# done

# --------------
# coding regions
# --------------

# # macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for t in heart lung liver gonads adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing_coding_regions.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103046 PT104733
# do
#
# for t in heart liver gonads adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing_coding_regions.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103760 PT104270
# do
#
# for t in heart lung liver adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_Cayo_prephasing_coding_regions.R ${id} ${t}
#
# done
# done

# # human
# for id in GTEX-1A32A-0001 GTEX-1A8FM-0004 GTEX-131YS-0003 GTEX-12WSD-0002 GTEX-15ER7-0002 GTEX-11GSP-0004 GTEX-14DAQ-0004
# do
#
# for t in heart lung liver ovary adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_chr8_GTEx_prephasing_coding_regions.R ${id} ${t}
#
# done
# done

# ---------------
# All chromosomes
# ---------------

# # macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for t in heart lung liver gonads adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_autosomes_Cayo_prephasing.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103046 PT104733
# do
#
# for t in heart liver gonads adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_autosomes_Cayo_prephasing.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103760 PT104270
# do
#
# for t in heart lung liver adrenal pituitary
# do
#
# Rscript plot_violin_plot_chrX_autosomes_Cayo_prephasing.R ${id} ${t}
#
# done
# done

# # macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for t in heart lung liver gonads adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103046 PT104733
# do
#
# for t in heart liver gonads adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103760 PT104270
# do
#
# for t in heart lung liver adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio.R ${id} ${t}
#
# done
# done

# macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# Rscript plot_violin_plot_compare_mean_chrX_autosomes_Cayo_prephasing.R ${id}
#
# done


# for id in PT103046 PT104733
# do
# Rscript plot_violin_plot_compare_mean_chrX_autosomes_Cayo_prephasing.R ${id}
#
# done


# for id in PT103760 PT104270
# do
#
# Rscript plot_violin_plot_compare_mean_chrX_autosomes_Cayo_prephasing.R ${id}
#
# done

# # 12/27/2019
# # macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for t in heart lung liver gonads adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio_autosomes.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103046 PT104733
# do
#
# for t in heart liver gonads adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio_autosomes.R ${id} ${t}
#
# done
# done
#
# #
# for id in PT103760 PT104270
# do
#
# for t in heart lung liver adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio_autosomes.R ${id} ${t}
#
# done
# done

# 01/07/2020
# human
# for id in GTEX-131YS-0003 GTEX-1A32A-0001 GTEX-14DAQ-0004 GTEX-12WSD-0002 GTEX-1A8FM-0004 GTEX-15ER7-0002 GTEX-11GSP-0004
# do
#
# for t in heart lung liver ovary adrenal pituitary
# do
#
# Rscript compute_mean_median_ratio_autosomes.R ${id} ${t}
#
# done
# done

for id in GTEX-131YS-0003 GTEX-1A32A-0001 GTEX-14DAQ-0004 GTEX-12WSD-0002 GTEX-1A8FM-0004 GTEX-15ER7-0002 GTEX-11GSP-0004
do

for t in heart lung liver ovary adrenal pituitary
do

Rscript compute_mean_median_ratio_chrX_GTEx.R ${id} ${t}

done
done

for id in GTEX-131YS-0003 GTEX-1A32A-0001 GTEX-14DAQ-0004 GTEX-12WSD-0002 GTEX-1A8FM-0004 GTEX-15ER7-0002 GTEX-11GSP-0004
do

for t in heart lung liver ovary adrenal pituitary
do

Rscript compute_mean_median_ratio_chr8_GTEx.R ${id} ${t}

done
done

# # macaque
# for id in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for t in heart lung liver gonads adrenal pituitary
# do
#
# grep -w chr16 /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${id}/${id}_${t}_mean_median_ratio_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${id}/${id}_${t}_mean_median_ratio_chr16.tsv
#
# done
# done
#
# #
# for id in PT103046 PT104733
# do
#
# for t in heart liver gonads adrenal pituitary
# do
#
# grep -w chr16 /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${id}/${id}_${t}_mean_median_ratio_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${id}/${id}_${t}_mean_median_ratio_chr16.tsv
#
# done
# done
#
# #
# for id in PT103760 PT104270
# do
#
# for t in heart lung liver adrenal pituitary
# do
#
# grep -w chr16 /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${id}/${id}_${t}_mean_median_ratio_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${id}/${id}_${t}_mean_median_ratio_chr16.tsv
#
# done
# done
