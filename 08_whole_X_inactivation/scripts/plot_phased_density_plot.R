library(ggplot2)
library(ggpubr)
library(reshape2)

cayo_1_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT105290/PT105290_hap1_heart_hardfilter.tsv")
cayo_2_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT105239/PT105239_hap1_heart_hardfilter.tsv")
cayo_3_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104883/PT104883_hap1_heart_hardfilter.tsv")
cayo_4_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_heart_hardfilter.tsv")
cayo_5_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_heart_hardfilter.tsv")
cayo_6_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104219/PT104219_hap1_heart_hardfilter.tsv")
cayo_7_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103811/PT103811_hap1_heart_hardfilter.tsv")
cayo_8_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_heart_hardfilter.tsv")
cayo_9_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103352/PT103352_hap1_heart_hardfilter.tsv")
cayo_10_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_heart_hardfilter.tsv")
cayo_11_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT102842/PT102842_hap1_heart_hardfilter.tsv")
cayo_12_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT102485/PT102485_hap1_heart_hardfilter.tsv")
cayo_13_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101210/PT101210_hap1_heart_hardfilter.tsv")
cayo_14_heart = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101210/PT101210_hap1_heart_hardfilter.tsv")

p1 = ggplot(data = cayo_1_heart, aes(cayo_1_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT105290") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p2 = ggplot(data = cayo_2_heart, aes(cayo_2_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT105239") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p3 = ggplot(data = cayo_3_heart, aes(cayo_3_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT104883") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p4 = ggplot(data = cayo_4_heart, aes(cayo_4_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT104733") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p5 = ggplot(data = cayo_5_heart, aes(cayo_5_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT104270") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p6 = ggplot(data = cayo_6_heart, aes(cayo_6_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT104219") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p7 = ggplot(data = cayo_7_heart, aes(cayo_7_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT103811") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p8 = ggplot(data = cayo_8_heart, aes(cayo_8_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT103760") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p9 = ggplot(data = cayo_9_heart, aes(cayo_9_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT103352") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p10 = ggplot(data = cayo_10_heart, aes(cayo_10_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT103046") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p11 = ggplot(data = cayo_11_heart, aes(cayo_11_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT102842") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p12 = ggplot(data = cayo_12_heart, aes(cayo_12_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT102485") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p13 = ggplot(data = cayo_13_heart, aes(cayo_13_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT101210") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p14 = ggplot(data = cayo_14_heart, aes(cayo_14_heart[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="PT101159") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

ggarrange(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, ncol = 4, nrow = 4)

gtex_heart_1 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-131YS-0003/GTEX-131YS-0003_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
gtex_heart_2 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-15ER7-0002/GTEX-15ER7-0002_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
gtex_heart_3 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-14DAQ-0004/GTEX-14DAQ-0004_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
gtex_heart_4 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-12WSD-0002/GTEX-12WSD-0002_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
gtex_heart_5 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-11GSP-0004/GTEX-11GSP-0004_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
gtex_heart_6 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-1A32A-0001/GTEX-1A32A-0001_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
gtex_heart_7 = read.table("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-1A8FM-0004/GTEX-1A8FM-0004_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")

p1 = ggplot(data = gtex_heart_1, aes(gtex_heart_1[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-131YS-0003") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p2 = ggplot(data = gtex_heart_2, aes(gtex_heart_2[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-15ER7-0002") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p3 = ggplot(data = gtex_heart_3, aes(gtex_heart_3[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-14DAQ-0004") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p4 = ggplot(data = gtex_heart_4, aes(gtex_heart_4[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-12WSD-0002") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p5 = ggplot(data = gtex_heart_5, aes(gtex_heart_5[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-11GSP-0004") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p6 = ggplot(data = gtex_heart_6, aes(gtex_heart_6[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-1A32A-0001") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

p7 = ggplot(data = gtex_heart_7, aes(gtex_heart_7[,4])) +
  geom_density() +
  coord_cartesian(xlim=c(0,1)) +
  labs(x="Allele balance", title="GTEX-1A8FM-0004") +
  geom_vline(xintercept = 0.8, linetype=2) +
  theme_bw()

ggarrange(p1, p2, p3, p4, p5, p6, p7, ncol = 4, nrow = 2)

# 
all_data = list(cayo = cayo_heart[,4], gtex_1 = gtex_heart_1[,4])

all_data_forplotting = melt(all_data)

ggplot(all_data_forplotting,aes(x=value, fill=L1)) + geom_density(alpha=0.25) +
  coord_cartesian(xlim=c(0,1))