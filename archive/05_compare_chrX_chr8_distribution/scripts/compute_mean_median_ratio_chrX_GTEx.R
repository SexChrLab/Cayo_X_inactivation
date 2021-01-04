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

chrX_data = data.frame(chr="chrX", mean=mean(chrX_ratio), median=median(chrX_ratio))
write.table(chrX_data, paste(id, "_", tissue, "_mean_median_ratio_chrX.tsv", sep=""), quote = F, sep = '\t', row.names = F)
