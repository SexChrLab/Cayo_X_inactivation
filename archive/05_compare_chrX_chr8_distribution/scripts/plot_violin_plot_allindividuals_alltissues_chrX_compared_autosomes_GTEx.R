library(ggplot2)

setwd("/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/")

# ---------
# autosomes
# ---------
# heart
heart_GTEX_131YS_0003_chr8 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_131YS_0003_chr8$tissue='heart'
heart_GTEX_131YS_0003_chr8$id='GTEX-131YS-0003'

heart_GTEX_1A32A_0001_chr8 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_1A32A_0001_chr8$tissue='heart'
heart_GTEX_1A32A_0001_chr8$id='GTEX-1A32A-0001'

heart_GTEX_14DAQ_0004_chr8 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_14DAQ_0004_chr8$tissue='heart'
heart_GTEX_14DAQ_0004_chr8$id='GTEX-14DAQ-0004'

heart_GTEX_12WSD_0002_chr8 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_12WSD_0002_chr8$tissue='heart'
heart_GTEX_12WSD_0002_chr8$id='GTEX-12WSD-0002'

heart_GTEX_1A8FM_0004_chr8 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_1A8FM_0004_chr8$tissue='heart'
heart_GTEX_1A8FM_0004_chr8$id='GTEX-1A8FM-0004'

heart_GTEX_15ER7_0002_chr8 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_15ER7_0002_chr8$tissue='heart'
heart_GTEX_15ER7_0002_chr8$id='GTEX-15ER7-0002'

heart_GTEX_11GSP_0004_chr8 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_heart_mean_median_ratio_chr8.tsv", header = T)
heart_GTEX_11GSP_0004_chr8$tissue='heart'
heart_GTEX_11GSP_0004_chr8$id='GTEX-11GSP-0004'

# lung
lung_GTEX_131YS_0003_chr8 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_131YS_0003_chr8$tissue='lung'
lung_GTEX_131YS_0003_chr8$id='GTEX-131YS-0003'

lung_GTEX_1A32A_0001_chr8 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_1A32A_0001_chr8$tissue='lung'
lung_GTEX_1A32A_0001_chr8$id='GTEX-1A32A-0001'

lung_GTEX_14DAQ_0004_chr8 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_14DAQ_0004_chr8$tissue='lung'
lung_GTEX_14DAQ_0004_chr8$id='GTEX-14DAQ-0004'

lung_GTEX_12WSD_0002_chr8 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_12WSD_0002_chr8$tissue='lung'
lung_GTEX_12WSD_0002_chr8$id='GTEX-12WSD-0002'

lung_GTEX_1A8FM_0004_chr8 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_1A8FM_0004_chr8$tissue='lung'
lung_GTEX_1A8FM_0004_chr8$id='GTEX-1A8FM-0004'

lung_GTEX_15ER7_0002_chr8 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_15ER7_0002_chr8$tissue='lung'
lung_GTEX_15ER7_0002_chr8$id='GTEX-15ER7-0002'

lung_GTEX_11GSP_0004_chr8 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_lung_mean_median_ratio_chr8.tsv", header = T)
lung_GTEX_11GSP_0004_chr8$tissue='lung'
lung_GTEX_11GSP_0004_chr8$id='GTEX-11GSP-0004'

# liver
liver_GTEX_131YS_0003_chr8 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_131YS_0003_chr8$tissue='liver'
liver_GTEX_131YS_0003_chr8$id='GTEX-131YS-0003'

liver_GTEX_1A32A_0001_chr8 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_1A32A_0001_chr8$tissue='liver'
liver_GTEX_1A32A_0001_chr8$id='GTEX-1A32A-0001'

liver_GTEX_14DAQ_0004_chr8 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_14DAQ_0004_chr8$tissue='liver'
liver_GTEX_14DAQ_0004_chr8$id='GTEX-14DAQ-0004'

liver_GTEX_12WSD_0002_chr8 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_12WSD_0002_chr8$tissue='liver'
liver_GTEX_12WSD_0002_chr8$id='GTEX-12WSD-0002'

liver_GTEX_1A8FM_0004_chr8 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_1A8FM_0004_chr8$tissue='liver'
liver_GTEX_1A8FM_0004_chr8$id='GTEX-1A8FM-0004'

liver_GTEX_15ER7_0002_chr8 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_15ER7_0002_chr8$tissue='liver'
liver_GTEX_15ER7_0002_chr8$id='GTEX-15ER7-0002'

liver_GTEX_11GSP_0004_chr8 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_liver_mean_median_ratio_chr8.tsv", header = T)
liver_GTEX_11GSP_0004_chr8$tissue='liver'
liver_GTEX_11GSP_0004_chr8$id='GTEX-11GSP-0004'

# gonads
ovary_GTEX_131YS_0003_chr8 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_131YS_0003_chr8$tissue='ovary'
ovary_GTEX_131YS_0003_chr8$id='GTEX-131YS-0003'

ovary_GTEX_1A32A_0001_chr8 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_1A32A_0001_chr8$tissue='ovary'
ovary_GTEX_1A32A_0001_chr8$id='GTEX-1A32A-0001'

ovary_GTEX_14DAQ_0004_chr8 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_14DAQ_0004_chr8$tissue='ovary'
ovary_GTEX_14DAQ_0004_chr8$id='GTEX-14DAQ-0004'

ovary_GTEX_12WSD_0002_chr8 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_12WSD_0002_chr8$tissue='ovary'
ovary_GTEX_12WSD_0002_chr8$id='GTEX-12WSD-0002'

ovary_GTEX_1A8FM_0004_chr8 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_1A8FM_0004_chr8$tissue='ovary'
ovary_GTEX_1A8FM_0004_chr8$id='GTEX-1A8FM-0004'

ovary_GTEX_15ER7_0002_chr8 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_15ER7_0002_chr8$tissue='ovary'
ovary_GTEX_15ER7_0002_chr8$id='GTEX-15ER7-0002'

ovary_GTEX_11GSP_0004_chr8 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_ovary_mean_median_ratio_chr8.tsv", header = T)
ovary_GTEX_11GSP_0004_chr8$tissue='ovary'
ovary_GTEX_11GSP_0004_chr8$id='GTEX-11GSP-0004'

# adrenal
adrenal_GTEX_131YS_0003_chr8 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_131YS_0003_chr8$tissue='adrenal'
adrenal_GTEX_131YS_0003_chr8$id='GTEX-131YS-0003'

adrenal_GTEX_1A32A_0001_chr8 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_1A32A_0001_chr8$tissue='adrenal'
adrenal_GTEX_1A32A_0001_chr8$id='GTEX-1A32A-0001'

adrenal_GTEX_14DAQ_0004_chr8 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_14DAQ_0004_chr8$tissue='adrenal'
adrenal_GTEX_14DAQ_0004_chr8$id='GTEX-14DAQ-0004'

adrenal_GTEX_12WSD_0002_chr8 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_12WSD_0002_chr8$tissue='adrenal'
adrenal_GTEX_12WSD_0002_chr8$id='GTEX-12WSD-0002'

adrenal_GTEX_1A8FM_0004_chr8 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_1A8FM_0004_chr8$tissue='adrenal'
adrenal_GTEX_1A8FM_0004_chr8$id='GTEX-1A8FM-0004'

adrenal_GTEX_15ER7_0002_chr8 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_15ER7_0002_chr8$tissue='adrenal'
adrenal_GTEX_15ER7_0002_chr8$id='GTEX-15ER7-0002'

adrenal_GTEX_11GSP_0004_chr8 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_adrenal_mean_median_ratio_chr8.tsv", header = T)
adrenal_GTEX_11GSP_0004_chr8$tissue='adrenal'
adrenal_GTEX_11GSP_0004_chr8$id='GTEX-11GSP-0004'

# pituitary
pituitary_GTEX_131YS_0003_chr8 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_131YS_0003_chr8$tissue='pituitary'
pituitary_GTEX_131YS_0003_chr8$id='GTEX-131YS-0003'

pituitary_GTEX_1A32A_0001_chr8 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_1A32A_0001_chr8$tissue='pituitary'
pituitary_GTEX_1A32A_0001_chr8$id='GTEX-1A32A-0001'

pituitary_GTEX_14DAQ_0004_chr8 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_14DAQ_0004_chr8$tissue='pituitary'
pituitary_GTEX_14DAQ_0004_chr8$id='GTEX-14DAQ-0004'

pituitary_GTEX_12WSD_0002_chr8 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_12WSD_0002_chr8$tissue='pituitary'
pituitary_GTEX_12WSD_0002_chr8$id='GTEX-12WSD-0002'

pituitary_GTEX_1A8FM_0004_chr8 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_1A8FM_0004_chr8$tissue='pituitary'
pituitary_GTEX_1A8FM_0004_chr8$id='GTEX-1A8FM-0004'

pituitary_GTEX_15ER7_0002_chr8 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_15ER7_0002_chr8$tissue='pituitary'
pituitary_GTEX_15ER7_0002_chr8$id='GTEX-15ER7-0002'

pituitary_GTEX_11GSP_0004_chr8 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_pituitary_mean_median_ratio_chr8.tsv", header = T)
pituitary_GTEX_11GSP_0004_chr8$tissue='pituitary'
pituitary_GTEX_11GSP_0004_chr8$id='GTEX-11GSP-0004'

# -----
# chrX
# -----
# heart
heart_GTEX_131YS_0003_chrX = read.table("GTEX-131YS-0003/GTEX-131YS-0003_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_131YS_0003_chrX$tissue='heart'
heart_GTEX_131YS_0003_chrX$id='GTEX-131YS-0003'

heart_GTEX_1A32A_0001_chrX = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_1A32A_0001_chrX$tissue='heart'
heart_GTEX_1A32A_0001_chrX$id='GTEX-1A32A-0001'

heart_GTEX_14DAQ_0004_chrX = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_14DAQ_0004_chrX$tissue='heart'
heart_GTEX_14DAQ_0004_chrX$id='GTEX-14DAQ-0004'

heart_GTEX_12WSD_0002_chrX = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_12WSD_0002_chrX$tissue='heart'
heart_GTEX_12WSD_0002_chrX$id='GTEX-12WSD-0002'

heart_GTEX_1A8FM_0004_chrX = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_1A8FM_0004_chrX$tissue='heart'
heart_GTEX_1A8FM_0004_chrX$id='GTEX-1A8FM-0004'

heart_GTEX_15ER7_0002_chrX = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_15ER7_0002_chrX$tissue='heart'
heart_GTEX_15ER7_0002_chrX$id='GTEX-15ER7-0002'

heart_GTEX_11GSP_0004_chrX = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_heart_mean_median_ratio_chrX.tsv", header = T)
heart_GTEX_11GSP_0004_chrX$tissue='heart'
heart_GTEX_11GSP_0004_chrX$id='GTEX-11GSP-0004'

# lung
lung_GTEX_131YS_0003_chrX = read.table("GTEX-131YS-0003/GTEX-131YS-0003_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_131YS_0003_chrX$tissue='lung'
lung_GTEX_131YS_0003_chrX$id='GTEX-131YS-0003'

lung_GTEX_1A32A_0001_chrX = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_1A32A_0001_chrX$tissue='lung'
lung_GTEX_1A32A_0001_chrX$id='GTEX-1A32A-0001'

lung_GTEX_14DAQ_0004_chrX = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_14DAQ_0004_chrX$tissue='lung'
lung_GTEX_14DAQ_0004_chrX$id='GTEX-14DAQ-0004'

lung_GTEX_12WSD_0002_chrX = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_12WSD_0002_chrX$tissue='lung'
lung_GTEX_12WSD_0002_chrX$id='GTEX-12WSD-0002'

lung_GTEX_1A8FM_0004_chrX = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_1A8FM_0004_chrX$tissue='lung'
lung_GTEX_1A8FM_0004_chrX$id='GTEX-1A8FM-0004'

lung_GTEX_15ER7_0002_chrX = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_15ER7_0002_chrX$tissue='lung'
lung_GTEX_15ER7_0002_chrX$id='GTEX-15ER7-0002'

lung_GTEX_11GSP_0004_chrX = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_lung_mean_median_ratio_chrX.tsv", header = T)
lung_GTEX_11GSP_0004_chrX$tissue='lung'
lung_GTEX_11GSP_0004_chrX$id='GTEX-11GSP-0004'

# liver
liver_GTEX_131YS_0003_chrX = read.table("GTEX-131YS-0003/GTEX-131YS-0003_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_131YS_0003_chrX$tissue='liver'
liver_GTEX_131YS_0003_chrX$id='GTEX-131YS-0003'

liver_GTEX_1A32A_0001_chrX = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_1A32A_0001_chrX$tissue='liver'
liver_GTEX_1A32A_0001_chrX$id='GTEX-1A32A-0001'

liver_GTEX_14DAQ_0004_chrX = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_14DAQ_0004_chrX$tissue='liver'
liver_GTEX_14DAQ_0004_chrX$id='GTEX-14DAQ-0004'

liver_GTEX_12WSD_0002_chrX = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_12WSD_0002_chrX$tissue='liver'
liver_GTEX_12WSD_0002_chrX$id='GTEX-12WSD-0002'

liver_GTEX_1A8FM_0004_chrX = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_1A8FM_0004_chrX$tissue='liver'
liver_GTEX_1A8FM_0004_chrX$id='GTEX-1A8FM-0004'

liver_GTEX_15ER7_0002_chrX = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_15ER7_0002_chrX$tissue='liver'
liver_GTEX_15ER7_0002_chrX$id='GTEX-15ER7-0002'

liver_GTEX_11GSP_0004_chrX = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_liver_mean_median_ratio_chrX.tsv", header = T)
liver_GTEX_11GSP_0004_chrX$tissue='liver'
liver_GTEX_11GSP_0004_chrX$id='GTEX-11GSP-0004'

# gonads
ovary_GTEX_131YS_0003_chrX = read.table("GTEX-131YS-0003/GTEX-131YS-0003_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_131YS_0003_chrX$tissue='ovary'
ovary_GTEX_131YS_0003_chrX$id='GTEX-131YS-0003'

ovary_GTEX_1A32A_0001_chrX = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_1A32A_0001_chrX$tissue='ovary'
ovary_GTEX_1A32A_0001_chrX$id='GTEX-1A32A-0001'

ovary_GTEX_14DAQ_0004_chrX = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_14DAQ_0004_chrX$tissue='ovary'
ovary_GTEX_14DAQ_0004_chrX$id='GTEX-14DAQ-0004'

ovary_GTEX_12WSD_0002_chrX = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_12WSD_0002_chrX$tissue='ovary'
ovary_GTEX_12WSD_0002_chrX$id='GTEX-12WSD-0002'

ovary_GTEX_1A8FM_0004_chrX = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_1A8FM_0004_chrX$tissue='ovary'
ovary_GTEX_1A8FM_0004_chrX$id='GTEX-1A8FM-0004'

ovary_GTEX_15ER7_0002_chrX = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_15ER7_0002_chrX$tissue='ovary'
ovary_GTEX_15ER7_0002_chrX$id='GTEX-15ER7-0002'

ovary_GTEX_11GSP_0004_chrX = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_ovary_mean_median_ratio_chrX.tsv", header = T)
ovary_GTEX_11GSP_0004_chrX$tissue='ovary'
ovary_GTEX_11GSP_0004_chrX$id='GTEX-11GSP-0004'

# adrenal
adrenal_GTEX_131YS_0003_chrX = read.table("GTEX-131YS-0003/GTEX-131YS-0003_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_131YS_0003_chrX$tissue='adrenal'
adrenal_GTEX_131YS_0003_chrX$id='GTEX-131YS-0003'

adrenal_GTEX_1A32A_0001_chrX = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_1A32A_0001_chrX$tissue='adrenal'
adrenal_GTEX_1A32A_0001_chrX$id='GTEX-1A32A-0001'

adrenal_GTEX_14DAQ_0004_chrX = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_14DAQ_0004_chrX$tissue='adrenal'
adrenal_GTEX_14DAQ_0004_chrX$id='GTEX-14DAQ-0004'

adrenal_GTEX_12WSD_0002_chrX = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_12WSD_0002_chrX$tissue='adrenal'
adrenal_GTEX_12WSD_0002_chrX$id='GTEX-12WSD-0002'

adrenal_GTEX_1A8FM_0004_chrX = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_1A8FM_0004_chrX$tissue='adrenal'
adrenal_GTEX_1A8FM_0004_chrX$id='GTEX-1A8FM-0004'

adrenal_GTEX_15ER7_0002_chrX = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_15ER7_0002_chrX$tissue='adrenal'
adrenal_GTEX_15ER7_0002_chrX$id='GTEX-15ER7-0002'

adrenal_GTEX_11GSP_0004_chrX = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_adrenal_mean_median_ratio_chrX.tsv", header = T)
adrenal_GTEX_11GSP_0004_chrX$tissue='adrenal'
adrenal_GTEX_11GSP_0004_chrX$id='GTEX-11GSP-0004'

# pituitary
pituitary_GTEX_131YS_0003_chrX = read.table("GTEX-131YS-0003/GTEX-131YS-0003_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_131YS_0003_chrX$tissue='pituitary'
pituitary_GTEX_131YS_0003_chrX$id='GTEX-131YS-0003'

pituitary_GTEX_1A32A_0001_chrX = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_1A32A_0001_chrX$tissue='pituitary'
pituitary_GTEX_1A32A_0001_chrX$id='GTEX-1A32A-0001'

pituitary_GTEX_14DAQ_0004_chrX = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_14DAQ_0004_chrX$tissue='pituitary'
pituitary_GTEX_14DAQ_0004_chrX$id='GTEX-14DAQ-0004'

pituitary_GTEX_12WSD_0002_chrX = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_12WSD_0002_chrX$tissue='pituitary'
pituitary_GTEX_12WSD_0002_chrX$id='GTEX-12WSD-0002'

pituitary_GTEX_1A8FM_0004_chrX = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_1A8FM_0004_chrX$tissue='pituitary'
pituitary_GTEX_1A8FM_0004_chrX$id='GTEX-1A8FM-0004'

pituitary_GTEX_15ER7_0002_chrX = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_15ER7_0002_chrX$tissue='pituitary'
pituitary_GTEX_15ER7_0002_chrX$id='GTEX-15ER7-0002'

pituitary_GTEX_11GSP_0004_chrX = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_pituitary_mean_median_ratio_chrX.tsv", header = T)
pituitary_GTEX_11GSP_0004_chrX$tissue='pituitary'
pituitary_GTEX_11GSP_0004_chrX$id='GTEX-11GSP-0004'

combine_data = rbind(heart_GTEX_131YS_0003_chr8, heart_GTEX_1A32A_0001_chr8, heart_GTEX_14DAQ_0004_chr8, heart_GTEX_12WSD_0002_chr8, heart_GTEX_1A8FM_0004_chr8, heart_GTEX_15ER7_0002_chr8, heart_GTEX_11GSP_0004_chr8,  lung_GTEX_131YS_0003_chr8, lung_GTEX_1A32A_0001_chr8, lung_GTEX_14DAQ_0004_chr8, lung_GTEX_12WSD_0002_chr8, lung_GTEX_1A8FM_0004_chr8, lung_GTEX_15ER7_0002_chr8, lung_GTEX_11GSP_0004_chr8, liver_GTEX_131YS_0003_chr8, liver_GTEX_1A32A_0001_chr8, liver_GTEX_14DAQ_0004_chr8, liver_GTEX_12WSD_0002_chr8, liver_GTEX_1A8FM_0004_chr8, liver_GTEX_15ER7_0002_chr8, liver_GTEX_11GSP_0004_chr8, ovary_GTEX_131YS_0003_chr8, ovary_GTEX_1A32A_0001_chr8, ovary_GTEX_14DAQ_0004_chr8, ovary_GTEX_12WSD_0002_chr8, ovary_GTEX_1A8FM_0004_chr8, ovary_GTEX_15ER7_0002_chr8, ovary_GTEX_11GSP_0004_chr8, adrenal_GTEX_131YS_0003_chr8, adrenal_GTEX_1A32A_0001_chr8, adrenal_GTEX_14DAQ_0004_chr8, adrenal_GTEX_12WSD_0002_chr8, adrenal_GTEX_1A8FM_0004_chr8, adrenal_GTEX_15ER7_0002_chr8, adrenal_GTEX_11GSP_0004_chr8, pituitary_GTEX_131YS_0003_chr8, pituitary_GTEX_1A32A_0001_chr8, pituitary_GTEX_14DAQ_0004_chr8, pituitary_GTEX_12WSD_0002_chr8, pituitary_GTEX_1A8FM_0004_chr8, pituitary_GTEX_15ER7_0002_chr8, pituitary_GTEX_11GSP_0004_chr8, heart_GTEX_131YS_0003_chrX, heart_GTEX_1A32A_0001_chrX, heart_GTEX_14DAQ_0004_chrX, heart_GTEX_12WSD_0002_chrX, heart_GTEX_1A8FM_0004_chrX, heart_GTEX_15ER7_0002_chrX, heart_GTEX_11GSP_0004_chrX,  lung_GTEX_131YS_0003_chrX, lung_GTEX_1A32A_0001_chrX, lung_GTEX_14DAQ_0004_chrX, lung_GTEX_12WSD_0002_chrX, lung_GTEX_1A8FM_0004_chrX, lung_GTEX_15ER7_0002_chrX, lung_GTEX_11GSP_0004_chrX, liver_GTEX_131YS_0003_chrX, liver_GTEX_1A32A_0001_chrX, liver_GTEX_14DAQ_0004_chrX, liver_GTEX_12WSD_0002_chrX, liver_GTEX_1A8FM_0004_chrX, liver_GTEX_15ER7_0002_chrX, liver_GTEX_11GSP_0004_chrX, ovary_GTEX_131YS_0003_chrX, ovary_GTEX_1A32A_0001_chrX, ovary_GTEX_14DAQ_0004_chrX, ovary_GTEX_12WSD_0002_chrX, ovary_GTEX_1A8FM_0004_chrX, ovary_GTEX_15ER7_0002_chrX, ovary_GTEX_11GSP_0004_chrX, adrenal_GTEX_131YS_0003_chrX, adrenal_GTEX_1A32A_0001_chrX, adrenal_GTEX_14DAQ_0004_chrX, adrenal_GTEX_12WSD_0002_chrX, adrenal_GTEX_1A8FM_0004_chrX, adrenal_GTEX_15ER7_0002_chrX, adrenal_GTEX_11GSP_0004_chrX, pituitary_GTEX_131YS_0003_chrX, pituitary_GTEX_1A32A_0001_chrX, pituitary_GTEX_14DAQ_0004_chrX, pituitary_GTEX_12WSD_0002_chrX, pituitary_GTEX_1A8FM_0004_chrX, pituitary_GTEX_15ER7_0002_chrX, pituitary_GTEX_11GSP_0004_chrX)

png("/scratch/tphung3/Cayo_x_inactivation/compare_chrX_chr8_distribution/plots/plot_violin_plot_allindidivuals_alltissues_chrX_comparedautosomes_GTEx.png", width = 9, height=4, units = "in", res = 300)
ggplot(combine_data, aes(x=tissue, y=median, fill=chr)) +
  geom_violin() +
  coord_cartesian(ylim=c(0.5, 1)) +
  theme_bw() + 
  scale_fill_manual(values = c("black", "#40b0a6")) +
  labs(x="Tissue", y = "Allele balance", title = "Human") +
  theme(axis.title = element_text(size = 20), axis.text = element_text(size = 18), plot.title = element_text(hjust = 0.5, size = 22), legend.title = element_blank(), legend.position="top", legend.text = element_text(margin = margin(r = 30, unit = "pt"), size=16), legend.spacing.x = unit(0.2, 'cm'))

dev.off()
