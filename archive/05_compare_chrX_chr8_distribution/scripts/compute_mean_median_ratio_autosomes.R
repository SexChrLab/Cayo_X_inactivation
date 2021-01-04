args = commandArgs(trailingOnly=TRUE)

id=args[1]
tissue=args[2]

# -------
# Macaque
# -------
# setwd(paste("/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/", id, sep=""))
# 
# # all of the chromosomes on the autosomes
# autosomes = read.csv(paste(id, "_", tissue, "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes_clean.tsv", sep=""), sep = '\t')
# colnames(autosomes) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
# autosomes$refRatio = autosomes$refCount/autosomes$totalCount
# autosomes$altRatio = autosomes$altCount/autosomes$totalCount
# 
# autosomes_ratio = c()
# for (i in 1:nrow(autosomes)) {
#   row = autosomes[i,]
#   if (row$refRatio > row$altRatio) {
#     autosomes_ratio = c(autosomes_ratio, row$refRatio)
#   }
#   else (autosomes_ratio = c(autosomes_ratio, row$altRatio))
# }
# autosomes_data = data.frame(chr="autosomes", mean=mean(autosomes_ratio), median=median(autosomes_ratio))
# write.table(autosomes_data, paste(id, "_", tissue, "_mean_median_ratio_autosomes_122719.tsv", sep=""), quote = F, sep = '\t', row.names = F)

# ------
# Humans
# ------
setwd(paste("/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/", id, sep=""))

# all of the chromosomes on the autosomes
autosomes = read.csv(paste(id, "_", tissue, "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_autosomes_cleans.tsv", sep=""), sep = '\t')
colnames(autosomes) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
autosomes$refRatio = autosomes$refCount/autosomes$totalCount
autosomes$altRatio = autosomes$altCount/autosomes$totalCount

autosomes_ratio = c()
for (i in 1:nrow(autosomes)) {
  row = autosomes[i,]
  if (row$refRatio > row$altRatio) {
    autosomes_ratio = c(autosomes_ratio, row$refRatio)
  }
  else (autosomes_ratio = c(autosomes_ratio, row$altRatio))
}
autosomes_data = data.frame(chr="autosomes", mean=mean(autosomes_ratio), median=median(autosomes_ratio))
write.table(autosomes_data, paste(id, "_", tissue, "_mean_median_ratio_autosomes_010720.tsv", sep=""), quote = F, sep = '\t', row.names = F)