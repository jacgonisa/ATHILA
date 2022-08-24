library(Biostrings)
library(pheatmap)
library(dplyr)
library(tidyr)

#Polishing, eliminating Pfam >1
table = read.table("Table_Pfam_Heatmap_160822")
table[which(table$RT == 2),]$RT = 1
table[which(table$Protease == 2),]$Protease = 1

#Adding ATHILAfamily column
names = table$Name
names = gsub("_"," ", names)
names= as.data.frame(names)
names = names %>% separate(names, c("Chr","start","stop", "length", "ATHILA_fam"))
table = cbind(table, names$ATHILA_fam)
names(table)[8] = "ATHILA_fam"

#Sorting table by ATHILAfamily (form ATH0 to ATH9)
table_sorted_athila = table[order(table$ATHILA_fam),]
row.names(table_sorted_athila) = 1:nrow(table_sorted_athila)

#DOING HEATMAP
athila_annot <- data.frame("ATHILA family" = table_sorted_athila$ATHILA_fam)
      #Colors
      library(RColorBrewer)
      library(viridis)
      newCols <- colorRampPalette(grDevices::rainbow(length(unique(athila_annot$ATHILA.family))))
      mycolors <- newCols(length(unique(athila_annot$ATHILA.family)))
      names(mycolors) <- unique(unique(athila_annot$ATHILA.family))
      mycolors <- list(ATHILA.family = mycolors)
 
 pheatmap(table_sorted_athila[,3:7], 
         cluster_cols = F, cluster_rows = T, names= F,
         show_rownames = F, legend_breaks = c(0,1), 
         legend_labels = c("ABSENT","PRESENT"),
         annotation_row = athila_annot,
         annotation_colors = mycolors,
         color = c("grey","blue"),
         legend = T,
         fontsize = 7.5,
         fontsize_col = 12)

 ##FOR ATHILA-5
ATH5table = table_sorted_athila[grep("ATHILA5", table_sorted_athila$Name), ]
pheatmap(ATH5table[,3:7], 
         cluster_cols = F, cluster_rows = T, names= F,
         show_rownames = F, legend_breaks = c(0,1), 
         legend_labels = c("0","1"),
         annotation_row = athila_annot,
         annotation_colors = mycolors,
         color = c("ivory","black"),
         legend = F)


ATH5philic = ATH5table[grep("Centrophilic", ATH5table$Name),]
ATH5phobic = ATH5table[grep("Centrophobic", ATH5table$Name),]
ATH5philic$Preference ="Centrophilic"
ATH5phobic$Preference ="Centrophobic"
ATH5philic_phobic =rbind(ATH5philic, ATH5phobic)
row.names(ATH5philic_phobic) = 1:nrow(ATH5philic_phobic)


athila5_annot <- data.frame("Preference"=ATH5philic_phobic$Preference )
pheatmap(ATH5philic_phobic[,3:7], 
         cluster_cols = F, cluster_rows = T, names= F,
         show_rownames = F, legend_breaks = c(0,1), 
         legend_labels = c("Absent","Present"),
         annotation_row = athila5_annot,
         color = c("grey","black"),
         legend = T)


 
