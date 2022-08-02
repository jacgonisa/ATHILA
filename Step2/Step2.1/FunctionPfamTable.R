create.Pfam.table = function(AllPfam)
{
df = data.frame("Name", "Evalue", "ATHILA-ORF", "GagPolyprotein", "Protease", "RT", "Integrase")
colnames(df) = df[1,]
 df = df[-1,]
df[nrow(df)+length(unique(AllPfam$V3)), ] = NA
df$Name = unique(AllPfam$V3)

for (i in 1:nrow(AllPfam)
  {
  if(AllPfam$Concatenated[i] == "ATHILA ORF-1 family  ")
  {
  df[which(df$Name == AllPfam$V3[i]), ]$"ATHILA-ORF" = AllPfam$Concatenated[i]
  }
  }

}

create.Pfam.table = function(AllPfam, df)
{
  for (i in 1:nrow(AllPfam))
  {
    if(AllPfam$Concatenated[i] == "ATHILA ORF-1 family  ")
    {
    df[which(df$Name == AllPfam$V3[i]), ]$"ATHILA-ORF" = "YES"
     }
  }

}
