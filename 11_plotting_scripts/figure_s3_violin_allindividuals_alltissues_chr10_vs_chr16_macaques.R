library(ggplot2)

setwd("/scratch/tphung3/Cayo_x_inactivation/05_compare_X_A/results")

# ---------
# chr16
# ---------
# heart
heart_PT104219_chr16 = read.table("PT104219/PT104219_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT104219_chr16) = c("chr", "mean", "median")
heart_PT104219_chr16$tissue='heart'
heart_PT104219_chr16$id='PT104219'
heart_PT104219_chr16$chr='chr16'

heart_PT105290_chr16 = read.table("PT105290/PT105290_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT105290_chr16) = c("chr", "mean", "median")
heart_PT105290_chr16$tissue='heart'
heart_PT105290_chr16$id='PT105290'
heart_PT105290_chr16$chr='chr16'

heart_PT102485_chr16 = read.table("PT102485/PT102485_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT102485_chr16) = c("chr", "mean", "median")
heart_PT102485_chr16$tissue='heart'
heart_PT102485_chr16$id='PT102485'
heart_PT102485_chr16$chr='chr16'

heart_PT101159_chr16 = read.table("PT101159/PT101159_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT101159_chr16) = c("chr", "mean", "median")
heart_PT101159_chr16$tissue='heart'
heart_PT101159_chr16$id='PT101159'
heart_PT101159_chr16$chr='chr16'

heart_PT105239_chr16 = read.table("PT105239/PT105239_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT105239_chr16) = c("chr", "mean", "median")
heart_PT105239_chr16$tissue='heart'
heart_PT105239_chr16$id='PT105239'
heart_PT105239_chr16$chr='chr16'

heart_PT104883_chr16 = read.table("PT104883/PT104883_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT104883_chr16) = c("chr", "mean", "median")
heart_PT104883_chr16$tissue='heart'
heart_PT104883_chr16$id='PT104883'
heart_PT104883_chr16$chr='chr16'

heart_PT103811_chr16 = read.table("PT103811/PT103811_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT103811_chr16) = c("chr", "mean", "median")
heart_PT103811_chr16$tissue='heart'
heart_PT103811_chr16$id='PT103811'
heart_PT103811_chr16$chr='chr16'

heart_PT103352_chr16 = read.table("PT103352/PT103352_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT103352_chr16) = c("chr", "mean", "median")
heart_PT103352_chr16$tissue='heart'
heart_PT103352_chr16$id='PT103352'
heart_PT103352_chr16$chr='chr16'

heart_PT102842_chr16 = read.table("PT102842/PT102842_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT102842_chr16) = c("chr", "mean", "median")
heart_PT102842_chr16$tissue='heart'
heart_PT102842_chr16$id='PT102842'
heart_PT102842_chr16$chr='chr16'

heart_PT101210_chr16 = read.table("PT101210/PT101210_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT101210_chr16) = c("chr", "mean", "median")
heart_PT101210_chr16$tissue='heart'
heart_PT101210_chr16$id='PT101210'
heart_PT101210_chr16$chr='chr16'

heart_PT103046_chr16 = read.table("PT103046/PT103046_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT103046_chr16) = c("chr", "mean", "median")
heart_PT103046_chr16$tissue='heart'
heart_PT103046_chr16$id='PT103046'
heart_PT103046_chr16$chr='chr16'

heart_PT104733_chr16 = read.table("PT104733/PT104733_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT104733_chr16) = c("chr", "mean", "median")
heart_PT104733_chr16$tissue='heart'
heart_PT104733_chr16$id='PT104733'
heart_PT104733_chr16$chr='chr16'

heart_PT103760_chr16 = read.table("PT103760/PT103760_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT103760_chr16) = c("chr", "mean", "median")
heart_PT103760_chr16$tissue='heart'
heart_PT103760_chr16$id='PT103760'
heart_PT103760_chr16$chr='chr16'

heart_PT104270_chr16 = read.table("PT104270/PT104270_heart_mean_median_ratio_chr16.tsv", header=T)
colnames(heart_PT104270_chr16) = c("chr", "mean", "median")
heart_PT104270_chr16$tissue='heart'
heart_PT104270_chr16$id='PT104270'
heart_PT104270_chr16$chr='chr16'

# lung
lung_PT104219_chr16 = read.table("PT104219/PT104219_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT104219_chr16) = c("chr", "mean", "median")
lung_PT104219_chr16$tissue='lung'
lung_PT104219_chr16$id='PT104219'
lung_PT104219_chr16$chr='chr16'

lung_PT105290_chr16 = read.table("PT105290/PT105290_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT105290_chr16) = c("chr", "mean", "median")
lung_PT105290_chr16$tissue='lung'
lung_PT105290_chr16$id='PT105290'
lung_PT105290_chr16$chr='chr16'

lung_PT102485_chr16 = read.table("PT102485/PT102485_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT102485_chr16) = c("chr", "mean", "median")
lung_PT102485_chr16$tissue='lung'
lung_PT102485_chr16$id='PT102485'
lung_PT102485_chr16$chr='chr16'

lung_PT101159_chr16 = read.table("PT101159/PT101159_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT101159_chr16) = c("chr", "mean", "median")
lung_PT101159_chr16$tissue='lung'
lung_PT101159_chr16$id='PT101159'
lung_PT101159_chr16$chr='chr16'

lung_PT105239_chr16 = read.table("PT105239/PT105239_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT105239_chr16) = c("chr", "mean", "median")
lung_PT105239_chr16$tissue='lung'
lung_PT105239_chr16$id='PT105239'
lung_PT105239_chr16$chr='chr16'

lung_PT104883_chr16 = read.table("PT104883/PT104883_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT104883_chr16) = c("chr", "mean", "median")
lung_PT104883_chr16$tissue='lung'
lung_PT104883_chr16$id='PT104883'
lung_PT104883_chr16$chr='chr16'

lung_PT103811_chr16 = read.table("PT103811/PT103811_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT103811_chr16) = c("chr", "mean", "median")
lung_PT103811_chr16$tissue='lung'
lung_PT103811_chr16$id='PT103811'
lung_PT103811_chr16$chr='chr16'

lung_PT103352_chr16 = read.table("PT103352/PT103352_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT103352_chr16) = c("chr", "mean", "median")
lung_PT103352_chr16$tissue='lung'
lung_PT103352_chr16$id='PT103352'
lung_PT103352_chr16$chr='chr16'

lung_PT102842_chr16 = read.table("PT102842/PT102842_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT102842_chr16) = c("chr", "mean", "median")
lung_PT102842_chr16$tissue='lung'
lung_PT102842_chr16$id='PT102842'
lung_PT102842_chr16$chr='chr16'

lung_PT101210_chr16 = read.table("PT101210/PT101210_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT101210_chr16) = c("chr", "mean", "median")
lung_PT101210_chr16$tissue='lung'
lung_PT101210_chr16$id='PT101210'
lung_PT101210_chr16$chr='chr16'

lung_PT103760_chr16 = read.table("PT103760/PT103760_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT103760_chr16) = c("chr", "mean", "median")
lung_PT103760_chr16$tissue='lung'
lung_PT103760_chr16$id='PT103760'
lung_PT103760_chr16$chr='chr16'

lung_PT104270_chr16 = read.table("PT104270/PT104270_lung_mean_median_ratio_chr16.tsv", header=T)
colnames(lung_PT104270_chr16) = c("chr", "mean", "median")
lung_PT104270_chr16$tissue='lung'
lung_PT104270_chr16$id='PT104270'
lung_PT104270_chr16$chr='chr16'

# liver
liver_PT104219_chr16 = read.table("PT104219/PT104219_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT104219_chr16) = c("chr", "mean", "median")
liver_PT104219_chr16$tissue='liver'
liver_PT104219_chr16$id='PT104219'
liver_PT104219_chr16$chr='chr16'

liver_PT105290_chr16 = read.table("PT105290/PT105290_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT105290_chr16) = c("chr", "mean", "median")
liver_PT105290_chr16$tissue='liver'
liver_PT105290_chr16$id='PT105290'
liver_PT105290_chr16$chr='chr16'

liver_PT102485_chr16 = read.table("PT102485/PT102485_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT102485_chr16) = c("chr", "mean", "median")
liver_PT102485_chr16$tissue='liver'
liver_PT102485_chr16$id='PT102485'
liver_PT102485_chr16$chr='chr16'

liver_PT101159_chr16 = read.table("PT101159/PT101159_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT101159_chr16) = c("chr", "mean", "median")
liver_PT101159_chr16$tissue='liver'
liver_PT101159_chr16$id='PT101159'
liver_PT101159_chr16$chr='chr16'

liver_PT105239_chr16 = read.table("PT105239/PT105239_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT105239_chr16) = c("chr", "mean", "median")
liver_PT105239_chr16$tissue='liver'
liver_PT105239_chr16$id='PT105239'
liver_PT105239_chr16$chr='chr16'

liver_PT104883_chr16 = read.table("PT104883/PT104883_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT104883_chr16) = c("chr", "mean", "median")
liver_PT104883_chr16$tissue='liver'
liver_PT104883_chr16$id='PT104883'
liver_PT104883_chr16$chr='chr16'

liver_PT103811_chr16 = read.table("PT103811/PT103811_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT103811_chr16) = c("chr", "mean", "median")
liver_PT103811_chr16$tissue='liver'
liver_PT103811_chr16$id='PT103811'
liver_PT103811_chr16$chr='chr16'

liver_PT103352_chr16 = read.table("PT103352/PT103352_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT103352_chr16) = c("chr", "mean", "median")
liver_PT103352_chr16$tissue='liver'
liver_PT103352_chr16$id='PT103352'
liver_PT103352_chr16$chr='chr16'

liver_PT102842_chr16 = read.table("PT102842/PT102842_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT102842_chr16) = c("chr", "mean", "median")
liver_PT102842_chr16$tissue='liver'
liver_PT102842_chr16$id='PT102842'
liver_PT102842_chr16$chr='chr16'

liver_PT101210_chr16 = read.table("PT101210/PT101210_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT101210_chr16) = c("chr", "mean", "median")
liver_PT101210_chr16$tissue='liver'
liver_PT101210_chr16$id='PT101210'
liver_PT101210_chr16$chr='chr16'

liver_PT103046_chr16 = read.table("PT103046/PT103046_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT103046_chr16) = c("chr", "mean", "median")
liver_PT103046_chr16$tissue='liver'
liver_PT103046_chr16$id='PT103046'
liver_PT103046_chr16$chr='chr16'

liver_PT104733_chr16 = read.table("PT104733/PT104733_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT104733_chr16) = c("chr", "mean", "median")
liver_PT104733_chr16$tissue='liver'
liver_PT104733_chr16$id='PT104733'
liver_PT104733_chr16$chr='chr16'

liver_PT103760_chr16 = read.table("PT103760/PT103760_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT103760_chr16) = c("chr", "mean", "median")
liver_PT103760_chr16$tissue='liver'
liver_PT103760_chr16$id='PT103760'
liver_PT103760_chr16$chr='chr16'

liver_PT104270_chr16 = read.table("PT104270/PT104270_liver_mean_median_ratio_chr16.tsv", header=T)
colnames(liver_PT104270_chr16) = c("chr", "mean", "median")
liver_PT104270_chr16$tissue='liver'
liver_PT104270_chr16$id='PT104270'
liver_PT104270_chr16$chr='chr16'

# gonads
gonads_PT104219_chr16 = read.table("PT104219/PT104219_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT104219_chr16) = c("chr", "mean", "median")
gonads_PT104219_chr16$tissue='ovary'
gonads_PT104219_chr16$id='PT104219'
gonads_PT104219_chr16$chr='chr16'

gonads_PT105290_chr16 = read.table("PT105290/PT105290_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT105290_chr16) = c("chr", "mean", "median")
gonads_PT105290_chr16$tissue='ovary'
gonads_PT105290_chr16$id='PT105290'
gonads_PT105290_chr16$chr='chr16'

gonads_PT102485_chr16 = read.table("PT102485/PT102485_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT102485_chr16) = c("chr", "mean", "median")
gonads_PT102485_chr16$tissue='ovary'
gonads_PT102485_chr16$id='PT102485'
gonads_PT102485_chr16$chr='chr16'

gonads_PT101159_chr16 = read.table("PT101159/PT101159_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT101159_chr16) = c("chr", "mean", "median")
gonads_PT101159_chr16$tissue='ovary'
gonads_PT101159_chr16$id='PT101159'
gonads_PT101159_chr16$chr='chr16'

gonads_PT105239_chr16 = read.table("PT105239/PT105239_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT105239_chr16) = c("chr", "mean", "median")
gonads_PT105239_chr16$tissue='ovary'
gonads_PT105239_chr16$id='PT105239'
gonads_PT105239_chr16$chr='chr16'

gonads_PT104883_chr16 = read.table("PT104883/PT104883_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT104883_chr16) = c("chr", "mean", "median")
gonads_PT104883_chr16$tissue='ovary'
gonads_PT104883_chr16$id='PT104883'
gonads_PT104883_chr16$chr='chr16'

gonads_PT103811_chr16 = read.table("PT103811/PT103811_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT103811_chr16) = c("chr", "mean", "median")
gonads_PT103811_chr16$tissue='ovary'
gonads_PT103811_chr16$id='PT103811'
gonads_PT103811_chr16$chr='chr16'

gonads_PT103352_chr16 = read.table("PT103352/PT103352_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT103352_chr16) = c("chr", "mean", "median")
gonads_PT103352_chr16$tissue='ovary'
gonads_PT103352_chr16$id='PT103352'
gonads_PT103352_chr16$chr='chr16'

gonads_PT102842_chr16 = read.table("PT102842/PT102842_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT102842_chr16) = c("chr", "mean", "median")
gonads_PT102842_chr16$tissue='ovary'
gonads_PT102842_chr16$id='PT102842'
gonads_PT102842_chr16$chr='chr16'

gonads_PT101210_chr16 = read.table("PT101210/PT101210_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT101210_chr16) = c("chr", "mean", "median")
gonads_PT101210_chr16$tissue='ovary'
gonads_PT101210_chr16$id='PT101210'
gonads_PT101210_chr16$chr='chr16'

gonads_PT103046_chr16 = read.table("PT103046/PT103046_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT103046_chr16) = c("chr", "mean", "median")
gonads_PT103046_chr16$tissue='ovary'
gonads_PT103046_chr16$id='PT103046'
gonads_PT103046_chr16$chr='chr16'

gonads_PT104733_chr16 = read.table("PT104733/PT104733_gonads_mean_median_ratio_chr16.tsv", header=T)
colnames(gonads_PT104733_chr16) = c("chr", "mean", "median")
gonads_PT104733_chr16$tissue='ovary'
gonads_PT104733_chr16$id='PT104733'
gonads_PT104733_chr16$chr='chr16'

# adrenal
adrenal_PT104219_chr16 = read.table("PT104219/PT104219_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT104219_chr16) = c("chr", "mean", "median")
adrenal_PT104219_chr16$tissue='adrenal'
adrenal_PT104219_chr16$id='PT104219'
adrenal_PT104219_chr16$chr='chr16'

adrenal_PT105290_chr16 = read.table("PT105290/PT105290_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT105290_chr16) = c("chr", "mean", "median")
adrenal_PT105290_chr16$tissue='adrenal'
adrenal_PT105290_chr16$id='PT105290'
adrenal_PT105290_chr16$chr='chr16'

adrenal_PT102485_chr16 = read.table("PT102485/PT102485_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT102485_chr16) = c("chr", "mean", "median")
adrenal_PT102485_chr16$tissue='adrenal'
adrenal_PT102485_chr16$id='PT102485'
adrenal_PT102485_chr16$chr='chr16'

adrenal_PT101159_chr16 = read.table("PT101159/PT101159_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT101159_chr16) = c("chr", "mean", "median")
adrenal_PT101159_chr16$tissue='adrenal'
adrenal_PT101159_chr16$id='PT101159'
adrenal_PT101159_chr16$chr='chr16'

adrenal_PT105239_chr16 = read.table("PT105239/PT105239_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT105239_chr16) = c("chr", "mean", "median")
adrenal_PT105239_chr16$tissue='adrenal'
adrenal_PT105239_chr16$id='PT105239'
adrenal_PT105239_chr16$chr='chr16'

adrenal_PT104883_chr16 = read.table("PT104883/PT104883_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT104883_chr16) = c("chr", "mean", "median")
adrenal_PT104883_chr16$tissue='adrenal'
adrenal_PT104883_chr16$id='PT104883'
adrenal_PT104883_chr16$chr='chr16'

adrenal_PT103811_chr16 = read.table("PT103811/PT103811_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT103811_chr16) = c("chr", "mean", "median")
adrenal_PT103811_chr16$tissue='adrenal'
adrenal_PT103811_chr16$id='PT103811'
adrenal_PT103811_chr16$chr='chr16'

adrenal_PT103352_chr16 = read.table("PT103352/PT103352_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT103352_chr16) = c("chr", "mean", "median")
adrenal_PT103352_chr16$tissue='adrenal'
adrenal_PT103352_chr16$id='PT103352'
adrenal_PT103352_chr16$chr='chr16'

adrenal_PT102842_chr16 = read.table("PT102842/PT102842_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT102842_chr16) = c("chr", "mean", "median")
adrenal_PT102842_chr16$tissue='adrenal'
adrenal_PT102842_chr16$id='PT102842'
adrenal_PT102842_chr16$chr='chr16'

adrenal_PT101210_chr16 = read.table("PT101210/PT101210_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT101210_chr16) = c("chr", "mean", "median")
adrenal_PT101210_chr16$tissue='adrenal'
adrenal_PT101210_chr16$id='PT101210'
adrenal_PT101210_chr16$chr='chr16'

adrenal_PT103046_chr16 = read.table("PT103046/PT103046_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT103046_chr16) = c("chr", "mean", "median")
adrenal_PT103046_chr16$tissue='adrenal'
adrenal_PT103046_chr16$id='PT103046'
adrenal_PT103046_chr16$chr='chr16'

adrenal_PT104733_chr16 = read.table("PT104733/PT104733_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT104733_chr16) = c("chr", "mean", "median")
adrenal_PT104733_chr16$tissue='adrenal'
adrenal_PT104733_chr16$id='PT104733'
adrenal_PT104733_chr16$chr='chr16'

adrenal_PT103760_chr16 = read.table("PT103760/PT103760_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT103760_chr16) = c("chr", "mean", "median")
adrenal_PT103760_chr16$tissue='adrenal'
adrenal_PT103760_chr16$id='PT103760'
adrenal_PT103760_chr16$chr='chr16'

adrenal_PT104270_chr16 = read.table("PT104270/PT104270_adrenal_mean_median_ratio_chr16.tsv", header=T)
colnames(adrenal_PT104270_chr16) = c("chr", "mean", "median")
adrenal_PT104270_chr16$tissue='adrenal'
adrenal_PT104270_chr16$id='PT104270'
adrenal_PT104270_chr16$chr='chr16'

# pituitary
pituitary_PT104219_chr16 = read.table("PT104219/PT104219_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT104219_chr16) = c("chr", "mean", "median")
pituitary_PT104219_chr16$tissue='pituitary'
pituitary_PT104219_chr16$id='PT104219'
pituitary_PT104219_chr16$chr='chr16'

pituitary_PT105290_chr16 = read.table("PT105290/PT105290_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT105290_chr16) = c("chr", "mean", "median")
pituitary_PT105290_chr16$tissue='pituitary'
pituitary_PT105290_chr16$id='PT105290'
pituitary_PT105290_chr16$chr='chr16'

pituitary_PT102485_chr16 = read.table("PT102485/PT102485_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT102485_chr16) = c("chr", "mean", "median")
pituitary_PT102485_chr16$tissue='pituitary'
pituitary_PT102485_chr16$id='PT102485'
pituitary_PT102485_chr16$chr='chr16'

pituitary_PT101159_chr16 = read.table("PT101159/PT101159_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT101159_chr16) = c("chr", "mean", "median")
pituitary_PT101159_chr16$tissue='pituitary'
pituitary_PT101159_chr16$id='PT101159'
pituitary_PT101159_chr16$chr='chr16'

pituitary_PT105239_chr16 = read.table("PT105239/PT105239_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT105239_chr16) = c("chr", "mean", "median")
pituitary_PT105239_chr16$tissue='pituitary'
pituitary_PT105239_chr16$id='PT105239'
pituitary_PT105239_chr16$chr='chr16'

pituitary_PT104883_chr16 = read.table("PT104883/PT104883_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT104883_chr16) = c("chr", "mean", "median")
pituitary_PT104883_chr16$tissue='pituitary'
pituitary_PT104883_chr16$id='PT104883'
pituitary_PT104883_chr16$chr='chr16'

pituitary_PT103811_chr16 = read.table("PT103811/PT103811_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT103811_chr16) = c("chr", "mean", "median")
pituitary_PT103811_chr16$tissue='pituitary'
pituitary_PT103811_chr16$id='PT103811'
pituitary_PT103811_chr16$chr='chr16'

pituitary_PT103352_chr16 = read.table("PT103352/PT103352_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT103352_chr16) = c("chr", "mean", "median")
pituitary_PT103352_chr16$tissue='pituitary'
pituitary_PT103352_chr16$id='PT103352'
pituitary_PT103352_chr16$chr='chr16'

pituitary_PT102842_chr16 = read.table("PT102842/PT102842_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT102842_chr16) = c("chr", "mean", "median")
pituitary_PT102842_chr16$tissue='pituitary'
pituitary_PT102842_chr16$id='PT102842'
pituitary_PT102842_chr16$chr='chr16'

pituitary_PT101210_chr16 = read.table("PT101210/PT101210_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT101210_chr16) = c("chr", "mean", "median")
pituitary_PT101210_chr16$tissue='pituitary'
pituitary_PT101210_chr16$id='PT101210'
pituitary_PT101210_chr16$chr='chr16'

pituitary_PT103046_chr16 = read.table("PT103046/PT103046_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT103046_chr16) = c("chr", "mean", "median")
pituitary_PT103046_chr16$tissue='pituitary'
pituitary_PT103046_chr16$id='PT103046'
pituitary_PT103046_chr16$chr='chr16'

pituitary_PT104733_chr16 = read.table("PT104733/PT104733_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT104733_chr16) = c("chr", "mean", "median")
pituitary_PT104733_chr16$tissue='pituitary'
pituitary_PT104733_chr16$id='PT104733'
pituitary_PT104733_chr16$chr='chr16'

pituitary_PT103760_chr16 = read.table("PT103760/PT103760_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT103760_chr16) = c("chr", "mean", "median")
pituitary_PT103760_chr16$tissue='pituitary'
pituitary_PT103760_chr16$id='PT103760'
pituitary_PT103760_chr16$chr='chr16'

pituitary_PT104270_chr16 = read.table("PT104270/PT104270_pituitary_mean_median_ratio_chr16.tsv", header=T)
colnames(pituitary_PT104270_chr16) = c("chr", "mean", "median")
pituitary_PT104270_chr16$tissue='pituitary'
pituitary_PT104270_chr16$id='PT104270'
pituitary_PT104270_chr16$chr='chr16'

# -----
# chr10
# -----
# heart
heart_PT104219_chr10 = read.table("PT104219/PT104219_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT104219_chr10$tissue='heart'
heart_PT104219_chr10$id='PT104219'
heart_PT104219_chr10$chr='chr10'

heart_PT105290_chr10 = read.table("PT105290/PT105290_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT105290_chr10$tissue='heart'
heart_PT105290_chr10$id='PT105290'
heart_PT105290_chr10$chr='chr10'

heart_PT102485_chr10 = read.table("PT102485/PT102485_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT102485_chr10$tissue='heart'
heart_PT102485_chr10$id='PT102485'
heart_PT102485_chr10$chr='chr10'

heart_PT101159_chr10 = read.table("PT101159/PT101159_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT101159_chr10$tissue='heart'
heart_PT101159_chr10$id='PT101159'
heart_PT101159_chr10$chr='chr10'

heart_PT105239_chr10 = read.table("PT105239/PT105239_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT105239_chr10$tissue='heart'
heart_PT105239_chr10$id='PT105239'
heart_PT105239_chr10$chr='chr10'

heart_PT104883_chr10 = read.table("PT104883/PT104883_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT104883_chr10$tissue='heart'
heart_PT104883_chr10$id='PT104883'
heart_PT104883_chr10$chr='chr10'

heart_PT103811_chr10 = read.table("PT103811/PT103811_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT103811_chr10$tissue='heart'
heart_PT103811_chr10$id='PT103811'
heart_PT103811_chr10$chr='chr10'

heart_PT103352_chr10 = read.table("PT103352/PT103352_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT103352_chr10$tissue='heart'
heart_PT103352_chr10$id='PT103352'
heart_PT103352_chr10$chr='chr10'

heart_PT102842_chr10 = read.table("PT102842/PT102842_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT102842_chr10$tissue='heart'
heart_PT102842_chr10$id='PT102842'
heart_PT102842_chr10$chr='chr10'

heart_PT101210_chr10 = read.table("PT101210/PT101210_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT101210_chr10$tissue='heart'
heart_PT101210_chr10$id='PT101210'
heart_PT101210_chr10$chr='chr10'

heart_PT103046_chr10 = read.table("PT103046/PT103046_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT103046_chr10$tissue='heart'
heart_PT103046_chr10$id='PT103046'
heart_PT103046_chr10$chr='chr10'

heart_PT104733_chr10 = read.table("PT104733/PT104733_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT104733_chr10$tissue='heart'
heart_PT104733_chr10$id='PT104733'
heart_PT104733_chr10$chr='chr10'

heart_PT103760_chr10 = read.table("PT103760/PT103760_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT103760_chr10$tissue='heart'
heart_PT103760_chr10$id='PT103760'
heart_PT103760_chr10$chr='chr10'

heart_PT104270_chr10 = read.table("PT104270/PT104270_heart_mean_median_ratio_chr10.tsv", header=T)
heart_PT104270_chr10$tissue='heart'
heart_PT104270_chr10$id='PT104270'
heart_PT104270_chr10$chr='chr10'

# lung
lung_PT104219_chr10 = read.table("PT104219/PT104219_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT104219_chr10$tissue='lung'
lung_PT104219_chr10$id='PT104219'
lung_PT104219_chr10$chr='chr10'

lung_PT105290_chr10 = read.table("PT105290/PT105290_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT105290_chr10$tissue='lung'
lung_PT105290_chr10$id='PT105290'
lung_PT105290_chr10$chr='chr10'

lung_PT102485_chr10 = read.table("PT102485/PT102485_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT102485_chr10$tissue='lung'
lung_PT102485_chr10$id='PT102485'
lung_PT102485_chr10$chr='chr10'

lung_PT101159_chr10 = read.table("PT101159/PT101159_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT101159_chr10$tissue='lung'
lung_PT101159_chr10$id='PT101159'
lung_PT101159_chr10$chr='chr10'

lung_PT105239_chr10 = read.table("PT105239/PT105239_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT105239_chr10$tissue='lung'
lung_PT105239_chr10$id='PT105239'
lung_PT105239_chr10$chr='chr10'

lung_PT104883_chr10 = read.table("PT104883/PT104883_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT104883_chr10$tissue='lung'
lung_PT104883_chr10$id='PT104883'
lung_PT104883_chr10$chr='chr10'

lung_PT103811_chr10 = read.table("PT103811/PT103811_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT103811_chr10$tissue='lung'
lung_PT103811_chr10$id='PT103811'
lung_PT103811_chr10$chr='chr10'

lung_PT103352_chr10 = read.table("PT103352/PT103352_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT103352_chr10$tissue='lung'
lung_PT103352_chr10$id='PT103352'
lung_PT103352_chr10$chr='chr10'

lung_PT102842_chr10 = read.table("PT102842/PT102842_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT102842_chr10$tissue='lung'
lung_PT102842_chr10$id='PT102842'
lung_PT102842_chr10$chr='chr10'

lung_PT101210_chr10 = read.table("PT101210/PT101210_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT101210_chr10$tissue='lung'
lung_PT101210_chr10$id='PT101210'
lung_PT101210_chr10$chr='chr10'

lung_PT103760_chr10 = read.table("PT103760/PT103760_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT103760_chr10$tissue='lung'
lung_PT103760_chr10$id='PT103760'
lung_PT103760_chr10$chr='chr10'

lung_PT104270_chr10 = read.table("PT104270/PT104270_lung_mean_median_ratio_chr10.tsv", header=T)
lung_PT104270_chr10$tissue='lung'
lung_PT104270_chr10$id='PT104270'
lung_PT104270_chr10$chr='chr10'

# liver
liver_PT104219_chr10 = read.table("PT104219/PT104219_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT104219_chr10$tissue='liver'
liver_PT104219_chr10$id='PT104219'
liver_PT104219_chr10$chr='chr10'

liver_PT105290_chr10 = read.table("PT105290/PT105290_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT105290_chr10$tissue='liver'
liver_PT105290_chr10$id='PT105290'
liver_PT105290_chr10$chr='chr10'

liver_PT102485_chr10 = read.table("PT102485/PT102485_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT102485_chr10$tissue='liver'
liver_PT102485_chr10$id='PT102485'
liver_PT102485_chr10$chr='chr10'

liver_PT101159_chr10 = read.table("PT101159/PT101159_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT101159_chr10$tissue='liver'
liver_PT101159_chr10$id='PT101159'
liver_PT101159_chr10$chr='chr10'

liver_PT105239_chr10 = read.table("PT105239/PT105239_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT105239_chr10$tissue='liver'
liver_PT105239_chr10$id='PT105239'
liver_PT105239_chr10$chr='chr10'

liver_PT104883_chr10 = read.table("PT104883/PT104883_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT104883_chr10$tissue='liver'
liver_PT104883_chr10$id='PT104883'
liver_PT104883_chr10$chr='chr10'

liver_PT103811_chr10 = read.table("PT103811/PT103811_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT103811_chr10$tissue='liver'
liver_PT103811_chr10$id='PT103811'
liver_PT103811_chr10$chr='chr10'

liver_PT103352_chr10 = read.table("PT103352/PT103352_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT103352_chr10$tissue='liver'
liver_PT103352_chr10$id='PT103352'
liver_PT103352_chr10$chr='chr10'

liver_PT102842_chr10 = read.table("PT102842/PT102842_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT102842_chr10$tissue='liver'
liver_PT102842_chr10$id='PT102842'
liver_PT102842_chr10$chr='chr10'

liver_PT101210_chr10 = read.table("PT101210/PT101210_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT101210_chr10$tissue='liver'
liver_PT101210_chr10$id='PT101210'
liver_PT101210_chr10$chr='chr10'

liver_PT103046_chr10 = read.table("PT103046/PT103046_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT103046_chr10$tissue='liver'
liver_PT103046_chr10$id='PT103046'
liver_PT103046_chr10$chr='chr10'

liver_PT104733_chr10 = read.table("PT104733/PT104733_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT104733_chr10$tissue='liver'
liver_PT104733_chr10$id='PT104733'
liver_PT104733_chr10$chr='chr10'

liver_PT103760_chr10 = read.table("PT103760/PT103760_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT103760_chr10$tissue='liver'
liver_PT103760_chr10$id='PT103760'
liver_PT103760_chr10$chr='chr10'

liver_PT104270_chr10 = read.table("PT104270/PT104270_liver_mean_median_ratio_chr10.tsv", header=T)
liver_PT104270_chr10$tissue='liver'
liver_PT104270_chr10$id='PT104270'
liver_PT104270_chr10$chr='chr10'

# gonads
gonads_PT104219_chr10 = read.table("PT104219/PT104219_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT104219_chr10$tissue='ovary'
gonads_PT104219_chr10$id='PT104219'
gonads_PT104219_chr10$chr='chr10'

gonads_PT105290_chr10 = read.table("PT105290/PT105290_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT105290_chr10$tissue='ovary'
gonads_PT105290_chr10$id='PT105290'
gonads_PT105290_chr10$chr='chr10'

gonads_PT102485_chr10 = read.table("PT102485/PT102485_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT102485_chr10$tissue='ovary'
gonads_PT102485_chr10$id='PT102485'
gonads_PT102485_chr10$chr='chr10'

gonads_PT101159_chr10 = read.table("PT101159/PT101159_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT101159_chr10$tissue='ovary'
gonads_PT101159_chr10$id='PT101159'
gonads_PT101159_chr10$chr='chr10'

gonads_PT105239_chr10 = read.table("PT105239/PT105239_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT105239_chr10$tissue='ovary'
gonads_PT105239_chr10$id='PT105239'
gonads_PT105239_chr10$chr='chr10'

gonads_PT104883_chr10 = read.table("PT104883/PT104883_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT104883_chr10$tissue='ovary'
gonads_PT104883_chr10$id='PT104883'
gonads_PT104883_chr10$chr='chr10'

gonads_PT103811_chr10= read.table("PT103811/PT103811_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT103811_chr10$tissue='ovary'
gonads_PT103811_chr10$id='PT103811'
gonads_PT103811_chr10$chr='chr10'

gonads_PT103352_chr10 = read.table("PT103352/PT103352_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT103352_chr10$tissue='ovary'
gonads_PT103352_chr10$id='PT103352'
gonads_PT103352_chr10$chr='chr10'

gonads_PT102842_chr10 = read.table("PT102842/PT102842_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT102842_chr10$tissue='ovary'
gonads_PT102842_chr10$id='PT102842'
gonads_PT102842_chr10$chr='chr10'

gonads_PT101210_chr10 = read.table("PT101210/PT101210_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT101210_chr10$tissue='ovary'
gonads_PT101210_chr10$id='PT101210'
gonads_PT101210_chr10$chr='chr10'

gonads_PT103046_chr10 = read.table("PT103046/PT103046_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT103046_chr10$tissue='ovary'
gonads_PT103046_chr10$id='PT103046'
gonads_PT103046_chr10$chr='chr10'

gonads_PT104733_chr10 = read.table("PT104733/PT104733_gonads_mean_median_ratio_chr10.tsv", header=T)
gonads_PT104733_chr10$tissue='ovary'
gonads_PT104733_chr10$id='PT104733'
gonads_PT104733_chr10$chr='chr10'

# adrenal
adrenal_PT104219_chr10 = read.table("PT104219/PT104219_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT104219_chr10$tissue='adrenal'
adrenal_PT104219_chr10$id='PT104219'
adrenal_PT104219_chr10$chr='chr10'

adrenal_PT105290_chr10 = read.table("PT105290/PT105290_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT105290_chr10$tissue='adrenal'
adrenal_PT105290_chr10$id='PT105290'
adrenal_PT105290_chr10$chr='chr10'

adrenal_PT102485_chr10 = read.table("PT102485/PT102485_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT102485_chr10$tissue='adrenal'
adrenal_PT102485_chr10$id='PT102485'
adrenal_PT102485_chr10$chr='chr10'

adrenal_PT101159_chr10 = read.table("PT101159/PT101159_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT101159_chr10$tissue='adrenal'
adrenal_PT101159_chr10$id='PT101159'
adrenal_PT101159_chr10$chr='chr10'

adrenal_PT105239_chr10 = read.table("PT105239/PT105239_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT105239_chr10$tissue='adrenal'
adrenal_PT105239_chr10$id='PT105239'
adrenal_PT105239_chr10$chr='chr10'

adrenal_PT104883_chr10 = read.table("PT104883/PT104883_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT104883_chr10$tissue='adrenal'
adrenal_PT104883_chr10$id='PT104883'
adrenal_PT104883_chr10$chr='chr10'

adrenal_PT103811_chr10 = read.table("PT103811/PT103811_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT103811_chr10$tissue='adrenal'
adrenal_PT103811_chr10$id='PT103811'
adrenal_PT103811_chr10$chr='chr10'

adrenal_PT103352_chr10 = read.table("PT103352/PT103352_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT103352_chr10$tissue='adrenal'
adrenal_PT103352_chr10$id='PT103352'
adrenal_PT103352_chr10$chr='chr10'

adrenal_PT102842_chr10 = read.table("PT102842/PT102842_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT102842_chr10$tissue='adrenal'
adrenal_PT102842_chr10$id='PT102842'
adrenal_PT102842_chr10$chr='chr10'

adrenal_PT101210_chr10 = read.table("PT101210/PT101210_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT101210_chr10$tissue='adrenal'
adrenal_PT101210_chr10$id='PT101210'
adrenal_PT101210_chr10$chr='chr10'

adrenal_PT103046_chr10 = read.table("PT103046/PT103046_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT103046_chr10$tissue='adrenal'
adrenal_PT103046_chr10$id='PT103046'
adrenal_PT103046_chr10$chr='chr10'

adrenal_PT104733_chr10 = read.table("PT104733/PT104733_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT104733_chr10$tissue='adrenal'
adrenal_PT104733_chr10$id='PT104733'
adrenal_PT104733_chr10$chr='chr10'

adrenal_PT103760_chr10 = read.table("PT103760/PT103760_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT103760_chr10$tissue='adrenal'
adrenal_PT103760_chr10$id='PT103760'
adrenal_PT103760_chr10$chr='chr10'

adrenal_PT104270_chr10 = read.table("PT104270/PT104270_adrenal_mean_median_ratio_chr10.tsv", header=T)
adrenal_PT104270_chr10$tissue='adrenal'
adrenal_PT104270_chr10$id='PT104270'
adrenal_PT104270_chr10$chr='chr10'

# pituitary
pituitary_PT104219_chr10 = read.table("PT104219/PT104219_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT104219_chr10$tissue='pituitary'
pituitary_PT104219_chr10$id='PT104219'
pituitary_PT104219_chr10$chr='chr10'

pituitary_PT105290_chr10 = read.table("PT105290/PT105290_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT105290_chr10$tissue='pituitary'
pituitary_PT105290_chr10$id='PT105290'
pituitary_PT105290_chr10$chr='chr10'

pituitary_PT102485_chr10 = read.table("PT102485/PT102485_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT102485_chr10$tissue='pituitary'
pituitary_PT102485_chr10$id='PT102485'
pituitary_PT102485_chr10$chr='chr10'

pituitary_PT101159_chr10 = read.table("PT101159/PT101159_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT101159_chr10$tissue='pituitary'
pituitary_PT101159_chr10$id='PT101159'
pituitary_PT101159_chr10$chr='chr10'

pituitary_PT105239_chr10 = read.table("PT105239/PT105239_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT105239_chr10$tissue='pituitary'
pituitary_PT105239_chr10$id='PT105239'
pituitary_PT105239_chr10$chr='chr10'

pituitary_PT104883_chr10 = read.table("PT104883/PT104883_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT104883_chr10$tissue='pituitary'
pituitary_PT104883_chr10$id='PT104883'
pituitary_PT104883_chr10$chr='chr10'

pituitary_PT103811_chr10 = read.table("PT103811/PT103811_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT103811_chr10$tissue='pituitary'
pituitary_PT103811_chr10$id='PT103811'
pituitary_PT103811_chr10$chr='chr10'

pituitary_PT103352_chr10 = read.table("PT103352/PT103352_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT103352_chr10$tissue='pituitary'
pituitary_PT103352_chr10$id='PT103352'
pituitary_PT103352_chr10$chr='chr10'

pituitary_PT102842_chr10 = read.table("PT102842/PT102842_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT102842_chr10$tissue='pituitary'
pituitary_PT102842_chr10$id='PT102842'
pituitary_PT102842_chr10$chr='chr10'

pituitary_PT101210_chr10 = read.table("PT101210/PT101210_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT101210_chr10$tissue='pituitary'
pituitary_PT101210_chr10$id='PT101210'
pituitary_PT101210_chr10$chr='chr10'

pituitary_PT103046_chr10 = read.table("PT103046/PT103046_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT103046_chr10$tissue='pituitary'
pituitary_PT103046_chr10$id='PT103046'
pituitary_PT103046_chr10$chr='chr10'

pituitary_PT104733_chr10 = read.table("PT104733/PT104733_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT104733_chr10$tissue='pituitary'
pituitary_PT104733_chr10$id='PT104733'
pituitary_PT104733_chr10$chr='chr10'

pituitary_PT103760_chr10 = read.table("PT103760/PT103760_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT103760_chr10$tissue='pituitary'
pituitary_PT103760_chr10$id='PT103760'
pituitary_PT103760_chr10$chr='chr10'

pituitary_PT104270_chr10 = read.table("PT104270/PT104270_pituitary_mean_median_ratio_chr10.tsv", header=T)
pituitary_PT104270_chr10$tissue='pituitary'
pituitary_PT104270_chr10$id='PT104270'
pituitary_PT104270_chr10$chr='chr10'

combine_data = rbind(heart_PT104219_chr16, heart_PT105290_chr16, heart_PT102485_chr16, heart_PT101159_chr16, heart_PT105239_chr16, heart_PT104883_chr16, heart_PT103811_chr16, heart_PT103352_chr16, heart_PT102842_chr16, heart_PT101210_chr16, heart_PT103046_chr16, heart_PT104733_chr16, heart_PT103760_chr16, heart_PT104270_chr16, lung_PT104219_chr16, lung_PT105290_chr16, lung_PT102485_chr16, lung_PT101159_chr16, lung_PT105239_chr16, lung_PT104883_chr16, lung_PT103811_chr16, lung_PT103352_chr16, lung_PT102842_chr16, lung_PT101210_chr16, lung_PT103760_chr16, lung_PT104270_chr16, liver_PT104219_chr16, liver_PT105290_chr16, liver_PT102485_chr16, liver_PT101159_chr16, liver_PT105239_chr16, liver_PT104883_chr16, liver_PT103811_chr16, liver_PT103352_chr16, liver_PT102842_chr16, liver_PT101210_chr16, liver_PT103046_chr16, liver_PT104733_chr16, liver_PT103760_chr16, liver_PT104270_chr16, gonads_PT104219_chr16, gonads_PT105290_chr16, gonads_PT102485_chr16, gonads_PT101159_chr16, gonads_PT105239_chr16, gonads_PT104883_chr16, gonads_PT103811_chr16, gonads_PT103352_chr16, gonads_PT102842_chr16, gonads_PT101210_chr16, gonads_PT103046_chr16, gonads_PT104733_chr16, adrenal_PT104219_chr16, adrenal_PT105290_chr16, adrenal_PT102485_chr16, adrenal_PT101159_chr16, adrenal_PT105239_chr16, adrenal_PT104883_chr16, adrenal_PT103811_chr16, adrenal_PT103352_chr16, adrenal_PT102842_chr16, adrenal_PT101210_chr16, adrenal_PT103046_chr16, adrenal_PT104733_chr16, adrenal_PT103760_chr16, adrenal_PT104270_chr16, pituitary_PT104219_chr16, pituitary_PT105290_chr16, pituitary_PT102485_chr16, pituitary_PT101159_chr16, pituitary_PT105239_chr16, pituitary_PT104883_chr16, pituitary_PT103811_chr16, pituitary_PT103352_chr16, pituitary_PT102842_chr16, pituitary_PT101210_chr16, pituitary_PT103046_chr16, pituitary_PT104733_chr16, pituitary_PT103760_chr16, pituitary_PT104270_chr16, heart_PT104219_chr10, heart_PT105290_chr10, heart_PT102485_chr10, heart_PT101159_chr10, heart_PT105239_chr10, heart_PT104883_chr10, heart_PT103811_chr10, heart_PT103352_chr10, heart_PT102842_chr10, heart_PT101210_chr10, heart_PT103046_chr10, heart_PT104733_chr10, heart_PT103760_chr10, heart_PT104270_chr10, lung_PT104219_chr10, lung_PT105290_chr10, lung_PT102485_chr10, lung_PT101159_chr10, lung_PT105239_chr10, lung_PT104883_chr10, lung_PT103811_chr10, lung_PT103352_chr10, lung_PT102842_chr10, lung_PT101210_chr10, lung_PT103760_chr10, lung_PT104270_chr10, liver_PT104219_chr10, liver_PT105290_chr10, liver_PT102485_chr10, liver_PT101159_chr10, liver_PT105239_chr10, liver_PT104883_chr10, liver_PT103811_chr10, liver_PT103352_chr10, liver_PT102842_chr10, liver_PT101210_chr10, liver_PT103046_chr10, liver_PT104733_chr10, liver_PT103760_chr10, liver_PT104270_chr10, gonads_PT104219_chr10, gonads_PT105290_chr10, gonads_PT102485_chr10, gonads_PT101159_chr10, gonads_PT105239_chr10, gonads_PT104883_chr10, gonads_PT103811_chr10, gonads_PT103352_chr10, gonads_PT102842_chr10, gonads_PT101210_chr10, gonads_PT103046_chr10, gonads_PT104733_chr10, adrenal_PT104219_chr10, adrenal_PT105290_chr10, adrenal_PT102485_chr10, adrenal_PT101159_chr10, adrenal_PT105239_chr10, adrenal_PT104883_chr10, adrenal_PT103811_chr10, adrenal_PT103352_chr10, adrenal_PT102842_chr10, adrenal_PT101210_chr10, adrenal_PT103046_chr10, adrenal_PT104733_chr10, adrenal_PT103760_chr10, adrenal_PT104270_chr10, pituitary_PT104219_chr10, pituitary_PT105290_chr10, pituitary_PT102485_chr10, pituitary_PT101159_chr10, pituitary_PT105239_chr10, pituitary_PT104883_chr10, pituitary_PT103811_chr10, pituitary_PT103352_chr10, pituitary_PT102842_chr10, pituitary_PT101210_chr10, pituitary_PT103046_chr10, pituitary_PT104733_chr10, pituitary_PT103760_chr10, pituitary_PT104270_chr10)

png("/scratch/tphung3/Cayo_x_inactivation/12_manuscript_plots/figure_s3_violin_allindividuals_alltissues_chr10_vs_chr16_macaques.png", width = 9, height=4, units = "in", res = 300)
ggplot(combine_data, aes(x=tissue, y=median, fill=chr)) +
  geom_violin() +
  coord_cartesian(ylim=c(0.5, 1)) +
  theme_bw() + 
  scale_fill_manual(values = c("gray", "black")) +
  labs(x="Tissue", y = "Allele balance", title = "Macaque") +
  theme(axis.title = element_text(size = 20), axis.text = element_text(size = 18), plot.title = element_text(hjust = 0.5, size = 22), legend.title = element_blank(), legend.position="top", legend.text = element_text(margin = margin(r = 30, unit = "pt"), size=16), legend.spacing.x = unit(0.2, 'cm'))

dev.off()
