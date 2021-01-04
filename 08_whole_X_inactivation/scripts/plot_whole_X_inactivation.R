library(ggplot2)
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/")
samples <- list(
  "PT101159"=c('PT101159/PT101159_hap1_heart_hardfilter.tsv', 'PT101159/PT101159_hap1_lung_hardfilter.tsv', 'PT101159/PT101159_hap1_liver_hardfilter.tsv', 'PT101159/PT101159_hap1_adrenal_hardfilter.tsv', 'PT101159/PT101159_hap1_pituitary_hardfilter.tsv', 'PT101159/PT101159_hap1_gonads_hardfilter.tsv'),
  "PT101210"=c('PT101210/PT101210_hap1_heart_hardfilter.tsv', 'PT101210/PT101210_hap1_lung_hardfilter.tsv', 'PT101210/PT101210_hap1_liver_hardfilter.tsv', 'PT101210/PT101210_hap1_adrenal_hardfilter.tsv', 'PT101210/PT101210_hap1_pituitary_hardfilter.tsv', 'PT101210/PT101210_hap1_gonads_hardfilter.tsv'),
  "PT102485"=c('PT102485/PT102485_hap1_heart_hardfilter.tsv', 'PT102485/PT102485_hap1_lung_hardfilter.tsv', 'PT102485/PT102485_hap1_liver_hardfilter.tsv', 'PT102485/PT102485_hap1_adrenal_hardfilter.tsv', 'PT102485/PT102485_hap1_pituitary_hardfilter.tsv', 'PT102485/PT102485_hap1_gonads_hardfilter.tsv'),
  "PT102842"=c('PT102842/PT102842_hap1_heart_hardfilter.tsv', 'PT102842/PT102842_hap1_lung_hardfilter.tsv', 'PT102842/PT102842_hap1_liver_hardfilter.tsv', 'PT102842/PT102842_hap1_adrenal_hardfilter.tsv', 'PT102842/PT102842_hap1_pituitary_hardfilter.tsv', 'PT102842/PT102842_hap1_gonads_hardfilter.tsv'),
  "PT103352"=c('PT103352/PT103352_hap1_heart_hardfilter.tsv', 'PT103352/PT103352_hap1_lung_hardfilter.tsv', 'PT103352/PT103352_hap1_liver_hardfilter.tsv', 'PT103352/PT103352_hap1_adrenal_hardfilter.tsv', 'PT103352/PT103352_hap1_pituitary_hardfilter.tsv', 'PT103352/PT103352_hap1_gonads_hardfilter.tsv'),
  "PT103811"=c('PT103811/PT103811_hap1_heart_hardfilter.tsv', 'PT103811/PT103811_hap1_lung_hardfilter.tsv', 'PT103811/PT103811_hap1_liver_hardfilter.tsv', 'PT103811/PT103811_hap1_adrenal_hardfilter.tsv', 'PT103811/PT103811_hap1_pituitary_hardfilter.tsv', 'PT103811/PT103811_hap1_gonads_hardfilter.tsv'),
  "PT104219"=c('PT104219/PT104219_hap1_heart_hardfilter.tsv', 'PT104219/PT104219_hap1_lung_hardfilter.tsv', 'PT104219/PT104219_hap1_liver_hardfilter.tsv', 'PT104219/PT104219_hap1_adrenal_hardfilter.tsv', 'PT104219/PT104219_hap1_pituitary_hardfilter.tsv', 'PT104219/PT104219_hap1_gonads_hardfilter.tsv'),
  "PT104883"=c('PT104883/PT104883_hap1_heart_hardfilter.tsv', 'PT104883/PT104883_hap1_lung_hardfilter.tsv', 'PT104883/PT104883_hap1_liver_hardfilter.tsv', 'PT104883/PT104883_hap1_adrenal_hardfilter.tsv', 'PT104883/PT104883_hap1_pituitary_hardfilter.tsv', 'PT104883/PT104883_hap1_gonads_hardfilter.tsv'),
  "PT105239"=c('PT105239/PT105239_hap1_heart_hardfilter.tsv', 'PT105239/PT105239_hap1_lung_hardfilter.tsv', 'PT105239/PT105239_hap1_liver_hardfilter.tsv', 'PT105239/PT105239_hap1_adrenal_hardfilter.tsv', 'PT105239/PT105239_hap1_pituitary_hardfilter.tsv', 'PT105239/PT105239_hap1_gonads_hardfilter.tsv'),
  "PT105290"=c('PT105290/PT105290_hap1_heart_hardfilter.tsv', 'PT105290/PT105290_hap1_lung_hardfilter.tsv', 'PT105290/PT105290_hap1_liver_hardfilter.tsv', 'PT105290/PT105290_hap1_adrenal_hardfilter.tsv', 'PT105290/PT105290_hap1_pituitary_hardfilter.tsv', 'PT105290/PT105290_hap1_gonads_hardfilter.tsv'),
  "PT103046"=c('PT103046/PT103046_hap1_heart_hardfilter.tsv', 'PT103046/PT103046_hap1_liver_hardfilter.tsv', 'PT103046/PT103046_hap1_adrenal_hardfilter.tsv', 'PT103046/PT103046_hap1_pituitary_hardfilter.tsv', 'PT103046/PT103046_hap1_gonads_hardfilter.tsv'),
  "PT103760"=c('PT103760/PT103760_hap1_heart_hardfilter.tsv', 'PT103760/PT103760_hap1_lung_hardfilter.tsv', 'PT103760/PT103760_hap1_liver_hardfilter.tsv', 'PT103760/PT103760_hap1_adrenal_hardfilter.tsv', 'PT103760/PT103760_hap1_pituitary_hardfilter.tsv'),
  "PT104270"=c('PT104270/PT104270_hap1_heart_hardfilter.tsv', 'PT104270/PT104270_hap1_lung_hardfilter.tsv', 'PT104270/PT104270_hap1_liver_hardfilter.tsv', 'PT104270/PT104270_hap1_adrenal_hardfilter.tsv', 'PT104270/PT104270_hap1_pituitary_hardfilter.tsv' ),
  "PT104733"=c('PT104733/PT104733_hap1_heart_hardfilter.tsv', 'PT104733/PT104733_hap1_liver_hardfilter.tsv', 'PT104733/PT104733_hap1_adrenal_hardfilter.tsv', 'PT104733/PT104733_hap1_pituitary_hardfilter.tsv', 'PT104733/PT104733_hap1_gonads_hardfilter.tsv')
)

samples_2 = list(
  "PT103046"=c('PT103046/PT103046_hap1_heart_hardfilter.tsv', 'PT103046/PT103046_hap1_liver_hardfilter.tsv', 'PT103046/PT103046_hap1_adrenal_hardfilter.tsv', 'PT103046/PT103046_hap1_pituitary_hardfilter.tsv', 'PT103046/PT103046_hap1_gonads_hardfilter.tsv'),
  "PT104733"=c('PT104733/PT104733_hap1_heart_hardfilter.tsv', 'PT104733/PT104733_hap1_liver_hardfilter.tsv', 'PT104733/PT104733_hap1_adrenal_hardfilter.tsv', 'PT104733/PT104733_hap1_pituitary_hardfilter.tsv', 'PT104733/PT104733_hap1_gonads_hardfilter.tsv')
)

samples_3 = list(
  "PT103760"=c('PT103760/PT103760_hap1_heart_hardfilter.tsv', 'PT103760/PT103760_hap1_lung_hardfilter.tsv', 'PT103760/PT103760_hap1_liver_hardfilter.tsv', 'PT103760/PT103760_hap1_adrenal_hardfilter.tsv', 'PT103760/PT103760_hap1_pituitary_hardfilter.tsv'),
  "PT104270"=c('PT104270/PT104270_hap1_heart_hardfilter.tsv', 'PT104270/PT104270_hap1_lung_hardfilter.tsv', 'PT104270/PT104270_hap1_liver_hardfilter.tsv', 'PT104270/PT104270_hap1_adrenal_hardfilter.tsv', 'PT104270/PT104270_hap1_pituitary_hardfilter.tsv')
)

dir.rl = getwd()


PT101159_heart = read.csv(samples[['PT101159']][1], header = F, sep = '\t')
colnames(PT101159_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT101159_heart$sample = 'Heart'
PT101159_heart$name = 'PT101159'
PT101159_heart_rmPARs = subset(PT101159_heart, (PT101159_heart$pos<10001 | PT101159_heart$pos>2781479) & (PT101159_heart$pos<155701383 | PT101159_heart$pos>156030895))
PT101159_lung = read.csv(samples[['PT101159']][2], header = F, sep = '\t')
colnames(PT101159_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT101159_lung$sample = 'lung'
PT101159_lung$name = 'PT101159'
PT101159_lung_rmPARs = subset(PT101159_lung, (PT101159_lung$pos<10001 | PT101159_lung$pos>2781479) & (PT101159_lung$pos<155701383 | PT101159_lung$pos>156030895))
PT101159_liver = read.csv(samples[['PT101159']][3], header = F, sep = '\t')
colnames(PT101159_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT101159_liver$sample = 'liver'
PT101159_liver$name = 'PT101159'
PT101159_liver_rmPARs = subset(PT101159_liver, (PT101159_liver$pos<10001 | PT101159_liver$pos>2781479) & (PT101159_liver$pos<155701383 | PT101159_liver$pos>156030895))
PT101159_adrenal = read.csv(samples[['PT101159']][4], header = F, sep = '\t')
colnames(PT101159_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT101159_adrenal$sample = 'adrenal'
PT101159_adrenal$name = 'PT101159'
PT101159_adrenal_rmPARs = subset(PT101159_adrenal, (PT101159_adrenal$pos<10001 | PT101159_adrenal$pos>2781479) & (PT101159_adrenal$pos<155701383 | PT101159_adrenal$pos>156030895))
PT101159_pituitary = read.csv(samples[['PT101159']][5], header = F, sep = '\t')
colnames(PT101159_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT101159_pituitary$sample = 'pituitary'
PT101159_pituitary$name = 'PT101159'
PT101159_pituitary_rmPARs = subset(PT101159_pituitary, (PT101159_pituitary$pos<10001 | PT101159_pituitary$pos>2781479) & (PT101159_pituitary$pos<155701383 | PT101159_pituitary$pos>156030895))
PT101159_gonads = read.csv(samples[['PT101159']][6], header = F, sep = '\t')
colnames(PT101159_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT101159_gonads$sample = 'gonads'
PT101159_gonads$name = 'PT101159'
PT101159_gonads_rmPARs = subset(PT101159_gonads, (PT101159_gonads$pos<10001 | PT101159_gonads$pos>2781479) & (PT101159_gonads$pos<155701383 | PT101159_gonads$pos>156030895))

PT101210_heart = read.csv(samples[['PT101210']][1], header = F, sep = '\t')
colnames(PT101210_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT101210_heart$sample = 'Heart'
PT101210_heart$name = 'PT101210'
PT101210_heart_rmPARs = subset(PT101210_heart, (PT101210_heart$pos<10001 | PT101210_heart$pos>2781479) & (PT101210_heart$pos<155701383 | PT101210_heart$pos>156030895))
PT101210_lung = read.csv(samples[['PT101210']][2], header = F, sep = '\t')
colnames(PT101210_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT101210_lung$sample = 'lung'
PT101210_lung$name = 'PT101210'
PT101210_lung_rmPARs = subset(PT101210_lung, (PT101210_lung$pos<10001 | PT101210_lung$pos>2781479) & (PT101210_lung$pos<155701383 | PT101210_lung$pos>156030895))
PT101210_liver = read.csv(samples[['PT101210']][3], header = F, sep = '\t')
colnames(PT101210_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT101210_liver$sample = 'liver'
PT101210_liver$name = 'PT101210'
PT101210_liver_rmPARs = subset(PT101210_liver, (PT101210_liver$pos<10001 | PT101210_liver$pos>2781479) & (PT101210_liver$pos<155701383 | PT101210_liver$pos>156030895))
PT101210_adrenal = read.csv(samples[['PT101210']][4], header = F, sep = '\t')
colnames(PT101210_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT101210_adrenal$sample = 'adrenal'
PT101210_adrenal$name = 'PT101210'
PT101210_adrenal_rmPARs = subset(PT101210_adrenal, (PT101210_adrenal$pos<10001 | PT101210_adrenal$pos>2781479) & (PT101210_adrenal$pos<155701383 | PT101210_adrenal$pos>156030895))
PT101210_pituitary = read.csv(samples[['PT101210']][5], header = F, sep = '\t')
colnames(PT101210_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT101210_pituitary$sample = 'pituitary'
PT101210_pituitary$name = 'PT101210'
PT101210_pituitary_rmPARs = subset(PT101210_pituitary, (PT101210_pituitary$pos<10001 | PT101210_pituitary$pos>2781479) & (PT101210_pituitary$pos<155701383 | PT101210_pituitary$pos>156030895))
PT101210_gonads = read.csv(samples[['PT101210']][6], header = F, sep = '\t')
colnames(PT101210_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT101210_gonads$sample = 'gonads'
PT101210_gonads$name = 'PT101210'
PT101210_gonads_rmPARs = subset(PT101210_gonads, (PT101210_gonads$pos<10001 | PT101210_gonads$pos>2781479) & (PT101210_gonads$pos<155701383 | PT101210_gonads$pos>156030895))

PT102485_heart = read.csv(samples[['PT102485']][1], header = F, sep = '\t')
colnames(PT102485_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT102485_heart$sample = 'Heart'
PT102485_heart$name = 'PT102485'
PT102485_heart_rmPARs = subset(PT102485_heart, (PT102485_heart$pos<10001 | PT102485_heart$pos>2781479) & (PT102485_heart$pos<155701383 | PT102485_heart$pos>156030895))
PT102485_lung = read.csv(samples[['PT102485']][2], header = F, sep = '\t')
colnames(PT102485_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT102485_lung$sample = 'lung'
PT102485_lung$name = 'PT102485'
PT102485_lung_rmPARs = subset(PT102485_lung, (PT102485_lung$pos<10001 | PT102485_lung$pos>2781479) & (PT102485_lung$pos<155701383 | PT102485_lung$pos>156030895))
PT102485_liver = read.csv(samples[['PT102485']][3], header = F, sep = '\t')
colnames(PT102485_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT102485_liver$sample = 'liver'
PT102485_liver$name = 'PT102485'
PT102485_liver_rmPARs = subset(PT102485_liver, (PT102485_liver$pos<10001 | PT102485_liver$pos>2781479) & (PT102485_liver$pos<155701383 | PT102485_liver$pos>156030895))
PT102485_adrenal = read.csv(samples[['PT102485']][4], header = F, sep = '\t')
colnames(PT102485_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT102485_adrenal$sample = 'adrenal'
PT102485_adrenal$name = 'PT102485'
PT102485_adrenal_rmPARs = subset(PT102485_adrenal, (PT102485_adrenal$pos<10001 | PT102485_adrenal$pos>2781479) & (PT102485_adrenal$pos<155701383 | PT102485_adrenal$pos>156030895))
PT102485_pituitary = read.csv(samples[['PT102485']][5], header = F, sep = '\t')
colnames(PT102485_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT102485_pituitary$sample = 'pituitary'
PT102485_pituitary$name = 'PT102485'
PT102485_pituitary_rmPARs = subset(PT102485_pituitary, (PT102485_pituitary$pos<10001 | PT102485_pituitary$pos>2781479) & (PT102485_pituitary$pos<155701383 | PT102485_pituitary$pos>156030895))
PT102485_gonads = read.csv(samples[['PT102485']][6], header = F, sep = '\t')
colnames(PT102485_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT102485_gonads$sample = 'gonads'
PT102485_gonads$name = 'PT102485'
PT102485_gonads_rmPARs = subset(PT102485_gonads, (PT102485_gonads$pos<10001 | PT102485_gonads$pos>2781479) & (PT102485_gonads$pos<155701383 | PT102485_gonads$pos>156030895))

PT102842_heart = read.csv(samples[['PT102842']][1], header = F, sep = '\t')
colnames(PT102842_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT102842_heart$sample = 'Heart'
PT102842_heart$name = 'PT102842'
PT102842_heart_rmPARs = subset(PT102842_heart, (PT102842_heart$pos<10001 | PT102842_heart$pos>2781479) & (PT102842_heart$pos<155701383 | PT102842_heart$pos>156030895))
PT102842_lung = read.csv(samples[['PT102842']][2], header = F, sep = '\t')
colnames(PT102842_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT102842_lung$sample = 'lung'
PT102842_lung$name = 'PT102842'
PT102842_lung_rmPARs = subset(PT102842_lung, (PT102842_lung$pos<10001 | PT102842_lung$pos>2781479) & (PT102842_lung$pos<155701383 | PT102842_lung$pos>156030895))
PT102842_liver = read.csv(samples[['PT102842']][3], header = F, sep = '\t')
colnames(PT102842_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT102842_liver$sample = 'liver'
PT102842_liver$name = 'PT102842'
PT102842_liver_rmPARs = subset(PT102842_liver, (PT102842_liver$pos<10001 | PT102842_liver$pos>2781479) & (PT102842_liver$pos<155701383 | PT102842_liver$pos>156030895))
PT102842_adrenal = read.csv(samples[['PT102842']][4], header = F, sep = '\t')
colnames(PT102842_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT102842_adrenal$sample = 'adrenal'
PT102842_adrenal$name = 'PT102842'
PT102842_adrenal_rmPARs = subset(PT102842_adrenal, (PT102842_adrenal$pos<10001 | PT102842_adrenal$pos>2781479) & (PT102842_adrenal$pos<155701383 | PT102842_adrenal$pos>156030895))
PT102842_pituitary = read.csv(samples[['PT102842']][5], header = F, sep = '\t')
colnames(PT102842_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT102842_pituitary$sample = 'pituitary'
PT102842_pituitary$name = 'PT102842'
PT102842_pituitary_rmPARs = subset(PT102842_pituitary, (PT102842_pituitary$pos<10001 | PT102842_pituitary$pos>2781479) & (PT102842_pituitary$pos<155701383 | PT102842_pituitary$pos>156030895))
PT102842_gonads = read.csv(samples[['PT102842']][6], header = F, sep = '\t')
colnames(PT102842_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT102842_gonads$sample = 'gonads'
PT102842_gonads$name = 'PT102842'
PT102842_gonads_rmPARs = subset(PT102842_gonads, (PT102842_gonads$pos<10001 | PT102842_gonads$pos>2781479) & (PT102842_gonads$pos<155701383 | PT102842_gonads$pos>156030895))

PT103352_heart = read.csv(samples[['PT103352']][1], header = F, sep = '\t')
colnames(PT103352_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT103352_heart$sample = 'Heart'
PT103352_heart$name = 'PT103352'
PT103352_heart_rmPARs = subset(PT103352_heart, (PT103352_heart$pos<10001 | PT103352_heart$pos>2781479) & (PT103352_heart$pos<155701383 | PT103352_heart$pos>156030895))
PT103352_lung = read.csv(samples[['PT103352']][2], header = F, sep = '\t')
colnames(PT103352_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT103352_lung$sample = 'lung'
PT103352_lung$name = 'PT103352'
PT103352_lung_rmPARs = subset(PT103352_lung, (PT103352_lung$pos<10001 | PT103352_lung$pos>2781479) & (PT103352_lung$pos<155701383 | PT103352_lung$pos>156030895))
PT103352_liver = read.csv(samples[['PT103352']][3], header = F, sep = '\t')
colnames(PT103352_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT103352_liver$sample = 'liver'
PT103352_liver$name = 'PT103352'
PT103352_liver_rmPARs = subset(PT103352_liver, (PT103352_liver$pos<10001 | PT103352_liver$pos>2781479) & (PT103352_liver$pos<155701383 | PT103352_liver$pos>156030895))
PT103352_adrenal = read.csv(samples[['PT103352']][4], header = F, sep = '\t')
colnames(PT103352_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT103352_adrenal$sample = 'adrenal'
PT103352_adrenal$name = 'PT103352'
PT103352_adrenal_rmPARs = subset(PT103352_adrenal, (PT103352_adrenal$pos<10001 | PT103352_adrenal$pos>2781479) & (PT103352_adrenal$pos<155701383 | PT103352_adrenal$pos>156030895))
PT103352_pituitary = read.csv(samples[['PT103352']][5], header = F, sep = '\t')
colnames(PT103352_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT103352_pituitary$sample = 'pituitary'
PT103352_pituitary$name = 'PT103352'
PT103352_pituitary_rmPARs = subset(PT103352_pituitary, (PT103352_pituitary$pos<10001 | PT103352_pituitary$pos>2781479) & (PT103352_pituitary$pos<155701383 | PT103352_pituitary$pos>156030895))
PT103352_gonads = read.csv(samples[['PT103352']][6], header = F, sep = '\t')
colnames(PT103352_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT103352_gonads$sample = 'gonads'
PT103352_gonads$name = 'PT103352'
PT103352_gonads_rmPARs = subset(PT103352_gonads, (PT103352_gonads$pos<10001 | PT103352_gonads$pos>2781479) & (PT103352_gonads$pos<155701383 | PT103352_gonads$pos>156030895))

PT103811_heart = read.csv(samples[['PT103811']][1], header = F, sep = '\t')
colnames(PT103811_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT103811_heart$sample = 'Heart'
PT103811_heart$name = 'PT103811'
PT103811_heart_rmPARs = subset(PT103811_heart, (PT103811_heart$pos<10001 | PT103811_heart$pos>2781479) & (PT103811_heart$pos<155701383 | PT103811_heart$pos>156030895))
PT103811_lung = read.csv(samples[['PT103811']][2], header = F, sep = '\t')
colnames(PT103811_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT103811_lung$sample = 'lung'
PT103811_lung$name = 'PT103811'
PT103811_lung_rmPARs = subset(PT103811_lung, (PT103811_lung$pos<10001 | PT103811_lung$pos>2781479) & (PT103811_lung$pos<155701383 | PT103811_lung$pos>156030895))
PT103811_liver = read.csv(samples[['PT103811']][3], header = F, sep = '\t')
colnames(PT103811_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT103811_liver$sample = 'liver'
PT103811_liver$name = 'PT103811'
PT103811_liver_rmPARs = subset(PT103811_liver, (PT103811_liver$pos<10001 | PT103811_liver$pos>2781479) & (PT103811_liver$pos<155701383 | PT103811_liver$pos>156030895))
PT103811_adrenal = read.csv(samples[['PT103811']][4], header = F, sep = '\t')
colnames(PT103811_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT103811_adrenal$sample = 'adrenal'
PT103811_adrenal$name = 'PT103811'
PT103811_adrenal_rmPARs = subset(PT103811_adrenal, (PT103811_adrenal$pos<10001 | PT103811_adrenal$pos>2781479) & (PT103811_adrenal$pos<155701383 | PT103811_adrenal$pos>156030895))
PT103811_pituitary = read.csv(samples[['PT103811']][5], header = F, sep = '\t')
colnames(PT103811_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT103811_pituitary$sample = 'pituitary'
PT103811_pituitary$name = 'PT103811'
PT103811_pituitary_rmPARs = subset(PT103811_pituitary, (PT103811_pituitary$pos<10001 | PT103811_pituitary$pos>2781479) & (PT103811_pituitary$pos<155701383 | PT103811_pituitary$pos>156030895))
PT103811_gonads = read.csv(samples[['PT103811']][6], header = F, sep = '\t')
colnames(PT103811_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT103811_gonads$sample = 'gonads'
PT103811_gonads$name = 'PT103811'
PT103811_gonads_rmPARs = subset(PT103811_gonads, (PT103811_gonads$pos<10001 | PT103811_gonads$pos>2781479) & (PT103811_gonads$pos<155701383 | PT103811_gonads$pos>156030895))

PT104219_heart = read.csv(samples[['PT104219']][1], header = F, sep = '\t')
colnames(PT104219_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT104219_heart$sample = 'Heart'
PT104219_heart$name = 'PT104219'
PT104219_heart_rmPARs = subset(PT104219_heart, (PT104219_heart$pos<10001 | PT104219_heart$pos>2781479) & (PT104219_heart$pos<155701383 | PT104219_heart$pos>156030895))
PT104219_lung = read.csv(samples[['PT104219']][2], header = F, sep = '\t')
colnames(PT104219_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT104219_lung$sample = 'lung'
PT104219_lung$name = 'PT104219'
PT104219_lung_rmPARs = subset(PT104219_lung, (PT104219_lung$pos<10001 | PT104219_lung$pos>2781479) & (PT104219_lung$pos<155701383 | PT104219_lung$pos>156030895))
PT104219_liver = read.csv(samples[['PT104219']][3], header = F, sep = '\t')
colnames(PT104219_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT104219_liver$sample = 'liver'
PT104219_liver$name = 'PT104219'
PT104219_liver_rmPARs = subset(PT104219_liver, (PT104219_liver$pos<10001 | PT104219_liver$pos>2781479) & (PT104219_liver$pos<155701383 | PT104219_liver$pos>156030895))
PT104219_adrenal = read.csv(samples[['PT104219']][4], header = F, sep = '\t')
colnames(PT104219_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT104219_adrenal$sample = 'adrenal'
PT104219_adrenal$name = 'PT104219'
PT104219_adrenal_rmPARs = subset(PT104219_adrenal, (PT104219_adrenal$pos<10001 | PT104219_adrenal$pos>2781479) & (PT104219_adrenal$pos<155701383 | PT104219_adrenal$pos>156030895))
PT104219_pituitary = read.csv(samples[['PT104219']][5], header = F, sep = '\t')
colnames(PT104219_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT104219_pituitary$sample = 'pituitary'
PT104219_pituitary$name = 'PT104219'
PT104219_pituitary_rmPARs = subset(PT104219_pituitary, (PT104219_pituitary$pos<10001 | PT104219_pituitary$pos>2781479) & (PT104219_pituitary$pos<155701383 | PT104219_pituitary$pos>156030895))
PT104219_gonads = read.csv(samples[['PT104219']][6], header = F, sep = '\t')
colnames(PT104219_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT104219_gonads$sample = 'gonads'
PT104219_gonads$name = 'PT104219'
PT104219_gonads_rmPARs = subset(PT104219_gonads, (PT104219_gonads$pos<10001 | PT104219_gonads$pos>2781479) & (PT104219_gonads$pos<155701383 | PT104219_gonads$pos>156030895))

PT104883_heart = read.csv(samples[['PT104883']][1], header = F, sep = '\t')
colnames(PT104883_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT104883_heart$sample = 'Heart'
PT104883_heart$name = 'PT104883'
PT104883_heart_rmPARs = subset(PT104883_heart, (PT104883_heart$pos<10001 | PT104883_heart$pos>2781479) & (PT104883_heart$pos<155701383 | PT104883_heart$pos>156030895))
PT104883_lung = read.csv(samples[['PT104883']][2], header = F, sep = '\t')
colnames(PT104883_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT104883_lung$sample = 'lung'
PT104883_lung$name = 'PT104883'
PT104883_lung_rmPARs = subset(PT104883_lung, (PT104883_lung$pos<10001 | PT104883_lung$pos>2781479) & (PT104883_lung$pos<155701383 | PT104883_lung$pos>156030895))
PT104883_liver = read.csv(samples[['PT104883']][3], header = F, sep = '\t')
colnames(PT104883_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT104883_liver$sample = 'liver'
PT104883_liver$name = 'PT104883'
PT104883_liver_rmPARs = subset(PT104883_liver, (PT104883_liver$pos<10001 | PT104883_liver$pos>2781479) & (PT104883_liver$pos<155701383 | PT104883_liver$pos>156030895))
PT104883_adrenal = read.csv(samples[['PT104883']][4], header = F, sep = '\t')
colnames(PT104883_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT104883_adrenal$sample = 'adrenal'
PT104883_adrenal$name = 'PT104883'
PT104883_adrenal_rmPARs = subset(PT104883_adrenal, (PT104883_adrenal$pos<10001 | PT104883_adrenal$pos>2781479) & (PT104883_adrenal$pos<155701383 | PT104883_adrenal$pos>156030895))
PT104883_pituitary = read.csv(samples[['PT104883']][5], header = F, sep = '\t')
colnames(PT104883_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT104883_pituitary$sample = 'pituitary'
PT104883_pituitary$name = 'PT104883'
PT104883_pituitary_rmPARs = subset(PT104883_pituitary, (PT104883_pituitary$pos<10001 | PT104883_pituitary$pos>2781479) & (PT104883_pituitary$pos<155701383 | PT104883_pituitary$pos>156030895))
PT104883_gonads = read.csv(samples[['PT104883']][6], header = F, sep = '\t')
colnames(PT104883_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT104883_gonads$sample = 'gonads'
PT104883_gonads$name = 'PT104883'
PT104883_gonads_rmPARs = subset(PT104883_gonads, (PT104883_gonads$pos<10001 | PT104883_gonads$pos>2781479) & (PT104883_gonads$pos<155701383 | PT104883_gonads$pos>156030895))

PT105239_heart = read.csv(samples[['PT105239']][1], header = F, sep = '\t')
colnames(PT105239_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT105239_heart$sample = 'Heart'
PT105239_heart$name = 'PT105239'
PT105239_heart_rmPARs = subset(PT105239_heart, (PT105239_heart$pos<10001 | PT105239_heart$pos>2781479) & (PT105239_heart$pos<155701383 | PT105239_heart$pos>156030895))
PT105239_lung = read.csv(samples[['PT105239']][2], header = F, sep = '\t')
colnames(PT105239_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT105239_lung$sample = 'lung'
PT105239_lung$name = 'PT105239'
PT105239_lung_rmPARs = subset(PT105239_lung, (PT105239_lung$pos<10001 | PT105239_lung$pos>2781479) & (PT105239_lung$pos<155701383 | PT105239_lung$pos>156030895))
PT105239_liver = read.csv(samples[['PT105239']][3], header = F, sep = '\t')
colnames(PT105239_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT105239_liver$sample = 'liver'
PT105239_liver$name = 'PT105239'
PT105239_liver_rmPARs = subset(PT105239_liver, (PT105239_liver$pos<10001 | PT105239_liver$pos>2781479) & (PT105239_liver$pos<155701383 | PT105239_liver$pos>156030895))
PT105239_adrenal = read.csv(samples[['PT105239']][4], header = F, sep = '\t')
colnames(PT105239_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT105239_adrenal$sample = 'adrenal'
PT105239_adrenal$name = 'PT105239'
PT105239_adrenal_rmPARs = subset(PT105239_adrenal, (PT105239_adrenal$pos<10001 | PT105239_adrenal$pos>2781479) & (PT105239_adrenal$pos<155701383 | PT105239_adrenal$pos>156030895))
PT105239_pituitary = read.csv(samples[['PT105239']][5], header = F, sep = '\t')
colnames(PT105239_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT105239_pituitary$sample = 'pituitary'
PT105239_pituitary$name = 'PT105239'
PT105239_pituitary_rmPARs = subset(PT105239_pituitary, (PT105239_pituitary$pos<10001 | PT105239_pituitary$pos>2781479) & (PT105239_pituitary$pos<155701383 | PT105239_pituitary$pos>156030895))
PT105239_gonads = read.csv(samples[['PT105239']][6], header = F, sep = '\t')
colnames(PT105239_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT105239_gonads$sample = 'gonads'
PT105239_gonads$name = 'PT105239'
PT105239_gonads_rmPARs = subset(PT105239_gonads, (PT105239_gonads$pos<10001 | PT105239_gonads$pos>2781479) & (PT105239_gonads$pos<155701383 | PT105239_gonads$pos>156030895))

PT105290_heart = read.csv(samples[['PT105290']][1], header = F, sep = '\t')
colnames(PT105290_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT105290_heart$sample = 'Heart'
PT105290_heart$name = 'PT105290'
PT105290_heart_rmPARs = subset(PT105290_heart, (PT105290_heart$pos<10001 | PT105290_heart$pos>2781479) & (PT105290_heart$pos<155701383 | PT105290_heart$pos>156030895))
PT105290_lung = read.csv(samples[['PT105290']][2], header = F, sep = '\t')
colnames(PT105290_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT105290_lung$sample = 'lung'
PT105290_lung$name = 'PT105290'
PT105290_lung_rmPARs = subset(PT105290_lung, (PT105290_lung$pos<10001 | PT105290_lung$pos>2781479) & (PT105290_lung$pos<155701383 | PT105290_lung$pos>156030895))
PT105290_liver = read.csv(samples[['PT105290']][3], header = F, sep = '\t')
colnames(PT105290_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT105290_liver$sample = 'liver'
PT105290_liver$name = 'PT105290'
PT105290_liver_rmPARs = subset(PT105290_liver, (PT105290_liver$pos<10001 | PT105290_liver$pos>2781479) & (PT105290_liver$pos<155701383 | PT105290_liver$pos>156030895))
PT105290_adrenal = read.csv(samples[['PT105290']][4], header = F, sep = '\t')
colnames(PT105290_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT105290_adrenal$sample = 'adrenal'
PT105290_adrenal$name = 'PT105290'
PT105290_adrenal_rmPARs = subset(PT105290_adrenal, (PT105290_adrenal$pos<10001 | PT105290_adrenal$pos>2781479) & (PT105290_adrenal$pos<155701383 | PT105290_adrenal$pos>156030895))
PT105290_pituitary = read.csv(samples[['PT105290']][5], header = F, sep = '\t')
colnames(PT105290_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT105290_pituitary$sample = 'pituitary'
PT105290_pituitary$name = 'PT105290'
PT105290_pituitary_rmPARs = subset(PT105290_pituitary, (PT105290_pituitary$pos<10001 | PT105290_pituitary$pos>2781479) & (PT105290_pituitary$pos<155701383 | PT105290_pituitary$pos>156030895))
PT105290_gonads = read.csv(samples[['PT105290']][6], header = F, sep = '\t')
colnames(PT105290_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT105290_gonads$sample = 'gonads'
PT105290_gonads$name = 'PT105290'
PT105290_gonads_rmPARs = subset(PT105290_gonads, (PT105290_gonads$pos<10001 | PT105290_gonads$pos>2781479) & (PT105290_gonads$pos<155701383 | PT105290_gonads$pos>156030895))

PT103046_heart = read.csv(samples[['PT103046']][1], header = F, sep = '\t')
colnames(PT103046_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT103046_heart$sample = 'Heart'
PT103046_heart$name = 'PT103046'
PT103046_heart_rmPARs = subset(PT103046_heart, (PT103046_heart$pos<10001 | PT103046_heart$pos>2781479) & (PT103046_heart$pos<155701383 | PT103046_heart$pos>156030895))
PT103046_liver = read.csv(samples[['PT103046']][2], header = F, sep = '\t')
colnames(PT103046_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT103046_liver$sample = 'liver'
PT103046_liver$name = 'PT103046'
PT103046_liver_rmPARs = subset(PT103046_liver, (PT103046_liver$pos<10001 | PT103046_liver$pos>2781479) & (PT103046_liver$pos<155701383 | PT103046_liver$pos>156030895))
PT103046_adrenal = read.csv(samples[['PT103046']][3], header = F, sep = '\t')
colnames(PT103046_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT103046_adrenal$sample = 'adrenal'
PT103046_adrenal$name = 'PT103046'
PT103046_adrenal_rmPARs = subset(PT103046_adrenal, (PT103046_adrenal$pos<10001 | PT103046_adrenal$pos>2781479) & (PT103046_adrenal$pos<155701383 | PT103046_adrenal$pos>156030895))
PT103046_pituitary = read.csv(samples[['PT103046']][4], header = F, sep = '\t')
colnames(PT103046_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT103046_pituitary$sample = 'pituitary'
PT103046_pituitary$name = 'PT103046'
PT103046_pituitary_rmPARs = subset(PT103046_pituitary, (PT103046_pituitary$pos<10001 | PT103046_pituitary$pos>2781479) & (PT103046_pituitary$pos<155701383 | PT103046_pituitary$pos>156030895))
PT103046_gonads = read.csv(samples[['PT103046']][5], header = F, sep = '\t')
colnames(PT103046_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT103046_gonads$sample = 'gonads'
PT103046_gonads$name = 'PT103046'
PT103046_gonads_rmPARs = subset(PT103046_gonads, (PT103046_gonads$pos<10001 | PT103046_gonads$pos>2781479) & (PT103046_gonads$pos<155701383 | PT103046_gonads$pos>156030895))

PT104733_heart = read.csv(samples[['PT104733']][1], header = F, sep = '\t')
colnames(PT104733_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT104733_heart$sample = 'Heart'
PT104733_heart$name = 'PT104733'
PT104733_heart_rmPARs = subset(PT104733_heart, (PT104733_heart$pos<10001 | PT104733_heart$pos>2781479) & (PT104733_heart$pos<155701383 | PT104733_heart$pos>156030895))
PT104733_liver = read.csv(samples[['PT104733']][2], header = F, sep = '\t')
colnames(PT104733_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT104733_liver$sample = 'liver'
PT104733_liver$name = 'PT104733'
PT104733_liver_rmPARs = subset(PT104733_liver, (PT104733_liver$pos<10001 | PT104733_liver$pos>2781479) & (PT104733_liver$pos<155701383 | PT104733_liver$pos>156030895))
PT104733_adrenal = read.csv(samples[['PT104733']][3], header = F, sep = '\t')
colnames(PT104733_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT104733_adrenal$sample = 'adrenal'
PT104733_adrenal$name = 'PT104733'
PT104733_adrenal_rmPARs = subset(PT104733_adrenal, (PT104733_adrenal$pos<10001 | PT104733_adrenal$pos>2781479) & (PT104733_adrenal$pos<155701383 | PT104733_adrenal$pos>156030895))
PT104733_pituitary = read.csv(samples[['PT104733']][4], header = F, sep = '\t')
colnames(PT104733_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT104733_pituitary$sample = 'pituitary'
PT104733_pituitary$name = 'PT104733'
PT104733_pituitary_rmPARs = subset(PT104733_pituitary, (PT104733_pituitary$pos<10001 | PT104733_pituitary$pos>2781479) & (PT104733_pituitary$pos<155701383 | PT104733_pituitary$pos>156030895))
PT104733_gonads = read.csv(samples[['PT104733']][5], header = F, sep = '\t')
colnames(PT104733_gonads) = c('pos', 'count', 'totalCount', 'ratio')
PT104733_gonads$sample = 'gonads'
PT104733_gonads$name = 'PT104733'
PT104733_gonads_rmPARs = subset(PT104733_gonads, (PT104733_gonads$pos<10001 | PT104733_gonads$pos>2781479) & (PT104733_gonads$pos<155701383 | PT104733_gonads$pos>156030895))

PT103760_heart = read.csv(samples[['PT103760']][1], header = F, sep = '\t')
colnames(PT103760_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT103760_heart$sample = 'Heart'
PT103760_heart$name = 'PT103760'
PT103760_heart_rmPARs = subset(PT103760_heart, (PT103760_heart$pos<10001 | PT103760_heart$pos>2781479) & (PT103760_heart$pos<155701383 | PT103760_heart$pos>156030895))
PT103760_lung = read.csv(samples[['PT103760']][2], header = F, sep = '\t')
colnames(PT103760_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT103760_lung$sample = 'lung'
PT103760_lung$name = 'PT103760'
PT103760_lung_rmPARs = subset(PT103760_lung, (PT103760_lung$pos<10001 | PT103760_lung$pos>2781479) & (PT103760_lung$pos<155701383 | PT103760_lung$pos>156030895))
PT103760_liver = read.csv(samples[['PT103760']][3], header = F, sep = '\t')
colnames(PT103760_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT103760_liver$sample = 'liver'
PT103760_liver$name = 'PT103760'
PT103760_liver_rmPARs = subset(PT103760_liver, (PT103760_liver$pos<10001 | PT103760_liver$pos>2781479) & (PT103760_liver$pos<155701383 | PT103760_liver$pos>156030895))
PT103760_adrenal = read.csv(samples[['PT103760']][4], header = F, sep = '\t')
colnames(PT103760_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT103760_adrenal$sample = 'adrenal'
PT103760_adrenal$name = 'PT103760'
PT103760_adrenal_rmPARs = subset(PT103760_adrenal, (PT103760_adrenal$pos<10001 | PT103760_adrenal$pos>2781479) & (PT103760_adrenal$pos<155701383 | PT103760_adrenal$pos>156030895))
PT103760_pituitary = read.csv(samples[['PT103760']][5], header = F, sep = '\t')
colnames(PT103760_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT103760_pituitary$sample = 'pituitary'
PT103760_pituitary$name = 'PT103760'
PT103760_pituitary_rmPARs = subset(PT103760_pituitary, (PT103760_pituitary$pos<10001 | PT103760_pituitary$pos>2781479) & (PT103760_pituitary$pos<155701383 | PT103760_pituitary$pos>156030895))


PT104270_heart = read.csv(samples[['PT104270']][1], header = F, sep = '\t')
colnames(PT104270_heart) = c('pos', 'count', 'totalCount', 'ratio')
PT104270_heart$sample = 'Heart'
PT104270_heart$name = 'PT104270'
PT104270_heart_rmPARs = subset(PT104270_heart, (PT104270_heart$pos<10001 | PT104270_heart$pos>2781479) & (PT104270_heart$pos<155701383 | PT104270_heart$pos>156030895))
PT104270_lung = read.csv(samples[['PT104270']][2], header = F, sep = '\t')
colnames(PT104270_lung) = c('pos', 'count', 'totalCount', 'ratio')
PT104270_lung$sample = 'lung'
PT104270_lung$name = 'PT104270'
PT104270_lung_rmPARs = subset(PT104270_lung, (PT104270_lung$pos<10001 | PT104270_lung$pos>2781479) & (PT104270_lung$pos<155701383 | PT104270_lung$pos>156030895))
PT104270_liver = read.csv(samples[['PT104270']][3], header = F, sep = '\t')
colnames(PT104270_liver) = c('pos', 'count', 'totalCount', 'ratio')
PT104270_liver$sample = 'liver'
PT104270_liver$name = 'PT104270'
PT104270_liver_rmPARs = subset(PT104270_liver, (PT104270_liver$pos<10001 | PT104270_liver$pos>2781479) & (PT104270_liver$pos<155701383 | PT104270_liver$pos>156030895))
PT104270_adrenal = read.csv(samples[['PT104270']][4], header = F, sep = '\t')
colnames(PT104270_adrenal) = c('pos', 'count', 'totalCount', 'ratio')
PT104270_adrenal$sample = 'adrenal'
PT104270_adrenal$name = 'PT104270'
PT104270_adrenal_rmPARs = subset(PT104270_adrenal, (PT104270_adrenal$pos<10001 | PT104270_adrenal$pos>2781479) & (PT104270_adrenal$pos<155701383 | PT104270_adrenal$pos>156030895))
PT104270_pituitary = read.csv(samples[['PT104270']][5], header = F, sep = '\t')
colnames(PT104270_pituitary) = c('pos', 'count', 'totalCount', 'ratio')
PT104270_pituitary$sample = 'pituitary'
PT104270_pituitary$name = 'PT104270'
PT104270_pituitary_rmPARs = subset(PT104270_pituitary, (PT104270_pituitary$pos<10001 | PT104270_pituitary$pos>2781479) & (PT104270_pituitary$pos<155701383 | PT104270_pituitary$pos>156030895))


df_plot = data.frame(vals = c(median(PT101159_heart_rmPARs$ratio), median(PT101159_lung_rmPARs$ratio), median(PT101159_liver_rmPARs$ratio), median(PT101159_adrenal_rmPARs$ratio), median(PT101159_pituitary_rmPARs$ratio), median(PT101159_gonads_rmPARs$ratio), median(PT101210_heart_rmPARs$ratio), median(PT101210_lung_rmPARs$ratio), median(PT101210_liver_rmPARs$ratio), median(PT101210_adrenal_rmPARs$ratio), median(PT101210_pituitary_rmPARs$ratio), median(PT101210_gonads_rmPARs$ratio), median(PT102485_heart_rmPARs$ratio), median(PT102485_lung_rmPARs$ratio), median(PT102485_liver_rmPARs$ratio), median(PT102485_adrenal_rmPARs$ratio), median(PT102485_pituitary_rmPARs$ratio), median(PT102485_gonads_rmPARs$ratio), median(PT102842_heart_rmPARs$ratio), median(PT102842_lung_rmPARs$ratio), median(PT102842_liver_rmPARs$ratio), median(PT102842_adrenal_rmPARs$ratio), median(PT102842_pituitary_rmPARs$ratio), median(PT102842_gonads_rmPARs$ratio), median(PT103352_heart_rmPARs$ratio), median(PT103352_lung_rmPARs$ratio), median(PT103352_liver_rmPARs$ratio), median(PT103352_adrenal_rmPARs$ratio), median(PT103352_pituitary_rmPARs$ratio), median(PT103352_gonads_rmPARs$ratio), median(PT103811_heart_rmPARs$ratio), median(PT103811_lung_rmPARs$ratio), median(PT103811_liver_rmPARs$ratio), median(PT103811_adrenal_rmPARs$ratio), median(PT103811_pituitary_rmPARs$ratio), median(PT103811_gonads_rmPARs$ratio), median(PT104219_heart_rmPARs$ratio), median(PT104219_lung_rmPARs$ratio), median(PT104219_liver_rmPARs$ratio), median(PT104219_adrenal_rmPARs$ratio), median(PT104219_pituitary_rmPARs$ratio), median(PT104219_gonads_rmPARs$ratio), median(PT104883_heart_rmPARs$ratio), median(PT104883_lung_rmPARs$ratio), median(PT104883_liver_rmPARs$ratio), median(PT104883_adrenal_rmPARs$ratio), median(PT104883_pituitary_rmPARs$ratio), median(PT104883_gonads_rmPARs$ratio), median(PT105239_heart_rmPARs$ratio), median(PT105239_lung_rmPARs$ratio), median(PT105239_liver_rmPARs$ratio), median(PT105239_adrenal_rmPARs$ratio), median(PT105239_pituitary_rmPARs$ratio), median(PT105239_gonads_rmPARs$ratio), median(PT105290_heart_rmPARs$ratio), median(PT105290_lung_rmPARs$ratio), median(PT105290_liver_rmPARs$ratio), median(PT105290_adrenal_rmPARs$ratio), median(PT105290_pituitary_rmPARs$ratio), median(PT105290_gonads_rmPARs$ratio), median(PT103046_heart_rmPARs$ratio), NA, median(PT103046_liver_rmPARs$ratio), median(PT103046_adrenal_rmPARs$ratio), median(PT103046_pituitary_rmPARs$ratio), median(PT103046_gonads_rmPARs$ratio), median(PT104733_heart_rmPARs$ratio), NA, median(PT104733_liver_rmPARs$ratio), median(PT104733_adrenal_rmPARs$ratio), median(PT104733_pituitary_rmPARs$ratio), median(PT104733_gonads_rmPARs$ratio), median(PT103760_heart_rmPARs$ratio), median(PT103760_lung_rmPARs$ratio), median(PT103760_liver_rmPARs$ratio), median(PT103760_adrenal_rmPARs$ratio), median(PT103760_pituitary_rmPARs$ratio), NA, median(PT104270_heart_rmPARs$ratio), median(PT104270_lung_rmPARs$ratio), median(PT104270_liver_rmPARs$ratio), median(PT104270_adrenal_rmPARs$ratio), median(PT104270_pituitary_rmPARs$ratio), NA), Sites = c("Heart", "Lung", "Liver", "Adrenal", "Pituitary", "Gonads"), samples = c("20S", "20S", "20S", "20S", "20S", "20S", "I1720S", "I1720S", "I1720S", "I1720S", "I1720S", "I1720S", "V80", "V80", "V80", "V80", "V80", "V80", "2E9", "2E9", "2E9", "2E9", "2E9", "2E9", "36O", "36O", "36O", "36O", "36O", "36O", "48V", "48V", "48V", "48V", "48V", "48V", "56R", "56R", "56R", "56R", "56R", "56R", "5B6", "5B6", "5B6", "5B6", "5B6", "5B6", "7E0", "7E0", "7E0", "7E0", "7E0", "7E0", "7E3", "7E3", "7E3", "7E3", "7E3", "7E3", "I175B6", "I175B6", "I175B6", "I175B6", "I175B6", "I175B6", "I1756R", "I1756R", "I1756R", "I1756R", "I1756R", "I1756R", "I177E0", "I177E0", "I177E0", "I177E0", "I177E0", "I177E0", "I177E3", "I177E3", "I177E3", "I177E3", "I177E3", "I177E3"))

df_plot$Sites <- as.character(df_plot$Sites)
# df_plot$Sites <- factor(df_plot$Sites, levels=unique(df_plot$Sites))
df_plot$Sites <- factor(df_plot$Sites, levels=c("Heart", "Gonads", "Lung", "Liver", "Adrenal", "Pituitary"))

df_plot$samples <- as.character(df_plot$samples)
df_plot$samples <- factor(df_plot$samples, levels=c("5B6", "I175B6", "20S", "I1720S", "48V", "7E3", "I177E3", "36O", "7E0", "I177E0", "V80", "56R", "I1756R", "2E9"))

png("whole_X_median_hardfilter_073119.png", width = 13, height = 6, units = "in", res = 300)
ggplot(df_plot, aes(x=samples, y=vals, color=Sites, shape=Sites, size=Sites, fill=Sites)) +
  geom_point() +
  theme_bw() +
  coord_cartesian(ylim=c(0, 1)) +
  geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
  geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2) +
  scale_colour_manual(values=c("black", "black", "darkgray", "darkgray", "black", "black")) +
  scale_shape_manual(values=c(21, 24, 21, 24, 24, 21)) +
  scale_size_manual(values=c(5, 5, 5, 5, 5, 5)) +
  scale_fill_manual(values=c(NA, NA, "darkgray", "darkgray", "black", "black")) +
  geom_vline(xintercept = 2.5, size=1, color="black") +
  geom_vline(xintercept = 4.5, size=1, color="black") +
  geom_vline(xintercept = 7.5, size=1, color="black") +
  geom_vline(xintercept = 10.5, size=1, color="black") +
  geom_vline(xintercept = 13.5, size=1, color="black") +
  theme(axis.text.x = element_text(size=14, colour="black"), axis.text.y = element_text(size=14, colour = "black"), axis.title= element_text(size=18), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.title = element_text(size=16, face="bold"), legend.text = element_text(size=14)) +
  labs(x="Samples", y="Ratio") +
  annotate("text", x=1, y=1, label="M", size=7) +
  annotate("text", x=2, y=1, label="D", size=7) +
  annotate("text", x=3, y=1, label="M", size=7) +
  annotate("text", x=4, y=1, label="D", size=7) +
  annotate("text", x=5, y=1, label="GM", size=7) +
  annotate("text", x=6, y=1, label="M", size=7) +
  annotate("text", x=7, y=1, label="D", size=7) +
  annotate("text", x=8, y=1, label="GM", size=7) +
  annotate("text", x=9, y=1, label="M", size=7) +
  annotate("text", x=10, y=1, label="D", size=7) +
  annotate("text", x=11, y=1, label="GM", size=7) +
  annotate("text", x=12, y=1, label="M", size=7) +
  annotate("text", x=13, y=1, label="D", size=7) +
  annotate("text", x=14, y=1, label="UNK", size=7)
  
dev.off()

# ------------------------------------------------------------------------
# Plot patterns of XCI across X chromosome for each sample for each tissue
# ------------------------------------------------------------------------
dir.rl = getwd()

for (sample in names(samples)) {
  
  heart = read.csv(samples[[sample]][1], header = F, sep = '\t')
  colnames(heart) = c('pos', 'count', 'totalCount', 'ratio')
  
  lung = read.csv(samples[[sample]][2], header = F, sep = '\t')
  colnames(lung) = c('pos', 'count', 'totalCount', 'ratio')
  
  liver = read.csv(samples[[sample]][3], header = F, sep = '\t')
  colnames(liver) = c('pos', 'count', 'totalCount', 'ratio')
  
  adrenal = read.csv(samples[[sample]][4], header = F, sep = '\t')
  colnames(adrenal) = c('pos', 'count', 'totalCount', 'ratio')
  
  pituitary = read.csv(samples[[sample]][5], header = F, sep = '\t')
  colnames(pituitary) = c('pos', 'count', 'totalCount', 'ratio')
  
  gonads = read.csv(samples[[sample]][6], header = F, sep = '\t')
  colnames(gonads) = c('pos', 'count', 'totalCount', 'ratio')
  
  p1 = ggplot() +
  geom_point(heart, mapping = aes(x=pos, y=ratio), stroke=1.5) +
  coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Ratio", title="Heart") +
  theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
  geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
  geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot() +
    geom_point(lung, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Lung") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot() +
    geom_point(liver, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot() +
    geom_point(adrenal, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot() +
    geom_point(pituitary, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p6 = ggplot() +
    geom_point(gonads, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Gonads") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, p6, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("Figure_2_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# missing lung samples
for (sample in names(samples_2)) {
  
  heart = read.csv(samples_2[[sample]][1], header = F, sep = '\t')
  colnames(heart) = c('pos', 'count', 'totalCount', 'ratio')
  
  liver = read.csv(samples_2[[sample]][2], header = F, sep = '\t')
  colnames(liver) = c('pos', 'count', 'totalCount', 'ratio')
  
  adrenal = read.csv(samples_2[[sample]][3], header = F, sep = '\t')
  colnames(adrenal) = c('pos', 'count', 'totalCount', 'ratio')
  
  pituitary = read.csv(samples_2[[sample]][4], header = F, sep = '\t')
  colnames(pituitary) = c('pos', 'count', 'totalCount', 'ratio')
  
  gonads = read.csv(samples_2[[sample]][5], header = F, sep = '\t')
  colnames(gonads) = c('pos', 'count', 'totalCount', 'ratio')
  
  p1 = ggplot() +
    geom_point(heart, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot() +
    geom_point(liver, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot() +
    geom_point(adrenal, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot() +
    geom_point(pituitary, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot() +
    geom_point(gonads, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Gonads") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("Figure_2_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}

# missing gonads samples
for (sample in names(samples_3)) {
  
  heart = read.csv(samples_3[[sample]][1], header = F, sep = '\t')
  colnames(heart) = c('pos', 'count', 'totalCount', 'ratio')
  
  lung = read.csv(samples_3[[sample]][2], header = F, sep = '\t')
  colnames(lung) = c('pos', 'count', 'totalCount', 'ratio')
  
  liver = read.csv(samples_3[[sample]][3], header = F, sep = '\t')
  colnames(liver) = c('pos', 'count', 'totalCount', 'ratio')
  
  adrenal = read.csv(samples_3[[sample]][4], header = F, sep = '\t')
  colnames(adrenal) = c('pos', 'count', 'totalCount', 'ratio')
  
  pituitary = read.csv(samples_3[[sample]][5], header = F, sep = '\t')
  colnames(pituitary) = c('pos', 'count', 'totalCount', 'ratio')
  
  p1 = ggplot() +
    geom_point(heart, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Heart") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p2 = ggplot() +
    geom_point(lung, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Lung") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p3 = ggplot() +
    geom_point(liver, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Liver") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p4 = ggplot() +
    geom_point(adrenal, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Adrenal") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  
  p5 = ggplot() +
    geom_point(pituitary, mapping = aes(x=pos, y=ratio), stroke=1.5) +
    coord_cartesian(xlim = c(1, 156040895), ylim=c(0,1))+
    scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                       labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
    labs(x="chrX position (Mb)", y="Ratio", title="Pituitary") +
    theme(plot.title = element_text(hjust = 0.5, size=18), axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), panel.background = element_blank(), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm'), legend.position="none") +
    geom_hline(yintercept = 0.8, color="darkgray", size=0.75, linetype=2) +
    geom_hline(yintercept = 0.2, color="darkgray", size=0.75, linetype=2)
  gg = ggarrange(p1, p2, p3, p4, p5, ncol = 3, nrow=2)
  ggsave(file.path(dir.rl,"Plots",sprintf("Figure_2_%s.png",sample)),plot = gg, width = 15,height=6, dpi=300)
}