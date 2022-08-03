##Start from df_p1p2p3
df_Centrophilic = df_p1p2p3[grep("Centrophilic", df_p1p2p3$Name), ]
df_Centrophobic = df_p1p2p3[grep("Centrophobic", df_p1p2p3$Name), ]

 SumATHORF_Centrophobic = sum(df_Centrophobic$"Athila-ORF.x") +  sum(df_Centrophobic$"Athila-ORF.y") + sum(df_Centro
phobic$"Athila-ORF")
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
matrix(c(SumATHORF_Centrophobic, SumGagProtease_Centrophobic, SumAspartylprotease_Centrophobic, SumRT_Centrophobic, SumIntegrase_Centrophobic, SumGagProtein_Centrophobic), ncol=1)
colnames(Centrophobic)= "Centrophobic")
rownames(Centrophobic)= c("ATH-ORF", "GagProtease", "AspartylProtease", "RT", "Integrase", "GagProtein")

