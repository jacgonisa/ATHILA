table=read.table("Table_dfp1p2p3_Sums_Length_030822")
table$Gag = table$GagProtein.x + table$GagProtein.y + table$GagProtein
table$GagProtein.x = NULL
table$GagProtein.y = NULL
table$GagProtein = NULL

table$Protease = table$GagProtease.x + table$GagProtease.y + table$GagProtease
table$GagProtease.x = NULL
table$GagProtease.y = NULL
table$GagProtease = NULL
table$Aspartylprotease.x = NULL
table$Aspartylprotease.y = NULL
table$Aspartylprotease = NULL

table$RT1 = table$RT.x + table$RT.y + table$RT
table$RT.x = NULL
table$RT.y = NULL
table$RT = NULL
colnames(table$RT1) = "RT"

table$Int = table$Integrase.x + table$Integrase.y + table$Integrase
table$Integrase.x = NULL
table$Integrase.y = NULL
table$Integrase = NULL

table$ATH_ORF = table$Athila.ORF.x + table$Athila.ORF.y + table$Athila.ORF
table$Athila.ORF.x = NULL
table$Athila.ORF.y = NULL
table$Athila.ORF = NULL

table$Sums = NULL

write.table(table, "Table_Pfam_Heatmap_160822")


### NOW TRY TO HEATMAP
library(pheatmap)
