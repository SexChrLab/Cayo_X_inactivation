library(ggplot2)
library(ggpubr)

args = commandArgs(trailingOnly=TRUE)

id=args[1]
tissue=args[2]

setwd(paste("/agavescratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/", id, sep=""))

# chrX
chrX = read.csv(paste(id, "_", tissue, "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv", sep=""), sep = '\t')
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

# chr16
chr16 = read.csv(paste(id, "_", tissue, "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv", sep=""), sep = '\t')
colnames(chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
chr16$refRatio = chr16$refCount/chr16$totalCount
chr16$altRatio = chr16$altCount/chr16$totalCount

chr16_ratio = c()
for (i in 1:nrow(chr16)) {
  row = chr16[i,]
  if (row$refRatio > row$altRatio) {
    chr16_ratio = c(chr16_ratio, row$refRatio)
  }
  else (chr16_ratio = c(chr16_ratio, row$altRatio))
}
chr16$ratio = chr16_ratio
chr16$chr = "chr16"

# combine chrX and chr16
combined_data = rbind(chrX, chr16)

png(paste("/agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/plots/", id, "/", id, "_", tissue, ".png", sep = ""), width = 4, height = 3.5, units = "in", res = 300)
ggplot(combined_data, aes(x=chr, y=ratio)) + 
  geom_violin() +
  geom_boxplot(width=0.1) +
  theme_bw() +
  coord_cartesian(ylim=c(0.5,1)) +
  labs(x="Chromosome", y="Allele balance", title=tissue) +
  theme(plot.title = element_text(hjust = 0.5))
dev.off()

pvalues = data.frame(test=c("wilcox", "t.test", "ks.test"), pvals = c(wilcox.test(ratio ~ chr, data=combined_data)$p.value, t.test(ratio ~ chr, data=combined_data)$p.value, ks.test(chrX$ratio, chr16$ratio)$p.value))

write.table(pvalues, paste("/agavescratch/tphung3/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/stats/", id, "/", id, "_", tissue, "_pvalues.txt", sep = ""), quote = F, row.names = F, sep = "\t")
