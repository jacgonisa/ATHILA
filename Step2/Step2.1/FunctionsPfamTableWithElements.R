#This script intends to make a table of each TE components


##Creating DataFrame
df = data.frame("Name", "Athila-ORF", "GagProtease","Aspartylprotease", "RT", "Integrase", "Gag Protein")
colnames(df) = df[1,]
df = df [-1,]
df[nrow(df)+length(unique(AllPfam$V3)), ] = NA
df$Name = unique(AllPfam$V3)

 ##Assigning ATHILAORF
     
name_list_athilaorf = AllPfam$V3[which(AllPfam$Concatenated[1:nrow(AllPfam)] == "ATHILA ORF-1 family  ")] 
     
assign_ATHILA = function()
 {
for (i in 1:length(name_list))
   {
     df[which(name_list_athilaorf[i] == df$Name), ]$"Athila-ORF" = "Y"
     
      }
 return(df)
 }


 ##Assigning GagPolyprot protease
name_list_protease = AllPfam$V3[which(AllPfam$Concatenated[1:nrow(AllPfam)] == "gag-polyprotein putative aspartyl protease ")] 
assign_Gagpro = function()
 {
for (i in 1:length(name_list_protease))
   {
     df[which(name_list_protease[i] == df$Name), ]$"GagProtease" = "Y"
     
      }
 return(df)
 }

##Assigning RT
name_list_RT = AllPfam$V3[which(AllPfam$Concatenated[1:nrow(AllPfam)] == "Reverse transcriptase (RNA-dependent DNA polymerase)")] 
assign_RT = function()
 {
for (i in 1:length(name_list_RT))
   {
     df[which(name_list_RT[i] == df$Name), ]$"RT" = "Y"
     
      }
 return(df)
 }


##Assigning Integrase
name_list_Integrase = AllPfam$V3[which(AllPfam$Concatenated[1:nrow(AllPfam)] == "Integrase core domain  ")] 
assign_Integrase = function()
 {
for (i in 1:length(name_list_Integrase))
   {
     df[which(name_list_Integrase[i] == df$Name), ]$"Integrase" = "Y"
     
      }
 return(df)
 }

##Assigning AspartylProtease
name_list_Aspartyl = AllPfam$V3[which(AllPfam$Concatenated[1:nrow(AllPfam)] == "Aspartyl protease   ")] 
assign_Aspartyl = function()
 {
for (i in 1:length(name_list_Aspartyl))
   {
     df[which(name_list_Aspartyl[i] == df$Name), ]$"Aspartylprotease" = "Y"
     
      }
 return(df)
 }

##Assigning Retrotransposon gag protein
name_list_gag = AllPfam$V3[which(AllPfam$Concatenated[1:nrow(AllPfam)] == "Retrotransposon gag protein  ")] 
assign_gag = function()
 {
for (i in 1:length(name_list_gag))
   {
     df[which(name_list_gag[i] == df$Name), ]$"GagProtein" = "Y"
     
      }
 return(df)
 }
