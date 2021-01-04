#!/bin/bash

# -------
# macaque
# -------
# for individual in PT104219 PT105290 PT102485 PT101159 PT105239 PT104883 PT103811 PT103352 PT102842 PT101210
# do
#
# for tissue in heart lung liver gonads adrenal pituitary
# do
#
# for n in {1..20}
# do
#
# cat /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr${n}.tsv >> /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv
#
# grep -v contig /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes_clean.tsv
#
# done
# done
# done
#
# for individual in PT103046 PT104733
# do
#
# for tissue in heart liver gonads adrenal pituitary
# do
#
# for n in {1..20}
# do
#
# cat /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr${n}.tsv >> /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv
#
# grep -v contig /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes_clean.tsv
#
# done
# done
# done
#
# for individual in PT103760 PT104270
# do
#
# for tissue in heart lung liver adrenal pituitary
# do
#
# for n in {1..20}
# do
#
# cat /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr${n}.tsv >> /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv
#
# grep -v contig /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes_clean.tsv
#
# done
# done
# done

# -----
# human
# -----
for individual in GTEX-131YS-0003 GTEX-1A32A-0001 GTEX-14DAQ-0004 GTEX-12WSD-0002 GTEX-1A8FM-0004 GTEX-15ER7-0002 GTEX-11GSP-0004
do

for tissue in heart lung liver ovary adrenal pituitary
do

for n in {1..22}
do

cat /scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr${n}.tsv >> /scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv

grep -v contig /scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes.tsv > /scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/${individual}/${individual}_${tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes_cleans.tsv

done
done
done
