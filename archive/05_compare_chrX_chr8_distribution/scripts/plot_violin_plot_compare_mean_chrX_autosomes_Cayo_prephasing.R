library(ggplot2)

args = commandArgs(trailingOnly=TRUE)

id=args[1]

setwd(paste("/agavescratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/", id, sep=""))

# heart
heart_autosomes = read.table(paste(id, "_", "heart_mean_median_ratio_autosomes.tsv", sep=""), header=T)
heart_autosomes$tissue='heart'
heart_chrX = read.table(paste(id, "_", "heart_mean_median_ratio_chrX.tsv", sep=""), header=T)
heart_chrX$tissue='heart'

# lung
lung_autosomes = read.table(paste(id, "_", "lung_mean_median_ratio_autosomes.tsv", sep=""), header=T)
lung_autosomes$tissue='lung'
lung_chrX = read.table(paste(id, "_", "lung_mean_median_ratio_chrX.tsv", sep=""), header=T)
lung_chrX$tissue='lung'

# liver
liver_autosomes = read.table(paste(id, "_", "liver_mean_median_ratio_autosomes.tsv", sep=""), header=T)
liver_autosomes$tissue='liver'
liver_chrX = read.table(paste(id, "_", "liver_mean_median_ratio_chrX.tsv", sep=""), header=T)
liver_chrX$tissue='liver'

# # gonads
# gonads_autosomes = read.table(paste(id, "_", "gonads_mean_median_ratio_autosomes.tsv", sep=""), header=T)
# gonads_autosomes$tissue='gonads'
# gonads_chrX = read.table(paste(id, "_", "gonads_mean_median_ratio_chrX.tsv", sep=""), header=T)
# gonads_chrX$tissue='gonads'

# adrenal
adrenal_autosomes = read.table(paste(id, "_", "adrenal_mean_median_ratio_autosomes.tsv", sep=""), header=T)
adrenal_autosomes$tissue='adrenal'
adrenal_chrX = read.table(paste(id, "_", "adrenal_mean_median_ratio_chrX.tsv", sep=""), header=T)
adrenal_chrX$tissue='adrenal'

# pituitary
pituitary_autosomes = read.table(paste(id, "_", "pituitary_mean_median_ratio_autosomes.tsv", sep=""), header=T)
pituitary_autosomes$tissue='pituitary'
pituitary_chrX = read.table(paste(id, "_", "pituitary_mean_median_ratio_chrX.tsv", sep=""), header=T)
pituitary_chrX$tissue='pituitary'

# combine
# combine_autosomes_data = rbind(heart_autosomes, lung_autosomes, liver_autosomes, gonads_autosomes, adrenal_autosomes, pituitary_autosomes)
# combine_chrX_data = rbind(heart_chrX, lung_chrX, liver_chrX, gonads_chrX, adrenal_chrX, pituitary_chrX)

# combine_autosomes_data = rbind(heart_autosomes, liver_autosomes, gonads_autosomes, adrenal_autosomes, pituitary_autosomes)
# combine_chrX_data = rbind(heart_chrX, liver_chrX, gonads_chrX, adrenal_chrX, pituitary_chrX)

combine_autosomes_data = rbind(heart_autosomes, lung_autosomes, liver_autosomes, adrenal_autosomes, pituitary_autosomes)
combine_chrX_data = rbind(heart_chrX, lung_chrX, liver_chrX, adrenal_chrX, pituitary_chrX)

png(paste("/scratch/tphung3/Cayo_x_inactivation/compare_chrX_chr8_distribution/plots/", id, "/", id, "_", "compare_mean_each_chr_to_chrX.png", sep = ""), width = 9, height = 6, units = "in", res = 300)
ggplot(combine_autosomes_data, aes(x=tissue, y=mean)) + 
  geom_violin() +
  geom_boxplot(width=0.1) +
  theme_bw() +
  coord_cartesian(ylim=c(0.5,1)) +
  labs(x='Tissue', y="Allele balance", title=id) +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "none") +
  geom_point(data = combine_chrX_data, aes(x=tissue, y=mean), color="#D55E00", size=3)
dev.off()