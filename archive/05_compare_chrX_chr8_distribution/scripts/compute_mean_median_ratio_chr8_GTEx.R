args = commandArgs(trailingOnly=TRUE)

id=args[1]
tissue=args[2]

setwd(paste("/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/", id, sep=""))

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

chr8_data = data.frame(chr="chr8", mean=mean(chr8_ratio), median=median(chr8_ratio))
write.table(chr8_data, paste(id, "_", tissue, "_mean_median_ratio_chr8.tsv", sep=""), quote = F, sep = '\t', row.names = F)
