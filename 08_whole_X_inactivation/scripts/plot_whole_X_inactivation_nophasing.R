library(ggplot2)
library(ggpubr)
setwd("/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/")
samples <- list(
  "PT101159"=c('PT101159/PT101159_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101159/PT101159_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101159/PT101159_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101159/PT101159_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101159/PT101159_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101159/PT101159_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT101210"=c('PT101210/PT101210_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101210/PT101210_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101210/PT101210_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101210/PT101210_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101210/PT101210_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT101210/PT101210_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT102485"=c('PT102485/PT102485_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102485/PT102485_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102485/PT102485_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102485/PT102485_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102485/PT102485_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102485/PT102485_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT102842"=c('PT102842/PT102842_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102842/PT102842_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102842/PT102842_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102842/PT102842_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102842/PT102842_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT102842/PT102842_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT103352"=c('PT103352/PT103352_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103352/PT103352_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103352/PT103352_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103352/PT103352_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103352/PT103352_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103352/PT103352_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT103811"=c('PT103811/PT103811_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103811/PT103811_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103811/PT103811_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103811/PT103811_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103811/PT103811_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103811/PT103811_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT104219"=c('PT104219/PT104219_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104219/PT104219_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104219/PT104219_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104219/PT104219_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104219/PT104219_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104219/PT104219_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT104883"=c('PT104883/PT104883_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104883/PT104883_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104883/PT104883_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104883/PT104883_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104883/PT104883_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104883/PT104883_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT105239"=c('PT105239/PT105239_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105239/PT105239_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105239/PT105239_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105239/PT105239_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105239/PT105239_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105239/PT105239_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT105290"=c('PT105290/PT105290_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105290/PT105290_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105290/PT105290_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105290/PT105290_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105290/PT105290_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT105290/PT105290_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv')
)

samples_2 = list(
  "PT103046"=c('PT103046/PT103046_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103046/PT103046_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103046/PT103046_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103046/PT103046_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103046/PT103046_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT104733"=c('PT104733/PT104733_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104733/PT104733_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104733/PT104733_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104733/PT104733_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104733/PT104733_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv')
)

samples_3 = list(
  "PT103760"=c('PT103760/PT103760_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103760/PT103760_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103760/PT103760_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103760/PT103760_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT103760/PT103760_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv'),
  "PT104270"=c('PT104270/PT104270_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104270/PT104270_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104270/PT104270_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104270/PT104270_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv', 'PT104270/PT104270_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv')
)

dir.rl = getwd()

for (sample in names(samples)) {
  # heart
  heart = read.csv(samples[[sample]][1], sep = '\t')
  colnames(heart) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  heart$refRatio = heart$refCount/heart$totalCount
  heart$altRatio = heart$altCount/heart$totalCount
  
  heart_ratio = c()
  for (i in 1:nrow(heart)) {
    row = heart[i,]
    if (row$refRatio > row$altRatio) {
      heart_ratio = c(heart_ratio, row$refRatio)
    }
    else (heart_ratio = c(heart_ratio, row$altRatio))
  }
  heart$ratio = heart_ratio
  
  # lung
  lung = read.csv(samples[[sample]][2], sep = '\t')
  colnames(lung) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  lung$refRatio = lung$refCount/lung$totalCount
  lung$altRatio = lung$altCount/lung$totalCount

  lung_ratio = c()
  for (i in 1:nrow(lung)) {
    row = lung[i,]
    if (row$refRatio > row$altRatio) {
      lung_ratio = c(lung_ratio, row$refRatio)
    }
    else (lung_ratio = c(lung_ratio, row$altRatio))
  }
  lung$ratio = lung_ratio
  
  # liver
  liver = read.csv(samples[[sample]][3], sep = '\t')
  colnames(liver) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  liver$refRatio = liver$refCount/liver$totalCount
  liver$altRatio = liver$altCount/liver$totalCount
  
  liver_ratio = c()
  for (i in 1:nrow(liver)) {
    row = liver[i,]
    if (row$refRatio > row$altRatio) {
      liver_ratio = c(liver_ratio, row$refRatio)
    }
    else (liver_ratio = c(liver_ratio, row$altRatio))
  }
  liver$ratio = liver_ratio
  
  # adrenal
  adrenal = read.csv(samples[[sample]][4], sep = '\t')
  colnames(adrenal) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  adrenal$refRatio = adrenal$refCount/adrenal$totalCount
  adrenal$altRatio = adrenal$altCount/adrenal$totalCount
  
  adrenal_ratio = c()
  for (i in 1:nrow(adrenal)) {
    row = adrenal[i,]
    if (row$refRatio > row$altRatio) {
      adrenal_ratio = c(adrenal_ratio, row$refRatio)
    }
    else (adrenal_ratio = c(adrenal_ratio, row$altRatio))
  }
  adrenal$ratio = adrenal_ratio
  
  # pituitary
  pituitary = read.csv(samples[[sample]][5], sep = '\t')
  colnames(pituitary) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  pituitary$refRatio = pituitary$refCount/pituitary$totalCount
  pituitary$altRatio = pituitary$altCount/pituitary$totalCount
  
  pituitary_ratio = c()
  for (i in 1:nrow(pituitary)) {
    row = pituitary[i,]
    if (row$refRatio > row$altRatio) {
      pituitary_ratio = c(pituitary_ratio, row$refRatio)
    }
    else (pituitary_ratio = c(pituitary_ratio, row$altRatio))
  }
  pituitary$ratio = pituitary_ratio
  
  # gonads
  gonads = read.csv(samples[[sample]][6], sep = '\t')
  colnames(gonads) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  gonads$refRatio = gonads$refCount/gonads$totalCount
  gonads$altRatio = gonads$altCount/gonads$totalCount
  
  gonads_ratio = c()
  for (i in 1:nrow(gonads)) {
    row = gonads[i,]
    if (row$refRatio > row$altRatio) {
      gonads_ratio = c(gonads_ratio, row$refRatio)
    }
    else (gonads_ratio = c(gonads_ratio, row$altRatio))
  }
  gonads$ratio = gonads_ratio
  
  p1 = ggplot() +
    geom_point(heart, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot() +
    geom_point(lung, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Lung") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot() +
    geom_point(liver, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot() +
    geom_point(adrenal, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot() +
    geom_point(pituitary, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p6 = ggplot() +
    geom_point(gonads, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Gonads") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, p6, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("whole_X_ratio_nophasing_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# missing lung samples
for (sample in names(samples_2)) {
  # heart
  heart = read.csv(samples_2[[sample]][1], sep = '\t')
  colnames(heart) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  heart$refRatio = heart$refCount/heart$totalCount
  heart$altRatio = heart$altCount/heart$totalCount
  
  heart_ratio = c()
  for (i in 1:nrow(heart)) {
    row = heart[i,]
    if (row$refRatio > row$altRatio) {
      heart_ratio = c(heart_ratio, row$refRatio)
    }
    else (heart_ratio = c(heart_ratio, row$altRatio))
  }
  heart$ratio = heart_ratio
  
  # liver
  liver = read.csv(samples_2[[sample]][2], sep = '\t')
  colnames(liver) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  liver$refRatio = liver$refCount/liver$totalCount
  liver$altRatio = liver$altCount/liver$totalCount
  
  liver_ratio = c()
  for (i in 1:nrow(liver)) {
    row = liver[i,]
    if (row$refRatio > row$altRatio) {
      liver_ratio = c(liver_ratio, row$refRatio)
    }
    else (liver_ratio = c(liver_ratio, row$altRatio))
  }
  liver$ratio = liver_ratio
  
  # adrenal
  adrenal = read.csv(samples_2[[sample]][3], sep = '\t')
  colnames(adrenal) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  adrenal$refRatio = adrenal$refCount/adrenal$totalCount
  adrenal$altRatio = adrenal$altCount/adrenal$totalCount
  
  adrenal_ratio = c()
  for (i in 1:nrow(adrenal)) {
    row = adrenal[i,]
    if (row$refRatio > row$altRatio) {
      adrenal_ratio = c(adrenal_ratio, row$refRatio)
    }
    else (adrenal_ratio = c(adrenal_ratio, row$altRatio))
  }
  adrenal$ratio = adrenal_ratio
  
  # pituitary
  pituitary = read.csv(samples_2[[sample]][4], sep = '\t')
  colnames(pituitary) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  pituitary$refRatio = pituitary$refCount/pituitary$totalCount
  pituitary$altRatio = pituitary$altCount/pituitary$totalCount
  
  pituitary_ratio = c()
  for (i in 1:nrow(pituitary)) {
    row = pituitary[i,]
    if (row$refRatio > row$altRatio) {
      pituitary_ratio = c(pituitary_ratio, row$refRatio)
    }
    else (pituitary_ratio = c(pituitary_ratio, row$altRatio))
  }
  pituitary$ratio = pituitary_ratio
  
  # gonads
  gonads = read.csv(samples_2[[sample]][5], sep = '\t')
  colnames(gonads) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  gonads$refRatio = gonads$refCount/gonads$totalCount
  gonads$altRatio = gonads$altCount/gonads$totalCount
  
  gonads_ratio = c()
  for (i in 1:nrow(gonads)) {
    row = gonads[i,]
    if (row$refRatio > row$altRatio) {
      gonads_ratio = c(gonads_ratio, row$refRatio)
    }
    else (gonads_ratio = c(gonads_ratio, row$altRatio))
  }
  gonads$ratio = gonads_ratio
  
  p1 = ggplot() +
    geom_point(heart, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot() +
    geom_point(liver, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot() +
    geom_point(adrenal, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot() +
    geom_point(pituitary, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot() +
    geom_point(gonads, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Gonads") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("whole_X_ratio_nophasing_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# missing gonads sample
for (sample in names(samples_3)) {
  # heart
  heart = read.csv(samples_3[[sample]][1], sep = '\t')
  colnames(heart) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  heart$refRatio = heart$refCount/heart$totalCount
  heart$altRatio = heart$altCount/heart$totalCount
  
  heart_ratio = c()
  for (i in 1:nrow(heart)) {
    row = heart[i,]
    if (row$refRatio > row$altRatio) {
      heart_ratio = c(heart_ratio, row$refRatio)
    }
    else (heart_ratio = c(heart_ratio, row$altRatio))
  }
  heart$ratio = heart_ratio
  
  # lung
  lung = read.csv(samples_3[[sample]][2], sep = '\t')
  colnames(lung) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  lung$refRatio = lung$refCount/lung$totalCount
  lung$altRatio = lung$altCount/lung$totalCount
  
  lung_ratio = c()
  for (i in 1:nrow(lung)) {
    row = lung[i,]
    if (row$refRatio > row$altRatio) {
      lung_ratio = c(lung_ratio, row$refRatio)
    }
    else (lung_ratio = c(lung_ratio, row$altRatio))
  }
  lung$ratio = lung_ratio
  
  # liver
  liver = read.csv(samples_3[[sample]][3], sep = '\t')
  colnames(liver) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  liver$refRatio = liver$refCount/liver$totalCount
  liver$altRatio = liver$altCount/liver$totalCount
  
  liver_ratio = c()
  for (i in 1:nrow(liver)) {
    row = liver[i,]
    if (row$refRatio > row$altRatio) {
      liver_ratio = c(liver_ratio, row$refRatio)
    }
    else (liver_ratio = c(liver_ratio, row$altRatio))
  }
  liver$ratio = liver_ratio
  
  # adrenal
  adrenal = read.csv(samples_3[[sample]][4], sep = '\t')
  colnames(adrenal) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  adrenal$refRatio = adrenal$refCount/adrenal$totalCount
  adrenal$altRatio = adrenal$altCount/adrenal$totalCount
  
  adrenal_ratio = c()
  for (i in 1:nrow(adrenal)) {
    row = adrenal[i,]
    if (row$refRatio > row$altRatio) {
      adrenal_ratio = c(adrenal_ratio, row$refRatio)
    }
    else (adrenal_ratio = c(adrenal_ratio, row$altRatio))
  }
  adrenal$ratio = adrenal_ratio
  
  # pituitary
  pituitary = read.csv(samples_3[[sample]][5], sep = '\t')
  colnames(pituitary) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  pituitary$refRatio = pituitary$refCount/pituitary$totalCount
  pituitary$altRatio = pituitary$altCount/pituitary$totalCount
  
  pituitary_ratio = c()
  for (i in 1:nrow(pituitary)) {
    row = pituitary[i,]
    if (row$refRatio > row$altRatio) {
      pituitary_ratio = c(pituitary_ratio, row$refRatio)
    }
    else (pituitary_ratio = c(pituitary_ratio, row$altRatio))
  }
  pituitary$ratio = pituitary_ratio
  
  p1 = ggplot() +
    geom_point(heart, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot() +
    geom_point(lung, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Lung") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot() +
    geom_point(liver, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot() +
    geom_point(adrenal, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot() +
    geom_point(pituitary, mapping = aes(x=position, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  gg = ggarrange(p1, p2, p3, p4, p5, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("whole_X_ratio_nophasing_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# ---------
# histogram
# ---------
for (sample in names(samples)) {
  # heart
  heart = read.csv(samples[[sample]][1], sep = '\t')
  colnames(heart) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  heart$refRatio = heart$refCount/heart$totalCount
  heart$altRatio = heart$altCount/heart$totalCount
  
  heart_ratio = c()
  for (i in 1:nrow(heart)) {
    row = heart[i,]
    if (row$refRatio > row$altRatio) {
      heart_ratio = c(heart_ratio, row$refRatio)
    }
    else (heart_ratio = c(heart_ratio, row$altRatio))
  }
  heart$ratio = heart_ratio
  
  # lung
  lung = read.csv(samples[[sample]][2], sep = '\t')
  colnames(lung) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  lung$refRatio = lung$refCount/lung$totalCount
  lung$altRatio = lung$altCount/lung$totalCount
  
  lung_ratio = c()
  for (i in 1:nrow(lung)) {
    row = lung[i,]
    if (row$refRatio > row$altRatio) {
      lung_ratio = c(lung_ratio, row$refRatio)
    }
    else (lung_ratio = c(lung_ratio, row$altRatio))
  }
  lung$ratio = lung_ratio
  
  # liver
  liver = read.csv(samples[[sample]][3], sep = '\t')
  colnames(liver) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  liver$refRatio = liver$refCount/liver$totalCount
  liver$altRatio = liver$altCount/liver$totalCount
  
  liver_ratio = c()
  for (i in 1:nrow(liver)) {
    row = liver[i,]
    if (row$refRatio > row$altRatio) {
      liver_ratio = c(liver_ratio, row$refRatio)
    }
    else (liver_ratio = c(liver_ratio, row$altRatio))
  }
  liver$ratio = liver_ratio
  
  # adrenal
  adrenal = read.csv(samples[[sample]][4], sep = '\t')
  colnames(adrenal) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  adrenal$refRatio = adrenal$refCount/adrenal$totalCount
  adrenal$altRatio = adrenal$altCount/adrenal$totalCount
  
  adrenal_ratio = c()
  for (i in 1:nrow(adrenal)) {
    row = adrenal[i,]
    if (row$refRatio > row$altRatio) {
      adrenal_ratio = c(adrenal_ratio, row$refRatio)
    }
    else (adrenal_ratio = c(adrenal_ratio, row$altRatio))
  }
  adrenal$ratio = adrenal_ratio
  
  # pituitary
  pituitary = read.csv(samples[[sample]][5], sep = '\t')
  colnames(pituitary) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  pituitary$refRatio = pituitary$refCount/pituitary$totalCount
  pituitary$altRatio = pituitary$altCount/pituitary$totalCount
  
  pituitary_ratio = c()
  for (i in 1:nrow(pituitary)) {
    row = pituitary[i,]
    if (row$refRatio > row$altRatio) {
      pituitary_ratio = c(pituitary_ratio, row$refRatio)
    }
    else (pituitary_ratio = c(pituitary_ratio, row$altRatio))
  }
  pituitary$ratio = pituitary_ratio
  
  # gonads
  gonads = read.csv(samples[[sample]][6], sep = '\t')
  colnames(gonads) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  gonads$refRatio = gonads$refCount/gonads$totalCount
  gonads$altRatio = gonads$altCount/gonads$totalCount
  
  gonads_ratio = c()
  for (i in 1:nrow(gonads)) {
    row = gonads[i,]
    if (row$refRatio > row$altRatio) {
      gonads_ratio = c(gonads_ratio, row$refRatio)
    }
    else (gonads_ratio = c(gonads_ratio, row$altRatio))
  }
  gonads$ratio = gonads_ratio
  
  p1 = ggplot(heart, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot(lung, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Lung") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot(liver, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot(adrenal, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot(pituitary, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p6 = ggplot(gonads, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Gonads") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, p6, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("histogram_ratio_nophasing_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# missing lung samples
for (sample in names(samples_2)) {
  # heart
  heart = read.csv(samples_2[[sample]][1], sep = '\t')
  colnames(heart) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  heart$refRatio = heart$refCount/heart$totalCount
  heart$altRatio = heart$altCount/heart$totalCount
  
  heart_ratio = c()
  for (i in 1:nrow(heart)) {
    row = heart[i,]
    if (row$refRatio > row$altRatio) {
      heart_ratio = c(heart_ratio, row$refRatio)
    }
    else (heart_ratio = c(heart_ratio, row$altRatio))
  }
  heart$ratio = heart_ratio
  
  # liver
  liver = read.csv(samples_2[[sample]][2], sep = '\t')
  colnames(liver) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  liver$refRatio = liver$refCount/liver$totalCount
  liver$altRatio = liver$altCount/liver$totalCount
  
  liver_ratio = c()
  for (i in 1:nrow(liver)) {
    row = liver[i,]
    if (row$refRatio > row$altRatio) {
      liver_ratio = c(liver_ratio, row$refRatio)
    }
    else (liver_ratio = c(liver_ratio, row$altRatio))
  }
  liver$ratio = liver_ratio
  
  # adrenal
  adrenal = read.csv(samples_2[[sample]][3], sep = '\t')
  colnames(adrenal) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  adrenal$refRatio = adrenal$refCount/adrenal$totalCount
  adrenal$altRatio = adrenal$altCount/adrenal$totalCount
  
  adrenal_ratio = c()
  for (i in 1:nrow(adrenal)) {
    row = adrenal[i,]
    if (row$refRatio > row$altRatio) {
      adrenal_ratio = c(adrenal_ratio, row$refRatio)
    }
    else (adrenal_ratio = c(adrenal_ratio, row$altRatio))
  }
  adrenal$ratio = adrenal_ratio
  
  # pituitary
  pituitary = read.csv(samples_2[[sample]][4], sep = '\t')
  colnames(pituitary) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  pituitary$refRatio = pituitary$refCount/pituitary$totalCount
  pituitary$altRatio = pituitary$altCount/pituitary$totalCount
  
  pituitary_ratio = c()
  for (i in 1:nrow(pituitary)) {
    row = pituitary[i,]
    if (row$refRatio > row$altRatio) {
      pituitary_ratio = c(pituitary_ratio, row$refRatio)
    }
    else (pituitary_ratio = c(pituitary_ratio, row$altRatio))
  }
  pituitary$ratio = pituitary_ratio
  
  # gonads
  gonads = read.csv(samples_2[[sample]][5], sep = '\t')
  colnames(gonads) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  gonads$refRatio = gonads$refCount/gonads$totalCount
  gonads$altRatio = gonads$altCount/gonads$totalCount
  
  gonads_ratio = c()
  for (i in 1:nrow(gonads)) {
    row = gonads[i,]
    if (row$refRatio > row$altRatio) {
      gonads_ratio = c(gonads_ratio, row$refRatio)
    }
    else (gonads_ratio = c(gonads_ratio, row$altRatio))
  }
  gonads$ratio = gonads_ratio
  
  p1 = ggplot(heart, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot(liver, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot(adrenal, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot(pituitary, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot(gonads, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Gonads") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("histogram_ratio_nophasing_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# missing gonads samples
for (sample in names(samples_3)) {
  # heart
  heart = read.csv(samples_3[[sample]][1], sep = '\t')
  colnames(heart) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  heart$refRatio = heart$refCount/heart$totalCount
  heart$altRatio = heart$altCount/heart$totalCount
  
  heart_ratio = c()
  for (i in 1:nrow(heart)) {
    row = heart[i,]
    if (row$refRatio > row$altRatio) {
      heart_ratio = c(heart_ratio, row$refRatio)
    }
    else (heart_ratio = c(heart_ratio, row$altRatio))
  }
  heart$ratio = heart_ratio
  
  # lung
  lung = read.csv(samples_3[[sample]][2], sep = '\t')
  colnames(lung) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  lung$refRatio = lung$refCount/lung$totalCount
  lung$altRatio = lung$altCount/lung$totalCount
  
  lung_ratio = c()
  for (i in 1:nrow(lung)) {
    row = lung[i,]
    if (row$refRatio > row$altRatio) {
      lung_ratio = c(lung_ratio, row$refRatio)
    }
    else (lung_ratio = c(lung_ratio, row$altRatio))
  }
  lung$ratio = lung_ratio
  
  # liver
  liver = read.csv(samples_3[[sample]][3], sep = '\t')
  colnames(liver) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  liver$refRatio = liver$refCount/liver$totalCount
  liver$altRatio = liver$altCount/liver$totalCount
  
  liver_ratio = c()
  for (i in 1:nrow(liver)) {
    row = liver[i,]
    if (row$refRatio > row$altRatio) {
      liver_ratio = c(liver_ratio, row$refRatio)
    }
    else (liver_ratio = c(liver_ratio, row$altRatio))
  }
  liver$ratio = liver_ratio
  
  # adrenal
  adrenal = read.csv(samples_3[[sample]][4], sep = '\t')
  colnames(adrenal) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  adrenal$refRatio = adrenal$refCount/adrenal$totalCount
  adrenal$altRatio = adrenal$altCount/adrenal$totalCount
  
  adrenal_ratio = c()
  for (i in 1:nrow(adrenal)) {
    row = adrenal[i,]
    if (row$refRatio > row$altRatio) {
      adrenal_ratio = c(adrenal_ratio, row$refRatio)
    }
    else (adrenal_ratio = c(adrenal_ratio, row$altRatio))
  }
  adrenal$ratio = adrenal_ratio
  
  # pituitary
  pituitary = read.csv(samples_3[[sample]][5], sep = '\t')
  colnames(pituitary) = c('contig', 'position', 'variantID', 'refAllele', 'altAllele', 'refCount', 'altCount', 'totalCount', 'lowMAPQDepth', 'lowBaseQDepth', 'rawDepth', 'otherBases', 'improperPairs')
  pituitary$refRatio = pituitary$refCount/pituitary$totalCount
  pituitary$altRatio = pituitary$altCount/pituitary$totalCount
  
  pituitary_ratio = c()
  for (i in 1:nrow(pituitary)) {
    row = pituitary[i,]
    if (row$refRatio > row$altRatio) {
      pituitary_ratio = c(pituitary_ratio, row$refRatio)
    }
    else (pituitary_ratio = c(pituitary_ratio, row$altRatio))
  }
  pituitary$ratio = pituitary_ratio
  
  p1 = ggplot(heart, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot(lung, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Lung") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot(liver, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot(adrenal, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot(pituitary, aes(ratio)) +
    geom_histogram() +
    coord_cartesian(xlim = c(0, 1)) +
    labs(x="Ratio", y="Count", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_vline(xintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_vline(xintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("histogram_ratio_nophasing_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}