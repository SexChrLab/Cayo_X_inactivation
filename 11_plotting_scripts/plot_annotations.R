library(ggplot2)
library(ggpubr)

annotations = read.csv("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/DP_AN_MQ_QD.tsv", sep="\t")
annotation_rmna = subset(annotations, annotations$DP!='NA')

# ---
# DP
# ---
annotation_rmna$DP_normed = annotation_rmna$DP/(annotation_rmna$AN/2)
png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/DP_density.png", width=8, height=5, units = "in", res = 300)
p4 = ggplot(annotation_rmna, aes(x=DP)) +
  geom_density() +
  theme_bw() +
  # geom_vline(xintercept = mean(annotation_rmna$DP_normed), color="black", size=1) +
  # geom_vline(xintercept = 0.5 * mean(annotation_rmna$DP_normed), color="black", size=1, linetype=2) +
  # geom_vline(xintercept = 1.5 * mean(annotation_rmna$DP_normed), color="black", size=1, linetype=2)
  # geom_vline(xintercept = 0.25 * mean(annotations$DP, na.rm = T), color="purple", size=1.5, linetype=2) + 
  # geom_vline(xintercept = 1.75 * mean(annotations$DP, na.rm = T), color="purple", size=1.5, linetype=2) +
  theme(axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm')) +
  geom_vline(xintercept = 1500, linetype=2, size=1.5, color="darkgray")
dev.off()

ggplot(annotation_rmna, aes(x=DP)) +
  geom_density() +
  theme_bw()

temp = subset(annotations, annotations$DP <= 1.75 * mean(annotations$DP, na.rm = T) & annotations$DP >= 0.25 * mean(annotations$DP, na.rm = T))

# 
which.max(density(annotation_rmna$DP_normed)$y)
density(annotation_rmna$DP_normed)$x[15]

# 
median(annotation_rmna$DP_normed)

#
mean(annotation_rmna$DP_normed)

#
nrow(subset(annotation_rmna, annotation_rmna$DP > 500))
nrow(subset(annotation_rmna, annotation_rmna$DP > 600))
nrow(subset(annotation_rmna, annotation_rmna$DP > 750))
nrow(subset(annotation_rmna, annotation_rmna$DP > 1000))

# 
nrow(subset(annotation_rmna, annotation_rmna$DP_normed < 25))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 25 & annotation_rmna$DP_normed < 50))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 50 & annotation_rmna$DP_normed < 100))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 100 & annotation_rmna$DP_normed < 150))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 150 & annotation_rmna$DP_normed < 200))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 200 & annotation_rmna$DP_normed < 250))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 250 & annotation_rmna$DP_normed < 300))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 300 & annotation_rmna$DP_normed < 350))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 350 & annotation_rmna$DP_normed < 400))
nrow(subset(annotation_rmna, annotation_rmna$DP_normed >= 400))



# ---
# AN
# ---
png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/AN_density.png", width=8, height=5, units = "in", res = 300)
p1 = ggplot(annotation_rmna, aes(x=AN)) +
  geom_density() +
  theme_bw() +
  coord_cartesian(xlim=c(0, 28)) +
  theme(axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm')) +
  geom_vline(xintercept = 4, linetype=2, size=1.5, color="darkgray")
dev.off()

# temp = subset(annotations, annotations$AN >=6)

#
nrow(subset(annotation_rmna, annotation_rmna$AN>=2))
nrow(subset(annotation_rmna, annotation_rmna$AN>=4))
nrow(subset(annotation_rmna, annotation_rmna$AN>=6))
nrow(subset(annotation_rmna, annotation_rmna$AN>=8))
nrow(subset(annotation_rmna, annotation_rmna$AN>=10))
nrow(subset(annotation_rmna, annotation_rmna$AN>=12))
nrow(subset(annotation_rmna, annotation_rmna$AN>=14))
nrow(subset(annotation_rmna, annotation_rmna$AN>=16))
nrow(subset(annotation_rmna, annotation_rmna$AN>=18))
nrow(subset(annotation_rmna, annotation_rmna$AN>=20))
nrow(subset(annotation_rmna, annotation_rmna$AN>=22))
nrow(subset(annotation_rmna, annotation_rmna$AN>=24))
nrow(subset(annotation_rmna, annotation_rmna$AN>=26))
nrow(subset(annotation_rmna, annotation_rmna$AN==28))

# ---
# MQ
# ---
png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/MQ_density.png", width=8, height=5, units = "in", res = 300)
p2 = ggplot(annotation_rmna, aes(x=MQ)) +
  geom_density() +
  theme_bw() +
  theme(axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm')) +
  geom_vline(xintercept = 40, linetype=2, size=1.5, color="darkgray")
dev.off()

temp = subset(annotations, annotations$MQ >=40)

# ---
# QD
# ---
png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/QD_density.png", width=8, height=5, units = "in", res = 300)
p3 = ggplot(annotation_rmna, aes(x=QD)) +
  geom_density() +
  theme_bw() +
  theme(axis.text.x = element_text(size=16, colour="black"), axis.text.y = element_text(size=16, colour = "black"), axis.title= element_text(size=16), axis.line=element_line(colour = "black"), axis.ticks = element_line(colour = "black", size=1.5), axis.ticks.length = unit(0.3, 'cm')) +
  geom_vline(xintercept = 5, linetype=2, size=1.5, color="darkgray")
dev.off()

temp = subset(annotation_rmna, annotation_rmna$QD >=7)

# 
png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/annotations.png", width=13, height=8, units = "in", res = 300)
ggarrange(p1, p2, p3, p4, ncol = 2, nrow = 2)
dev.off()