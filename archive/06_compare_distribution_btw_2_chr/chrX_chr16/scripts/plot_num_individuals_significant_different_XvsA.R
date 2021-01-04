library(ggplot2)

data = data.frame(tissues=c('gonads', 'lung', 'liver', 'pituitary', 'heart', 'adrenal'), perc=c((5/12)*100, (6/12)*100, (9/14)*100, (9/14)*100, (12/14)*100, (13/14)*100))

data$tissues = as.character(data$tissues)
data$tissues = factor(data$tissues, levels = unique(data$tissues))

png("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/compare_distribution_btw_2_chr/chrX_chr16/plots/perc_individuals_allele_balance_differs_XvsA.png", width = 6, height = 4, units = "in", res = 300)
ggplot(data, aes(x=tissues, y=perc)) + 
  geom_bar(stat = "identity", position=position_dodge(), colour="black", fill=alpha("grey60", 0.7)) +
  theme_bw() +
  theme(axis.text.x = element_text(size=12, colour="black"), axis.text.y = element_text(size=12, colour = "black"), axis.title = element_text(size=14), axis.line=element_line(colour = "black"),plot.title = element_text(hjust = 0.5, size=14), legend.title = element_blank()) +  
  ylim(0,100) +
  labs(x="Tissues", y="Percent", title="Percent individuals where allele balance \n differs between chrX and chr16")
dev.off()