#We continue from DatFrame obtained in "FunctionsPfamTableWithElements.R"

df_p2 = df[grep(".p2", df$Name), ]
df_p3 = df[grep(".p3", df$Name), ]
library("dplyr")
df_p1 = anti_join(df, df_p2)
df_p1 = anti_join(df_p1, df_p3)

#We eliminate with gsub the endings .p1, .p2, .p3, in order to join them later
df_p1$Name = gsub(".p1", "", df_p1$Name)
df_p2$Name = gsub(".p2", "", df_p2$Name)
df_p3$Name = gsub(".p3", "", df_p3$Name)

#Join with merge
df_p1p2 = merge(df_p1, df_p2, by = "Name",all=T)
df_p1p2p3 = merge(df_p1p2, df_p3, by = "Name",all=T)

#Collapsing NAs 
df_p1p2p3[is.na(df_p1p2p3)] = 0
df_p1p2p3[,2:ncol(df_p1p2p3)]= ifelse(df_p1p2p3[, 2:ncol(df_p1p2p3)] == "Y",1,0)
#Now Y=1 and NA=0
Sums = rowSums(df_p1p2p3[, 2:ncol(df_p1p2p3)])
df_p1p2p3 = cbind(df_p1p2p3, Sums)
sorted_df_p1p2p3= df_p1p2p3[order(df_p1p2p3$Sums),]

##R
