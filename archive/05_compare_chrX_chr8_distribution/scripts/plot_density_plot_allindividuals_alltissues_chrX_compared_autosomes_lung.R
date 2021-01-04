library(ggplot2)
setwd("/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/")

# -----
# chrX
# -----
# PT104219
PT104219_lung_chrX = read.csv('PT104219/PT104219_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT104219_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT104219_lung_chrX$refRatio = PT104219_lung_chrX$refCount/PT104219_lung_chrX$totalCount
PT104219_lung_chrX$altRatio = PT104219_lung_chrX$altCount/PT104219_lung_chrX$totalCount

PT104219_lung_chrX_ratio = c()
for (i in 1:nrow(PT104219_lung_chrX)) {
  row = PT104219_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT104219_lung_chrX_ratio = c(PT104219_lung_chrX_ratio, row$refRatio)
  }
  else (PT104219_lung_chrX_ratio = c(PT104219_lung_chrX_ratio, row$altRatio))
}
PT104219_lung_chrX$allelebalance = PT104219_lung_chrX_ratio
PT104219_lung_chrX_rmPAR = subset(PT104219_lung_chrX, (PT104219_lung_chrX$pos<10001 | PT104219_lung_chrX$pos>2781479) & (PT104219_lung_chrX$pos<155701383 | PT104219_lung_chrX$pos>156030895))

# PT105290
PT105290_lung_chrX = read.csv('PT105290/PT105290_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT105290_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT105290_lung_chrX$refRatio = PT105290_lung_chrX$refCount/PT105290_lung_chrX$totalCount
PT105290_lung_chrX$altRatio = PT105290_lung_chrX$altCount/PT105290_lung_chrX$totalCount

PT105290_lung_chrX_ratio = c()
for (i in 1:nrow(PT105290_lung_chrX)) {
  row = PT105290_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT105290_lung_chrX_ratio = c(PT105290_lung_chrX_ratio, row$refRatio)
  }
  else (PT105290_lung_chrX_ratio = c(PT105290_lung_chrX_ratio, row$altRatio))
}
PT105290_lung_chrX$allelebalance = PT105290_lung_chrX_ratio
PT105290_lung_chrX_rmPAR = subset(PT105290_lung_chrX, (PT105290_lung_chrX$pos<10001 | PT105290_lung_chrX$pos>2781479) & (PT105290_lung_chrX$pos<155701383 | PT105290_lung_chrX$pos>156030895))

# PT102485
PT102485_lung_chrX = read.csv('PT102485/PT102485_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT102485_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT102485_lung_chrX$refRatio = PT102485_lung_chrX$refCount/PT102485_lung_chrX$totalCount
PT102485_lung_chrX$altRatio = PT102485_lung_chrX$altCount/PT102485_lung_chrX$totalCount

PT102485_lung_chrX_ratio = c()
for (i in 1:nrow(PT102485_lung_chrX)) {
  row = PT102485_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT102485_lung_chrX_ratio = c(PT102485_lung_chrX_ratio, row$refRatio)
  }
  else (PT102485_lung_chrX_ratio = c(PT102485_lung_chrX_ratio, row$altRatio))
}
PT102485_lung_chrX$allelebalance = PT102485_lung_chrX_ratio
PT102485_lung_chrX_rmPAR = subset(PT102485_lung_chrX, (PT102485_lung_chrX$pos<10001 | PT102485_lung_chrX$pos>2781479) & (PT102485_lung_chrX$pos<155701383 | PT102485_lung_chrX$pos>156030895))

# PT101159
PT101159_lung_chrX = read.csv('PT101159/PT101159_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT101159_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT101159_lung_chrX$refRatio = PT101159_lung_chrX$refCount/PT101159_lung_chrX$totalCount
PT101159_lung_chrX$altRatio = PT101159_lung_chrX$altCount/PT101159_lung_chrX$totalCount

PT101159_lung_chrX_ratio = c()
for (i in 1:nrow(PT101159_lung_chrX)) {
  row = PT101159_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT101159_lung_chrX_ratio = c(PT101159_lung_chrX_ratio, row$refRatio)
  }
  else (PT101159_lung_chrX_ratio = c(PT101159_lung_chrX_ratio, row$altRatio))
}
PT101159_lung_chrX$allelebalance = PT101159_lung_chrX_ratio
PT101159_lung_chrX_rmPAR = subset(PT101159_lung_chrX, (PT101159_lung_chrX$pos<10001 | PT101159_lung_chrX$pos>2781479) & (PT101159_lung_chrX$pos<155701383 | PT101159_lung_chrX$pos>156030895))

# PT105239
PT105239_lung_chrX = read.csv('PT105239/PT105239_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT105239_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT105239_lung_chrX$refRatio = PT105239_lung_chrX$refCount/PT105239_lung_chrX$totalCount
PT105239_lung_chrX$altRatio = PT105239_lung_chrX$altCount/PT105239_lung_chrX$totalCount

PT105239_lung_chrX_ratio = c()
for (i in 1:nrow(PT105239_lung_chrX)) {
  row = PT105239_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT105239_lung_chrX_ratio = c(PT105239_lung_chrX_ratio, row$refRatio)
  }
  else (PT105239_lung_chrX_ratio = c(PT105239_lung_chrX_ratio, row$altRatio))
}
PT105239_lung_chrX$allelebalance = PT105239_lung_chrX_ratio
PT105239_lung_chrX_rmPAR = subset(PT105239_lung_chrX, (PT105239_lung_chrX$pos<10001 | PT105239_lung_chrX$pos>2781479) & (PT105239_lung_chrX$pos<155701383 | PT105239_lung_chrX$pos>156030895))

# PT104883
PT104883_lung_chrX = read.csv('PT104883/PT104883_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT104883_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT104883_lung_chrX$refRatio = PT104883_lung_chrX$refCount/PT104883_lung_chrX$totalCount
PT104883_lung_chrX$altRatio = PT104883_lung_chrX$altCount/PT104883_lung_chrX$totalCount

PT104883_lung_chrX_ratio = c()
for (i in 1:nrow(PT104883_lung_chrX)) {
  row = PT104883_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT104883_lung_chrX_ratio = c(PT104883_lung_chrX_ratio, row$refRatio)
  }
  else (PT104883_lung_chrX_ratio = c(PT104883_lung_chrX_ratio, row$altRatio))
}
PT104883_lung_chrX$allelebalance = PT104883_lung_chrX_ratio
PT104883_lung_chrX_rmPAR = subset(PT104883_lung_chrX, (PT104883_lung_chrX$pos<10001 | PT104883_lung_chrX$pos>2781479) & (PT104883_lung_chrX$pos<155701383 | PT104883_lung_chrX$pos>156030895))

# PT103811
PT103811_lung_chrX = read.csv('PT103811/PT103811_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT103811_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT103811_lung_chrX$refRatio = PT103811_lung_chrX$refCount/PT103811_lung_chrX$totalCount
PT103811_lung_chrX$altRatio = PT103811_lung_chrX$altCount/PT103811_lung_chrX$totalCount

PT103811_lung_chrX_ratio = c()
for (i in 1:nrow(PT103811_lung_chrX)) {
  row = PT103811_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT103811_lung_chrX_ratio = c(PT103811_lung_chrX_ratio, row$refRatio)
  }
  else (PT103811_lung_chrX_ratio = c(PT103811_lung_chrX_ratio, row$altRatio))
}
PT103811_lung_chrX$allelebalance = PT103811_lung_chrX_ratio
PT103811_lung_chrX_rmPAR = subset(PT103811_lung_chrX, (PT103811_lung_chrX$pos<10001 | PT103811_lung_chrX$pos>2781479) & (PT103811_lung_chrX$pos<155701383 | PT103811_lung_chrX$pos>156030895))

# PT103352
PT103352_lung_chrX = read.csv('PT103352/PT103352_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT103352_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT103352_lung_chrX$refRatio = PT103352_lung_chrX$refCount/PT103352_lung_chrX$totalCount
PT103352_lung_chrX$altRatio = PT103352_lung_chrX$altCount/PT103352_lung_chrX$totalCount

PT103352_lung_chrX_ratio = c()
for (i in 1:nrow(PT103352_lung_chrX)) {
  row = PT103352_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT103352_lung_chrX_ratio = c(PT103352_lung_chrX_ratio, row$refRatio)
  }
  else (PT103352_lung_chrX_ratio = c(PT103352_lung_chrX_ratio, row$altRatio))
}
PT103352_lung_chrX$allelebalance = PT103352_lung_chrX_ratio
PT103352_lung_chrX_rmPAR = subset(PT103352_lung_chrX, (PT103352_lung_chrX$pos<10001 | PT103352_lung_chrX$pos>2781479) & (PT103352_lung_chrX$pos<155701383 | PT103352_lung_chrX$pos>156030895))

# PT102842
PT102842_lung_chrX = read.csv('PT102842/PT102842_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT102842_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT102842_lung_chrX$refRatio = PT102842_lung_chrX$refCount/PT102842_lung_chrX$totalCount
PT102842_lung_chrX$altRatio = PT102842_lung_chrX$altCount/PT102842_lung_chrX$totalCount

PT102842_lung_chrX_ratio = c()
for (i in 1:nrow(PT102842_lung_chrX)) {
  row = PT102842_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT102842_lung_chrX_ratio = c(PT102842_lung_chrX_ratio, row$refRatio)
  }
  else (PT102842_lung_chrX_ratio = c(PT102842_lung_chrX_ratio, row$altRatio))
}
PT102842_lung_chrX$allelebalance = PT102842_lung_chrX_ratio
PT102842_lung_chrX_rmPAR = subset(PT102842_lung_chrX, (PT102842_lung_chrX$pos<10001 | PT102842_lung_chrX$pos>2781479) & (PT102842_lung_chrX$pos<155701383 | PT102842_lung_chrX$pos>156030895))

# PT101210
PT101210_lung_chrX = read.csv('PT101210/PT101210_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT101210_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT101210_lung_chrX$refRatio = PT101210_lung_chrX$refCount/PT101210_lung_chrX$totalCount
PT101210_lung_chrX$altRatio = PT101210_lung_chrX$altCount/PT101210_lung_chrX$totalCount

PT101210_lung_chrX_ratio = c()
for (i in 1:nrow(PT101210_lung_chrX)) {
  row = PT101210_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT101210_lung_chrX_ratio = c(PT101210_lung_chrX_ratio, row$refRatio)
  }
  else (PT101210_lung_chrX_ratio = c(PT101210_lung_chrX_ratio, row$altRatio))
}
PT101210_lung_chrX$allelebalance = PT101210_lung_chrX_ratio
PT101210_lung_chrX_rmPAR = subset(PT101210_lung_chrX, (PT101210_lung_chrX$pos<10001 | PT101210_lung_chrX$pos>2781479) & (PT101210_lung_chrX$pos<155701383 | PT101210_lung_chrX$pos>156030895))

# PT103760
PT103760_lung_chrX = read.csv('PT103760/PT103760_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT103760_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT103760_lung_chrX$refRatio = PT103760_lung_chrX$refCount/PT103760_lung_chrX$totalCount
PT103760_lung_chrX$altRatio = PT103760_lung_chrX$altCount/PT103760_lung_chrX$totalCount

PT103760_lung_chrX_ratio = c()
for (i in 1:nrow(PT103760_lung_chrX)) {
  row = PT103760_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT103760_lung_chrX_ratio = c(PT103760_lung_chrX_ratio, row$refRatio)
  }
  else (PT103760_lung_chrX_ratio = c(PT103760_lung_chrX_ratio, row$altRatio))
}
PT103760_lung_chrX$allelebalance = PT103760_lung_chrX_ratio
PT103760_lung_chrX_rmPAR = subset(PT103760_lung_chrX, (PT103760_lung_chrX$pos<10001 | PT103760_lung_chrX$pos>2781479) & (PT103760_lung_chrX$pos<155701383 | PT103760_lung_chrX$pos>156030895))

# PT104270
PT104270_lung_chrX = read.csv('PT104270/PT104270_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', sep = "\t")
colnames(PT104270_lung_chrX) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT104270_lung_chrX$refRatio = PT104270_lung_chrX$refCount/PT104270_lung_chrX$totalCount
PT104270_lung_chrX$altRatio = PT104270_lung_chrX$altCount/PT104270_lung_chrX$totalCount

PT104270_lung_chrX_ratio = c()
for (i in 1:nrow(PT104270_lung_chrX)) {
  row = PT104270_lung_chrX[i,]
  if (row$refRatio > row$altRatio) {
    PT104270_lung_chrX_ratio = c(PT104270_lung_chrX_ratio, row$refRatio)
  }
  else (PT104270_lung_chrX_ratio = c(PT104270_lung_chrX_ratio, row$altRatio))
}
PT104270_lung_chrX$allelebalance = PT104270_lung_chrX_ratio
PT104270_lung_chrX_rmPAR = subset(PT104270_lung_chrX, (PT104270_lung_chrX$pos<10001 | PT104270_lung_chrX$pos>2781479) & (PT104270_lung_chrX$pos<155701383 | PT104270_lung_chrX$pos>156030895))

# -----
# chr16
# -----
# PT104219
PT104219_lung_chr16 = read.csv('PT104219/PT104219_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT104219_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT104219_lung_chr16$refRatio = PT104219_lung_chr16$refCount/PT104219_lung_chr16$totalCount
PT104219_lung_chr16$altRatio = PT104219_lung_chr16$altCount/PT104219_lung_chr16$totalCount

PT104219_lung_chr16_ratio = c()
for (i in 1:nrow(PT104219_lung_chr16)) {
  row = PT104219_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT104219_lung_chr16_ratio = c(PT104219_lung_chr16_ratio, row$refRatio)
  }
  else (PT104219_lung_chr16_ratio = c(PT104219_lung_chr16_ratio, row$altRatio))
}
PT104219_lung_chr16$allelebalance = PT104219_lung_chr16_ratio

# PT105290
PT105290_lung_chr16 = read.csv('PT105290/PT105290_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT105290_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT105290_lung_chr16$refRatio = PT105290_lung_chr16$refCount/PT105290_lung_chr16$totalCount
PT105290_lung_chr16$altRatio = PT105290_lung_chr16$altCount/PT105290_lung_chr16$totalCount

PT105290_lung_chr16_ratio = c()
for (i in 1:nrow(PT105290_lung_chr16)) {
  row = PT105290_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT105290_lung_chr16_ratio = c(PT105290_lung_chr16_ratio, row$refRatio)
  }
  else (PT105290_lung_chr16_ratio = c(PT105290_lung_chr16_ratio, row$altRatio))
}
PT105290_lung_chr16$allelebalance = PT105290_lung_chr16_ratio

# PT102485
PT102485_lung_chr16 = read.csv('PT102485/PT102485_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT102485_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT102485_lung_chr16$refRatio = PT102485_lung_chr16$refCount/PT102485_lung_chr16$totalCount
PT102485_lung_chr16$altRatio = PT102485_lung_chr16$altCount/PT102485_lung_chr16$totalCount

PT102485_lung_chr16_ratio = c()
for (i in 1:nrow(PT102485_lung_chr16)) {
  row = PT102485_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT102485_lung_chr16_ratio = c(PT102485_lung_chr16_ratio, row$refRatio)
  }
  else (PT102485_lung_chr16_ratio = c(PT102485_lung_chr16_ratio, row$altRatio))
}
PT102485_lung_chr16$allelebalance = PT102485_lung_chr16_ratio

# PT101159
PT101159_lung_chr16 = read.csv('PT101159/PT101159_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT101159_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT101159_lung_chr16$refRatio = PT101159_lung_chr16$refCount/PT101159_lung_chr16$totalCount
PT101159_lung_chr16$altRatio = PT101159_lung_chr16$altCount/PT101159_lung_chr16$totalCount

PT101159_lung_chr16_ratio = c()
for (i in 1:nrow(PT101159_lung_chr16)) {
  row = PT101159_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT101159_lung_chr16_ratio = c(PT101159_lung_chr16_ratio, row$refRatio)
  }
  else (PT101159_lung_chr16_ratio = c(PT101159_lung_chr16_ratio, row$altRatio))
}
PT101159_lung_chr16$allelebalance = PT101159_lung_chr16_ratio

# PT105239
PT105239_lung_chr16 = read.csv('PT105239/PT105239_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT105239_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT105239_lung_chr16$refRatio = PT105239_lung_chr16$refCount/PT105239_lung_chr16$totalCount
PT105239_lung_chr16$altRatio = PT105239_lung_chr16$altCount/PT105239_lung_chr16$totalCount

PT105239_lung_chr16_ratio = c()
for (i in 1:nrow(PT105239_lung_chr16)) {
  row = PT105239_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT105239_lung_chr16_ratio = c(PT105239_lung_chr16_ratio, row$refRatio)
  }
  else (PT105239_lung_chr16_ratio = c(PT105239_lung_chr16_ratio, row$altRatio))
}
PT105239_lung_chr16$allelebalance = PT105239_lung_chr16_ratio

# PT104883
PT104883_lung_chr16 = read.csv('PT104883/PT104883_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT104883_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT104883_lung_chr16$refRatio = PT104883_lung_chr16$refCount/PT104883_lung_chr16$totalCount
PT104883_lung_chr16$altRatio = PT104883_lung_chr16$altCount/PT104883_lung_chr16$totalCount

PT104883_lung_chr16_ratio = c()
for (i in 1:nrow(PT104883_lung_chr16)) {
  row = PT104883_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT104883_lung_chr16_ratio = c(PT104883_lung_chr16_ratio, row$refRatio)
  }
  else (PT104883_lung_chr16_ratio = c(PT104883_lung_chr16_ratio, row$altRatio))
}
PT104883_lung_chr16$allelebalance = PT104883_lung_chr16_ratio

# PT103811
PT103811_lung_chr16 = read.csv('PT103811/PT103811_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT103811_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT103811_lung_chr16$refRatio = PT103811_lung_chr16$refCount/PT103811_lung_chr16$totalCount
PT103811_lung_chr16$altRatio = PT103811_lung_chr16$altCount/PT103811_lung_chr16$totalCount

PT103811_lung_chr16_ratio = c()
for (i in 1:nrow(PT103811_lung_chr16)) {
  row = PT103811_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT103811_lung_chr16_ratio = c(PT103811_lung_chr16_ratio, row$refRatio)
  }
  else (PT103811_lung_chr16_ratio = c(PT103811_lung_chr16_ratio, row$altRatio))
}
PT103811_lung_chr16$allelebalance = PT103811_lung_chr16_ratio

# PT103352
PT103352_lung_chr16 = read.csv('PT103352/PT103352_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT103352_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT103352_lung_chr16$refRatio = PT103352_lung_chr16$refCount/PT103352_lung_chr16$totalCount
PT103352_lung_chr16$altRatio = PT103352_lung_chr16$altCount/PT103352_lung_chr16$totalCount

PT103352_lung_chr16_ratio = c()
for (i in 1:nrow(PT103352_lung_chr16)) {
  row = PT103352_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT103352_lung_chr16_ratio = c(PT103352_lung_chr16_ratio, row$refRatio)
  }
  else (PT103352_lung_chr16_ratio = c(PT103352_lung_chr16_ratio, row$altRatio))
}
PT103352_lung_chr16$allelebalance = PT103352_lung_chr16_ratio

# PT102842
PT102842_lung_chr16 = read.csv('PT102842/PT102842_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT102842_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT102842_lung_chr16$refRatio = PT102842_lung_chr16$refCount/PT102842_lung_chr16$totalCount
PT102842_lung_chr16$altRatio = PT102842_lung_chr16$altCount/PT102842_lung_chr16$totalCount

PT102842_lung_chr16_ratio = c()
for (i in 1:nrow(PT102842_lung_chr16)) {
  row = PT102842_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT102842_lung_chr16_ratio = c(PT102842_lung_chr16_ratio, row$refRatio)
  }
  else (PT102842_lung_chr16_ratio = c(PT102842_lung_chr16_ratio, row$altRatio))
}
PT102842_lung_chr16$allelebalance = PT102842_lung_chr16_ratio

# PT101210
PT101210_lung_chr16 = read.csv('PT101210/PT101210_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT101210_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT101210_lung_chr16$refRatio = PT101210_lung_chr16$refCount/PT101210_lung_chr16$totalCount
PT101210_lung_chr16$altRatio = PT101210_lung_chr16$altCount/PT101210_lung_chr16$totalCount

PT101210_lung_chr16_ratio = c()
for (i in 1:nrow(PT101210_lung_chr16)) {
  row = PT101210_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT101210_lung_chr16_ratio = c(PT101210_lung_chr16_ratio, row$refRatio)
  }
  else (PT101210_lung_chr16_ratio = c(PT101210_lung_chr16_ratio, row$altRatio))
}
PT101210_lung_chr16$allelebalance = PT101210_lung_chr16_ratio

# PT103760
PT103760_lung_chr16 = read.csv('PT103760/PT103760_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT103760_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT103760_lung_chr16$refRatio = PT103760_lung_chr16$refCount/PT103760_lung_chr16$totalCount
PT103760_lung_chr16$altRatio = PT103760_lung_chr16$altCount/PT103760_lung_chr16$totalCount

PT103760_lung_chr16_ratio = c()
for (i in 1:nrow(PT103760_lung_chr16)) {
  row = PT103760_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT103760_lung_chr16_ratio = c(PT103760_lung_chr16_ratio, row$refRatio)
  }
  else (PT103760_lung_chr16_ratio = c(PT103760_lung_chr16_ratio, row$altRatio))
}
PT103760_lung_chr16$allelebalance = PT103760_lung_chr16_ratio

# PT104270
PT104270_lung_chr16 = read.csv('PT104270/PT104270_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr16.tsv', sep = "\t")
colnames(PT104270_lung_chr16) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')

PT104270_lung_chr16$refRatio = PT104270_lung_chr16$refCount/PT104270_lung_chr16$totalCount
PT104270_lung_chr16$altRatio = PT104270_lung_chr16$altCount/PT104270_lung_chr16$totalCount

PT104270_lung_chr16_ratio = c()
for (i in 1:nrow(PT104270_lung_chr16)) {
  row = PT104270_lung_chr16[i,]
  if (row$refRatio > row$altRatio) {
    PT104270_lung_chr16_ratio = c(PT104270_lung_chr16_ratio, row$refRatio)
  }
  else (PT104270_lung_chr16_ratio = c(PT104270_lung_chr16_ratio, row$altRatio))
}
PT104270_lung_chr16$allelebalance = PT104270_lung_chr16_ratio

png("/scratch/tphung3/Cayo_x_inactivation/compare_chrX_chr8_distribution/plots/plot_density_plot_allindividuals_alltissues_chrX_compared_autosomes_lung.png", width = 9, height = 5.5, units = "in", res = 300)
colors <- c("chr16" = "black", "chrX" = "#40b0a6")
ggplot(data=PT104219_lung_chr16, aes(x=allelebalance, color="chr16")) +
  geom_density(size=1) +
  geom_density(data=PT105290_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT102485_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT101159_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT105239_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT104883_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT103811_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT103352_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT102842_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT101210_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT103760_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT104270_lung_chr16, size=1, aes(color="chr16")) +
  geom_density(data=PT104219_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT105290_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT102485_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT101159_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT105239_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT104883_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT103811_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT103352_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT102842_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT101210_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT103760_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  geom_density(data=PT104270_lung_chrX_rmPAR, size=1, aes(color="chrX")) +
  scale_color_manual(values = colors) +
  theme_bw() +
  coord_cartesian(x=c(0.5,1)) +
  labs(x="Allele balance", title="Lung", color = "Legend") +
  theme(axis.title = element_text(size = 20), axis.text = element_text(size = 18), plot.title = element_text(hjust = 0.5, size = 22), legend.title = element_blank(), legend.position="top", legend.text = element_text(margin = margin(r = 30, unit = "pt"), size=16))
dev.off()