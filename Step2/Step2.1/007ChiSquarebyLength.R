## We apply gsub to df_p1p2p3$Name
#Apply the following to split any string character in several columns
table = table %>% separate(x, c("Chr", "start", "stop", "length", "a", "b","c","d"))
df_p1p2p3$Length = table$length
df_p1p2p3$Length = as.numeric(df_p1p2p3$Length)
quantiles= quantile(df_p1p2p3$Length)
df_p1p2p3_Q1= df_p1p2p3[df_p1p2p3$Length >= quantiles[[1]] & df_p1p2p3$Length < quantiles[[2]], ]
df_p1p2p3_Q2= df_p1p2p3[df_p1p2p3$Length >= quantiles[[2]] & df_p1p2p3$Length < quantiles[[3]], ]
df_p1p2p3_Q3= df_p1p2p3[df_p1p2p3$Length >= quantiles[[3]] & df_p1p2p3$Length < quantiles[[4]], ]
df_p1p2p3_Q4= df_p1p2p3[df_p1p2p3$Length >= quantiles[[4]] & df_p1p2p3$Length <= quantiles[[5]], ]

#For Q1
df_Q1_Centrophilic = df_p1p2p3_Q1[grep("Centrophilic", df_p1p2p3_Q1$Name), ]
df_Q1_Centrophobic = df_p1p2p3_Q1[grep("Centrophobic", df_p1p2p3_Q1$Name), ]

SumATHORF_Q1_Centrophobic = sum(df_Q1_Centrophobic$"Athila-ORF.x") +  sum(df_Q1_Centrophobic$"Athila-ORF.y") + sum(df_Q1_Centrophobic$"Athila-ORF")
SumGagProtease_Q1_Centrophobic = sum(df_Q1_Centrophobic$"GagProtease.x") +  sum(df_Q1_Centrophobic$"GagProtease.y") + sum(df_Q1_Centrophobic$"GagProtease")
SumAspartylprotease_Q1_Centrophobic = sum(df_Q1_Centrophobic$"Aspartylprotease.x") +  sum(df_Q1_Centrophobic$"Aspartylprotease.y") + sum(df_Q1_Centrophobic$"Aspartylprotease")
SumRT_Q1_Centrophobic = sum(df_Q1_Centrophobic$"RT.x") +  sum(df_Q1_Centrophobic$"RT.y") + sum(df_Q1_Centrophobic$"RT")
SumIntegrase_Q1_Centrophobic = sum(df_Q1_Centrophobic$"Integrase.x") +  sum(df_Q1_Centrophobic$"Integrase.y") + sum(df_Q1_Centrophobic$"Integrase")
SumGagProtein_Q1_Centrophobic = sum(df_Q1_Centrophobic$"GagProtein.x") +  sum(df_Q1_Centrophobic$"GagProtein.y") + sum(df_Q1_Centrophobic$"GagProtein")

SumATHORF_Q1_Centrophilic = sum(df_Q1_Centrophilic$"Athila-ORF.x") +  sum(df_Q1_Centrophilic$"Athila-ORF.y") + sum(df_Q1_Centrophilic$"Athila-ORF")
SumGagProtease_Q1_Centrophilic = sum(df_Q1_Centrophilic$"GagProtease.x") +  sum(df_Q1_Centrophilic$"GagProtease.y") + sum(df_Q1_Centrophilic$"GagProtease")
SumAspartylprotease_Q1_Centrophilic = sum(df_Q1_Centrophilic$"Aspartylprotease.x") +  sum(df_Q1_Centrophilic$"Aspartylprotease.y") + sum(df_Q1_Centrophilic$"Aspartylprotease")
SumRT_Q1_Centrophilic = sum(df_Q1_Centrophilic$"RT.x") +  sum(df_Q1_Centrophilic$"RT.y") + sum(df_Q1_Centrophilic$"RT")
SumIntegrase_Q1_Centrophilic = sum(df_Q1_Centrophilic$"Integrase.x") +  sum(df_Q1_Centrophilic$"Integrase.y") + sum(df_Q1_Centrophilic$"Integrase")
SumGagProtein_Q1_Centrophilic = sum(df_Q1_Centrophilic$"GagProtein.x") +  sum(df_Q1_Centrophilic$"GagProtein.y") + sum(df_Q1_Centrophilic$"GagProtein")

Q1_Centrophobic = matrix(c(SumATHORF_Q1_Centrophobic, SumGagProtease_Q1_Centrophobic, SumAspartylprotease_Q1_Centrophobic, SumRT_Q1_Centrophobic, SumIntegrase_Q1_Centrophobic, SumGagProtein_Q1_Centrophobic), ncol=1)
colnames(Q1_Centrophobic)= "Q1_Centrophobic"
rownames(Q1_Centrophobic)= c("ATH-ORF", "GagProtease", "AspartylProtease", "RT", "Integrase", "GagProtein")
Q1_Centrophilic = matrix(c(SumATHORF_Q1_Centrophilic, SumGagProtease_Q1_Centrophilic, SumAspartylprotease_Q1_Centrophilic, SumRT_Q1_Centrophilic, SumIntegrase_Q1_Centrophilic, SumGagProtein_Q1_Centrophilic), ncol=1)
colnames(Q1_Centrophilic)= "Q1_Centrophilic"

TableForChiTestQ1 = cbind(Q1_Centrophobic, Q1_Centrophilic)
write.table(TableForChiTestQ1,"TableForChiTestQ1_040822")

#For Q2/Q3/Q4, repeat process
