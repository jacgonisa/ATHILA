##Start from df_p1p2p3
df_Centrophilic = df_p1p2p3[grep("Centrophilic", df_p1p2p3$Name), ]
df_Centrophobic = df_p1p2p3[grep("Centrophobic", df_p1p2p3$Name), ]

SumATHORF_Centrophobic = sum(df_Centrophobic$"Athila-ORF.x") +  sum(df_Centrophobic$"Athila-ORF.y") + sum(df_Centrophobic$"Athila-ORF")
SumGagProtease_Centrophobic = sum(df_Centrophobic$"GagProtease.x") +  sum(df_Centrophobic$"GagProtease.y") + sum(df_Centrophobic$"GagProtease")
SumAspartylprotease_Centrophobic = sum(df_Centrophobic$"Aspartylprotease.x") +  sum(df_Centrophobic$"Aspartylprotease.y") + sum(df_Centrophobic$"Aspartylprotease")
SumRT_Centrophobic = sum(df_Centrophobic$"RT.x") +  sum(df_Centrophobic$"RT.y") + sum(df_Centrophobic$"RT")
SumIntegrase_Centrophobic = sum(df_Centrophobic$"Integrase.x") +  sum(df_Centrophobic$"Integrase.y") + sum(df_Centrophobic$"Integrase")
SumGagProtein_Centrophobic = sum(df_Centrophobic$"GagProtein.x") +  sum(df_Centrophobic$"GagProtein.y") + sum(df_Centrophobic$"GagProtein")

SumATHORF_Centrophilic = sum(df_Centrophilic$"Athila-ORF.x") +  sum(df_Centrophilic$"Athila-ORF.y") + sum(df_Centrophobic$"Athila-ORF")
SumGagProtease_Centrophilic = sum(df_Centrophilic$"GagProtease.x") +  sum(df_Centrophilic$"GagProtease.y") + sum(df_Centrophilic$"GagProtease")
SumAspartylprotease_Centrophilic = sum(df_Centrophilic$"Aspartylprotease.x") +  sum(df_Centrophilic$"Aspartylprotease.y") + sum(df_Centrophilic$"Aspartylprotease")
SumRT_Centrophilic = sum(df_Centrophilic$"RT.x") +  sum(df_Centrophilic$"RT.y") + sum(df_Centrophilic$"RT")
SumIntegrase_Centrophilic = sum(df_Centrophilic$"Integrase.x") +  sum(df_Centrophilic$"Integrase.y") + sum(df_Centrophilic$"Integrase")
SumGagProtein_Centrophilic = sum(df_Centrophilic$"GagProtein.x") +  sum(df_Centrophilic$"GagProtein.y") + sum(df_Centrophilic$"GagProtein")

#Creating table
Centrophobic = matrix(c(SumATHORF_Centrophobic, SumGagProtease_Centrophobic, SumAspartylprotease_Centrophobic, SumRT_Centrophobic, SumIntegrase_Centrophobic, SumGagProtein_Centrophobic), ncol=1)
colnames(Centrophobic)= "Centrophobic"
rownames(Centrophobic)= c("ATH-ORF", "GagProtease", "AspartylProtease", "RT", "Integrase", "GagProtein")
Centrophilic = matrix(c(SumATHORF_Centrophilic, SumGagProtease_Centrophilic, SumAspartylprotease_Centrophilic, SumRT_Centrophilic, SumIntegrase_Centrophilic, SumGagProtein_Centrophilic), ncol=1)
TableForChiTest = cbind(Centrophobic, Centrophilic)

#CHI TEST
install.packages("questionr")
library(questionr)
chisq.test(Table)
chisq.residuals(Table)

##Let s try for ATHILA5
df_Centrophobic_ATHILA5 =df_Centrophobic[grep("ATHILA5", df_Centrophobic$Name), ]
df_Centrophilic_ATHILA5 = df_Centrophilic[grep("ATHILA5", df_Centrophilic$Name), ]

 SumATHORF_Centrophobic_ATHILA5 = sum(df_Centrophobic_ATHILA5$"Athila-ORF.x") +  sum(df_Centrophobic_ATHILA5$"Athila-ORF.y") + sum(df_Centrophobic_ATHILA5$"Athila-ORF")
SumGagProtease_Centrophobic_ATHILA5 = sum(df_Centrophobic_ATHILA5$"GagProtease.x") +  sum(df_Centrophobic_ATHILA5$"GagProtease.y") + sum(df_Centrophobic_ATHILA5$"GagProtease")
SumAspartylprotease_Centrophobic_ATHILA5 = sum(df_Centrophobic_ATHILA5$"Aspartylprotease.x") +  sum(df_Centrophobic_ATHILA5$"Aspartylprotease.y") + sum(df_Centrophobic_ATHILA5$"Aspartylprotease")
SumRT_Centrophobic_ATHILA5 = sum(df_Centrophobic_ATHILA5$"RT.x") +  sum(df_Centrophobic_ATHILA5$"RT.y") + sum(df_Centrophobic_ATHILA5$"RT")
SumIntegrase_Centrophobic_ATHILA5 = sum(df_Centrophobic_ATHILA5$"Integrase.x") +  sum(df_Centrophobic_ATHILA5$"Integrase.y") + sum(df_Centrophobic_ATHILA5$"Integrase")
SumGagProtein_Centrophobic_ATHILA5 = sum(df_Centrophobic_ATHILA5$"GagProtein.x") +  sum(df_Centrophobic_ATHILA5$"GagProtein.y") + sum(df_Centrophobic_ATHILA5$"GagProtein")

SumATHORF_Centrophilic_ATHILA5 = sum(df_Centrophilic_ATHILA5$"Athila-ORF.x") +  sum(df_Centrophilic_ATHILA5$"Athila-ORF.y") + sum(df_Centrophobic_ATHILA5$"Athila-ORF")
SumGagProtease_Centrophilic_ATHILA5 = sum(df_Centrophilic_ATHILA5$"GagProtease.x") +  sum(df_Centrophilic_ATHILA5$"GagProtease.y") + sum(df_Centrophilic_ATHILA5$"GagProtease")
SumAspartylprotease_Centrophilic_ATHILA5 = sum(df_Centrophilic_ATHILA5$"Aspartylprotease.x") +  sum(df_Centrophilic_ATHILA5$"Aspartylprotease.y") + sum(df_Centrophilic_ATHILA5$"Aspartylprotease")
SumRT_Centrophilic_ATHILA5 = sum(df_Centrophilic_ATHILA5$"RT.x") +  sum(df_Centrophilic_ATHILA5$"RT.y") + sum(df_Centrophilic_ATHILA5$"RT")
SumIntegrase_Centrophilic_ATHILA5 = sum(df_Centrophilic_ATHILA5$"Integrase.x") +  sum(df_Centrophilic_ATHILA5$"Integrase.y") + sum(df_Centrophilic_ATHILA5$"Integrase")
SumGagProtein_Centrophilic_ATHILA5 = sum(df_Centrophilic_ATHILA5$"GagProtein.x") +  sum(df_Centrophilic_ATHILA5$"GagProtein.y") + sum(df_Centrophilic_ATHILA5$"GagProtein")

Centrophobic_ATHILA5 = matrix(c(SumATHORF_Centrophobic_ATHILA5, SumGagProtease_Centrophobic_ATHILA5, SumAspartylprotease_Centrophobic_ATHILA5, SumRT_Centrophobic_ATHILA5, SumIntegrase_Centrophobic_ATHILA5, SumGagProtein_Centrophobic_ATHILA5), ncol=1)
colnames(Centrophobic_ATHILA5)= "Centrophobic_ATHILA5"
rownames(Centrophobic_ATHILA5)= c("ATH-ORF", "GagProtease", "AspartylProtease", "RT", "Integrase", "GagProtein")
Centrophilic_ATHILA5 = matrix(c(SumATHORF_Centrophilic_ATHILA5, SumGagProtease_Centrophilic_ATHILA5, SumAspartylprotease_Centrophilic_ATHILA5, SumRT_Centrophilic_ATHILA5, SumIntegrase_Centrophilic_ATHILA5, SumGagProtein_Centrophilic_ATHILA5), ncol=1)
colnames(Centrophilic_ATHILA5)= "Centrophilic_ATHILA5"
TableForChiTest_ATHILA5 = cbind(Centrophobic_ATHILA5, Centrophilic_ATHILA5)
