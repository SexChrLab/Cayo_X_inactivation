library(ggplot2)
library(ggpubr)

args = commandArgs(trailingOnly=TRUE)

id=args[1]
tissue=args[2]

setwd(paste("/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/", id, sep=""))

# chrX
chrX = read.csv(paste(id, "_", tissue, "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.tsv", sep=""), sep = '\t')
colnames(chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

chrX$refRatio = chrX$refCount/chrX$totalCount
chrX$altRatio = chrX$altCount/chrX$totalCount

chrX_ratio = c()
for (i in 1:nrow(chrX)) {
  row = chrX[i,]
  if (row$refRatio > row$altRatio) {
    chrX_ratio = c(chrX_ratio, row$refRatio)
  }
  else (chrX_ratio = c(chrX_ratio, row$altRatio))
}
chrX$ratio = chrX_ratio
chrX$chr = "chrX"

# chr8
chr8 = read.csv(paste(id, "_", tissue, "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr8.tsv", sep=""), sep = '\t')
colnames(chr8) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
chr8$refRatio = chr8$refCount/chr8$totalCount
chr8$altRatio = chr8$altCount/chr8$totalCount

chr8_ratio = c()
for (i in 1:nrow(chr8)) {
  row = chr8[i,]
  if (row$refRatio > row$altRatio) {
    chr8_ratio = c(chr8_ratio, row$refRatio)
  }
  else (chr8_ratio = c(chr8_ratio, row$altRatio))
}
chr8$ratio = chr8_ratio
chr8$chr = "chr8"

# combine chrX and chr8
combined_data = rbind(chrX, chr8)

png(paste("/scratch/tphung3/Cayo_x_inactivation/compare_chrX_chr8_distribution/plots/", id, "/", id, "_", tissue, ".png", sep = ""), width = 4, height = 3.5, units = "in", res = 300)
ggplot(combined_data, aes(x=chr, y=ratio)) + 
  geom_violin() +
  geom_boxplot(width=0.1) +
  theme_bw() +
  coord_cartesian(ylim=c(0.5,1)) +
  labs(x="Chromosome", y="Allele balance", title=tissue) +
  theme(plot.title = element_text(hjust = 0.5))
dev.off()

pvalues = data.frame(test=c("wilcox", "t.test", "ks.test"), pvals = c(wilcox.test(ratio ~ chr, data=combined_data)$p.value, t.test(ratio ~ chr, data=combined_data)$p.value, ks.test(chrX$ratio, chr8$ratio)$p.value))

write.table(pvalues, paste("/scratch/tphung3/Cayo_x_inactivation/compare_chrX_chr8_distribution/plots/", id, "/", id, "_", tissue, "_pvalues.txt", sep = ""), quote = F, row.names = F, sep = "\t")
