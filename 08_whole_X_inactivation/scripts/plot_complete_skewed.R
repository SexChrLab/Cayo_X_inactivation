library(ggplot2)

# PT101159
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101159/")

heart = read.table("PT101159_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT101159_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT101159_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT101159_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT101159_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT101159_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT101159_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT101159") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT101210
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101210/")

heart = read.table("PT101210_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT101210_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT101210_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT101210_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT101210_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT101210_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT101210_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT101210") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT102485
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT102485/")

heart = read.table("PT102485_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT102485_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT102485_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT102485_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT102485_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT102485_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT102485_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT102485") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT102842
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT102842/")

heart = read.table("PT102842_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT102842_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT102842_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT102842_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT102842_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT102842_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT102842_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT102842") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103352
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103352/")

heart = read.table("PT103352_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT103352_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT103352_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT103352_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT103352_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT103352_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103352_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103352") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103811
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103811/")

heart = read.table("PT103811_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT103811_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT103811_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT103811_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT103811_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT103811_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103811_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103811") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104219
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104219/")

heart = read.table("PT104219_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT104219_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT104219_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT104219_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT104219_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT104219_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104219_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104219") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104883
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104883/")

heart = read.table("PT104883_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT104883_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT104883_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT104883_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT104883_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT104883_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104883_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104883") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT105239
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT105239/")

heart = read.table("PT105239_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT105239_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT105239_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT105239_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT105239_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT105239_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT105239_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT105239") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT105290
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT105290/")

heart = read.table("PT105290_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT105290_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT105290_hap1_lung_hardfilter_complete_skewed.tsv")
ovary = read.table("PT105290_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT105290_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT105290_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT105290_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT105290") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103046
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/")

heart = read.table("PT103046_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT103046_hap1_liver_hardfilter_complete_skewed.tsv")
ovary = read.table("PT103046_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT103046_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT103046_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103046_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103046") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104733
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/")

heart = read.table("PT104733_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT104733_hap1_liver_hardfilter_complete_skewed.tsv")
ovary = read.table("PT104733_hap1_gonads_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT104733_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT104733_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], ovary[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104733_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104733") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103760
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/")

heart = read.table("PT103760_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT103760_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT103760_hap1_lung_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT103760_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT103760_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103760_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103760") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104270
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/")

heart = read.table("PT104270_hap1_heart_hardfilter_complete_skewed.tsv")
liver = read.table("PT104270_hap1_liver_hardfilter_complete_skewed.tsv")
lung = read.table("PT104270_hap1_lung_hardfilter_complete_skewed.tsv")
pituitary = read.table("PT104270_hap1_pituitary_hardfilter_complete_skewed.tsv")
adrenal = read.table("PT104270_hap1_adrenal_hardfilter_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,1], liver[,1], lung[,1], pituitary[,1], adrenal[,1]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104270_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104270") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# --------------
# coding regions
# --------------
# PT101159
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101159/")

heart = read.table("PT101159_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT101159_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT101159_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT101159_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT101159_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT101159_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT101159_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT101159") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT101210
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101210/")

heart = read.table("PT101210_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT101210_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT101210_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
# ovary = read.table("PT101210_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT101210_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT101210_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
# ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT101210_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT101210") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT102485
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT102485/")

heart = read.table("PT102485_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT102485_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT102485_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT102485_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT102485_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT102485_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT102485_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT102485") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT102842
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT102842/")

heart = read.table("PT102842_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT102842_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT102842_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT102842_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT102842_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT102842_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT102842_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT102842") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103352
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103352/")

heart = read.table("PT103352_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT103352_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT103352_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT103352_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT103352_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT103352_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103352_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103352") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103811
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103811/")

heart = read.table("PT103811_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT103811_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT103811_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT103811_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT103811_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT103811_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103811_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103811") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104219
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104219/")

heart = read.table("PT104219_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT104219_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT104219_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT104219_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT104219_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT104219_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104219_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104219") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104883
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104883/")

heart = read.table("PT104883_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT104883_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT104883_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT104883_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT104883_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT104883_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104883_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104883") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT105239
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT105239/")

heart = read.table("PT105239_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT105239_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT105239_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT105239_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT105239_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT105239_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT105239_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT105239") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT105290
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT105290/")

heart = read.table("PT105290_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT105290_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT105290_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT105290_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT105290_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT105290_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT105290_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT105290") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103046
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/")

heart = read.table("PT103046_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT103046_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT103046_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT103046_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT103046_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103046_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103046") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104733
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/")

heart = read.table("PT104733_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT104733_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
ovary = read.table("PT104733_hap1_gonads_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT104733_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT104733_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
ovary_label = rep("ovary", nrow(ovary))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, ovary_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], ovary[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#009E73", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104733_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104733") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT103760
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/")

heart = read.table("PT103760_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT103760_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT103760_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT103760_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT103760_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT103760_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT103760") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()

# PT104270
setwd("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/")

heart = read.table("PT104270_hap1_heart_hardfilter_coding_regions_unique_complete_skewed.tsv")
liver = read.table("PT104270_hap1_liver_hardfilter_coding_regions_unique_complete_skewed.tsv")
lung = read.table("PT104270_hap1_lung_hardfilter_coding_regions_unique_complete_skewed.tsv")
pituitary = read.table("PT104270_hap1_pituitary_hardfilter_coding_regions_unique_complete_skewed.tsv")
adrenal = read.table("PT104270_hap1_adrenal_hardfilter_coding_regions_unique_complete_skewed.tsv")

heart_label = rep("heart", nrow(heart))
liver_label = rep("liver", nrow(liver))
lung_label = rep("lung", nrow(lung))
pituitary_label = rep("pituitary", nrow(pituitary))
adrenal_label = rep("adrenal", nrow(adrenal))


plot_data = data.frame(tissues=c(heart_label, liver_label, lung_label, pituitary_label, adrenal_label), allele_balance = 1, positions = c(heart[,2], liver[,2], lung[,2], pituitary[,2], adrenal[,2]))

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#F0E442", "#0072B2")

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/Plots/PT104270_coding_regions_unique_complete_skewed.png", width = 7, height = 4, units = "in", res = 300)
ggplot(data=plot_data, aes(x=positions, y=allele_balance, fill=tissues)) +
  geom_point(shape=21, size=3, color="black", position="jitter") +
  theme_bw() +
  coord_cartesian(xlim = c(1, 156040895)) +
  # geom_jitter(shape=21, size=4, color="black", aes(fill=tissues)) +
  scale_x_continuous(breaks=c(0, 20000000, 40000000, 60000000, 80000000, 100000000, 120000000, 140000000),
                     labels=c("0", "20", "40", "60", "80", "100", "120", "140")) +
  labs(x="chrX position (Mb)", y="Allele balance", title="PT104270") +
  theme(plot.title = element_text(hjust = 0.5, size=18)) +
  geom_rect(aes(xmin=10001, xmax=2781479, ymin=0, ymax=Inf), fill=NA, color="black") +
  geom_rect(aes(xmin=155701383, xmax=156030895, ymin=0, ymax=Inf), fill=NA, color="black") +
  scale_fill_manual(values=alpha(cbbPalette, 0.7))
dev.off()
