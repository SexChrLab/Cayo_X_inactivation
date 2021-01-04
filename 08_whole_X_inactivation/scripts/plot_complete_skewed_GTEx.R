library(ggplot2)

# GTEX-131YS-0003
# No data for heart
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-131YS-0003/")

# heart = read.table("GTEX-131YS-0003_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
liver = read.table("GTEX-131YS-0003_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
lung = read.table("GTEX-131YS-0003_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
ovary = read.table("GTEX-131YS-0003_ovary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
pituitary = read.table("GTEX-131YS-0003_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
adrenal = read.table("GTEX-131YS-0003_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")

# heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-131YS-0003_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-131YS-0003") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-15ER7-0002
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-15ER7-0002/")

heart = read.table("GTEX-15ER7-0002_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# liver = read.table("PT101210_hap1_liver_hardfilter_complete_skewed.tsv")
# lung = read.table("PT101210_hap1_lung_hardfilter_complete_skewed.tsv")
# ovary = read.table("PT101210_hap1_gonads_hardfilter_complete_skewed.tsv")
# pituitary = read.table("PT101210_hap1_pituitary_hardfilter_complete_skewed.tsv")
# adrenal = read.table("PT101210_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
# liver_label = rep("liver", nrow(liver))
# lung_label = rep("lung", nrow(lung))
# ovary_label = rep("ovary", nrow(ovary))
# pituitary_label = rep("pituitary", nrow(pituitary))
# adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label), allele_balance = 1, positions = c(heart[,1]))

cbbPalette <- c("#000000")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-15ER7-0002_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-15ER7-0002") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-14DAQ-0004
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-14DAQ-0004/")

heart = read.table("GTEX-14DAQ-0004_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# liver = read.table("PT102485_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("GTEX-14DAQ-0004_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
ovary = read.table("GTEX-14DAQ-0004_ovary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
pituitary = read.table("GTEX-14DAQ-0004_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
adrenal = read.table("GTEX-14DAQ-0004_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
# liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-14DAQ-0004_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-14DAQ-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-12WSD-0002
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-12WSD-0002/")

heart = read.table("GTEX-12WSD-0002_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
liver = read.table("GTEX-12WSD-0002_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# lung = read.table("PT102842_hap1_lung_hardfilter_complete_skewed.tsv")
# ovary = read.table("PT102842_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("GTEX-12WSD-0002_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# adrenal = read.table("PT102842_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
# lung_label = rep("lung", nrow(lung))
# ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
# adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, pituitary_label), allele_balance = 1, positions = c(heart[,1], liver[,1], pituitary[,1]))

cbbPalette <- c("#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-12WSD-0002_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-12WSD-0002") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103352
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-11GSP-0004/")

heart = read.table("GTEX-11GSP-0004_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# liver = read.table("PT103352_hap1_liver_hardfilter_complete_skewed.tsv")
# lung = read.table("PT103352_hap1_lung_hardfilter_complete_skewed.tsv")
# ovary = read.table("PT103352_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("GTEX-11GSP-0004_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# adrenal = read.table("PT103352_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
# liver_label = rep("liver", nrow(liver))
# lung_label = rep("lung", nrow(lung))
# ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
# adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, pituitary_label), allele_balance = 1, positions = c(heart[,1], pituitary[,1]))

cbbPalette <- c("#000000", "#E69F00")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-11GSP-0004_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-11GSP-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-1A32A-0001
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-1A32A-0001/")

heart = read.table("GTEX-1A32A-0001_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
liver = read.table("GTEX-1A32A-0001_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# lung = read.table("PT103811_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("GTEX-1A32A-0001_ovary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
# pituitary = read.table("PT103811_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("GTEX-1A32A-0001_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
# lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
# pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, ovary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], ovary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-1A32A-0001_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-1A32A-0001") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-1A8FM-0004
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-1A8FM-0004/")

heart = read.table("GTEX-1A8FM-0004_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
liver = read.table("GTEX-1A8FM-0004_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
lung = read.table("GTEX-1A8FM-0004_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
ovary = read.table("GTEX-1A8FM-0004_ovary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
pituitary = read.table("GTEX-1A8FM-0004_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")
adrenal = read.table("GTEX-1A8FM-0004_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-1A8FM-0004_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-1A8FM-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# --------------
# coding regions
# --------------
# GTEX-131YS-0003

# GTEX-14DAQ-0004
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-14DAQ-0004/")

ovary = read.table('ovary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique_complete_skewed.tsv')

ovary_label = rep("ovary", nrow(ovary))


plot_data = data.frame(tissues=c(ovary_label), allele_balance = 1, positions = c(ovary[,2]))

cbbPalette <- c("#000000")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-14DAQ-0004_coding_regions_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-14DAQ-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-12WSD-0002
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-12WSD-0002/")

heart = read.table('heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique_complete_skewed.tsv')
liver = read.table('liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique_complete_skewed.tsv')
pituitary = read.table('pituitary.tsv')

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
pituitary_label = rep("pituitary", nrow(pituitary))


plot_data = data.frame(tissues=c(heart_label, liver_label, pituitary_label), allele_balance = 1, positions = c(heart[,2], liver[,2], pituitary[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-12WSD-0002_coding_regions_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-14DAQ-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-11GSP-0004
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-11GSP-0004/")

heart = read.table('heart.tsv')
pituitary = read.table('pituitary.tsv')

heart_label = rep("heart", nrow(heart))
pituitary_label = rep("pituitary", nrow(pituitary))


plot_data = data.frame(tissues=c(heart_label, pituitary_label), allele_balance = 1, positions = c(heart[,2], pituitary[,2]))

cbbPalette <- c("#000000", "#E69F00")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-11GSP-0004_coding_regions_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-11GSP-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-1A32A-0001
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-1A32A-0001/")

ovary = read.table('ovary.tsv')
liver = read.table('liver.tsv')

ovary_label = rep("ovary", nrow(ovary))
liver_label = rep("liver", nrow(liver))


plot_data = data.frame(tissues=c(ovary_label, liver_label), allele_balance = 1, positions = c(ovary[,2], liver[,2]))

cbbPalette <- c("#000000", "#E69F00")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-1A32A-0001_coding_regions_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-1A32A-0001") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-1A8FM-0004
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-1A8FM-0004/")

heart = read.table('heart.tsv')

heart_label = rep("heart", nrow(heart))


plot_data = data.frame(tissues=c(heart_label), allele_balance = 1, positions = c(heart[,2]))

cbbPalette <- c("#000000")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-1A8FM-0004_coding_regions_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-1A8FM-0004") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# GTEX-15ER7-0002
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/GTEX-15ER7-0002/")

heart = read.table('heart.tsv')

heart_label = rep("heart", nrow(heart))


plot_data = data.frame(tissues=c(heart_label), allele_balance = 1, positions = c(heart[,2]))

cbbPalette <- c("#000000")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/Plots/GTEX-15ER7-0002_coding_regions_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="GTEX-15ER7-0002") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()
