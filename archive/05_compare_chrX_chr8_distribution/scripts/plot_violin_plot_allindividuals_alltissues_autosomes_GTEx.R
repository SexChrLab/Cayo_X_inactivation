library(ggplot2)

setwd("/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/")

# heart
heart_GTEX_131YS_0003 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_131YS_0003$tissue='heart'
heart_GTEX_131YS_0003$id='GTEX-131YS-0003'

heart_GTEX_1A32A_0001 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_1A32A_0001$tissue='heart'
heart_GTEX_1A32A_0001$id='GTEX-1A32A-0001'

heart_GTEX_14DAQ_0004 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_14DAQ_0004$tissue='heart'
heart_GTEX_14DAQ_0004$id='GTEX-14DAQ-0004'

heart_GTEX_12WSD_0002 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_12WSD_0002$tissue='heart'
heart_GTEX_12WSD_0002$id='GTEX-12WSD-0002'

heart_GTEX_1A8FM_0004 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_1A8FM_0004$tissue='heart'
heart_GTEX_1A8FM_0004$id='GTEX-1A8FM-0004'

heart_GTEX_15ER7_0002 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_15ER7_0002$tissue='heart'
heart_GTEX_15ER7_0002$id='GTEX-15ER7-0002'

heart_GTEX_11GSP_0004 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_heart_mean_median_ratio_autosomes_010720.tsv", header=T)
heart_GTEX_11GSP_0004$tissue='heart'
heart_GTEX_11GSP_0004$id='GTEX-11GSP-0004'

# liver
liver_GTEX_131YS_0003 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_131YS_0003$tissue='liver'
liver_GTEX_131YS_0003$id='GTEX-131YS-0003'

liver_GTEX_1A32A_0001 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_1A32A_0001$tissue='liver'
liver_GTEX_1A32A_0001$id='GTEX-1A32A-0001'

liver_GTEX_14DAQ_0004 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_14DAQ_0004$tissue='liver'
liver_GTEX_14DAQ_0004$id='GTEX-14DAQ-0004'

liver_GTEX_12WSD_0002 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_12WSD_0002$tissue='liver'
liver_GTEX_12WSD_0002$id='GTEX-12WSD-0002'

liver_GTEX_1A8FM_0004 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_1A8FM_0004$tissue='liver'
liver_GTEX_1A8FM_0004$id='GTEX-1A8FM-0004'

liver_GTEX_15ER7_0002 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_15ER7_0002$tissue='liver'
liver_GTEX_15ER7_0002$id='GTEX-15ER7-0002'

liver_GTEX_11GSP_0004 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_liver_mean_median_ratio_autosomes_010720.tsv", header=T)
liver_GTEX_11GSP_0004$tissue='liver'
liver_GTEX_11GSP_0004$id='GTEX-11GSP-0004'

# lung
lung_GTEX_131YS_0003 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_131YS_0003$tissue='lung'
lung_GTEX_131YS_0003$id='GTEX-131YS-0003'

lung_GTEX_1A32A_0001 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_1A32A_0001$tissue='lung'
lung_GTEX_1A32A_0001$id='GTEX-1A32A-0001'

lung_GTEX_14DAQ_0004 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_14DAQ_0004$tissue='lung'
lung_GTEX_14DAQ_0004$id='GTEX-14DAQ-0004'

lung_GTEX_12WSD_0002 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_12WSD_0002$tissue='lung'
lung_GTEX_12WSD_0002$id='GTEX-12WSD-0002'

lung_GTEX_1A8FM_0004 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_1A8FM_0004$tissue='lung'
lung_GTEX_1A8FM_0004$id='GTEX-1A8FM-0004'

lung_GTEX_15ER7_0002 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_15ER7_0002$tissue='lung'
lung_GTEX_15ER7_0002$id='GTEX-15ER7-0002'

lung_GTEX_11GSP_0004 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_lung_mean_median_ratio_autosomes_010720.tsv", header=T)
lung_GTEX_11GSP_0004$tissue='lung'
lung_GTEX_11GSP_0004$id='GTEX-11GSP-0004'

# ovary
ovary_GTEX_131YS_0003 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_131YS_0003$tissue='ovary'
ovary_GTEX_131YS_0003$id='GTEX-131YS-0003'

ovary_GTEX_1A32A_0001 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_1A32A_0001$tissue='ovary'
ovary_GTEX_1A32A_0001$id='GTEX-1A32A-0001'

ovary_GTEX_14DAQ_0004 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_14DAQ_0004$tissue='ovary'
ovary_GTEX_14DAQ_0004$id='GTEX-14DAQ-0004'

ovary_GTEX_12WSD_0002 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_12WSD_0002$tissue='ovary'
ovary_GTEX_12WSD_0002$id='GTEX-12WSD-0002'

ovary_GTEX_1A8FM_0004 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_1A8FM_0004$tissue='ovary'
ovary_GTEX_1A8FM_0004$id='GTEX-1A8FM-0004'

ovary_GTEX_15ER7_0002 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_15ER7_0002$tissue='ovary'
ovary_GTEX_15ER7_0002$id='GTEX-15ER7-0002'

ovary_GTEX_11GSP_0004 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_ovary_mean_median_ratio_autosomes_010720.tsv", header=T)
ovary_GTEX_11GSP_0004$tissue='ovary'
ovary_GTEX_11GSP_0004$id='GTEX-11GSP-0004'

# adrenal
adrenal_GTEX_131YS_0003 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_131YS_0003$tissue='adrenal'
adrenal_GTEX_131YS_0003$id='GTEX-131YS-0003'

adrenal_GTEX_1A32A_0001 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_1A32A_0001$tissue='adrenal'
adrenal_GTEX_1A32A_0001$id='GTEX-1A32A-0001'

adrenal_GTEX_14DAQ_0004 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_14DAQ_0004$tissue='adrenal'
adrenal_GTEX_14DAQ_0004$id='GTEX-14DAQ-0004'

adrenal_GTEX_12WSD_0002 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_12WSD_0002$tissue='adrenal'
adrenal_GTEX_12WSD_0002$id='GTEX-12WSD-0002'

adrenal_GTEX_1A8FM_0004 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_1A8FM_0004$tissue='adrenal'
adrenal_GTEX_1A8FM_0004$id='GTEX-1A8FM-0004'

adrenal_GTEX_15ER7_0002 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_15ER7_0002$tissue='adrenal'
adrenal_GTEX_15ER7_0002$id='GTEX-15ER7-0002'

adrenal_GTEX_11GSP_0004 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_adrenal_mean_median_ratio_autosomes_010720.tsv", header=T)
adrenal_GTEX_11GSP_0004$tissue='adrenal'
adrenal_GTEX_11GSP_0004$id='GTEX-11GSP-0004'

# pituitary
pituitary_GTEX_131YS_0003 = read.table("GTEX-131YS-0003/GTEX-131YS-0003_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_131YS_0003$tissue='pituitary'
pituitary_GTEX_131YS_0003$id='GTEX-131YS-0003'

pituitary_GTEX_1A32A_0001 = read.table("GTEX-1A32A-0001/GTEX-1A32A-0001_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_1A32A_0001$tissue='pituitary'
pituitary_GTEX_1A32A_0001$id='GTEX-1A32A-0001'

pituitary_GTEX_14DAQ_0004 = read.table("GTEX-14DAQ-0004/GTEX-14DAQ-0004_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_14DAQ_0004$tissue='pituitary'
pituitary_GTEX_14DAQ_0004$id='GTEX-14DAQ-0004'

pituitary_GTEX_12WSD_0002 = read.table("GTEX-12WSD-0002/GTEX-12WSD-0002_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_12WSD_0002$tissue='pituitary'
pituitary_GTEX_12WSD_0002$id='GTEX-12WSD-0002'

pituitary_GTEX_1A8FM_0004 = read.table("GTEX-1A8FM-0004/GTEX-1A8FM-0004_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_1A8FM_0004$tissue='pituitary'
pituitary_GTEX_1A8FM_0004$id='GTEX-1A8FM-0004'

pituitary_GTEX_15ER7_0002 = read.table("GTEX-15ER7-0002/GTEX-15ER7-0002_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_15ER7_0002$tissue='pituitary'
pituitary_GTEX_15ER7_0002$id='GTEX-15ER7-0002'

pituitary_GTEX_11GSP_0004 = read.table("GTEX-11GSP-0004/GTEX-11GSP-0004_pituitary_mean_median_ratio_autosomes_010720.tsv", header=T)
pituitary_GTEX_11GSP_0004$tissue='pituitary'
pituitary_GTEX_11GSP_0004$id='GTEX-11GSP-0004'


combine_data = rbind(heart_GTEX_131YS_0003, heart_GTEX_1A32A_0001, heart_GTEX_14DAQ_0004, heart_GTEX_12WSD_0002, heart_GTEX_1A8FM_0004, heart_GTEX_15ER7_0002, heart_GTEX_11GSP_0004, lung_GTEX_131YS_0003, lung_GTEX_1A32A_0001, lung_GTEX_14DAQ_0004, lung_GTEX_12WSD_0002, lung_GTEX_1A8FM_0004, lung_GTEX_15ER7_0002, lung_GTEX_11GSP_0004, liver_GTEX_131YS_0003, liver_GTEX_1A32A_0001, liver_GTEX_14DAQ_0004, liver_GTEX_12WSD_0002, liver_GTEX_1A8FM_0004, liver_GTEX_15ER7_0002, liver_GTEX_11GSP_0004, ovary_GTEX_131YS_0003, ovary_GTEX_1A32A_0001, ovary_GTEX_14DAQ_0004, ovary_GTEX_12WSD_0002, ovary_GTEX_1A8FM_0004, ovary_GTEX_15ER7_0002, ovary_GTEX_11GSP_0004, adrenal_GTEX_131YS_0003, adrenal_GTEX_1A32A_0001, adrenal_GTEX_14DAQ_0004, adrenal_GTEX_12WSD_0002, adrenal_GTEX_1A8FM_0004, adrenal_GTEX_15ER7_0002, adrenal_GTEX_11GSP_0004, pituitary_GTEX_131YS_0003, pituitary_GTEX_1A32A_0001, pituitary_GTEX_14DAQ_0004, pituitary_GTEX_12WSD_0002, pituitary_GTEX_1A8FM_0004, pituitary_GTEX_15ER7_0002, pituitary_GTEX_11GSP_0004)

png("/scratch/tphung3/Cayo_x_inactivation/compare_chrX_chr8_distribution/plots/plot_median_autosomes_allindividuals_alltissues_GTEx.png", width = 8, height = 5, units = "in", res = 300)
ggplot(combine_data, aes(x=tissue, y=median)) + 
  geom_violin() +
  geom_boxplot(width=0.1) +
  theme_bw() +
  coord_cartesian(ylim=c(0.5,1)) +
  labs(x='Tissue', y="Allele balance", title="Human autosomes") +
  theme(plot.title = element_text(hjust = 0.5, size=22), legend.position = "none", axis.text = element_text(size=18), axis.title = element_text(size=20))
dev.off()