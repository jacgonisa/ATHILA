annotateTE <- function(dataframe)
{
  annotation <- data.frame(Name= dataframe$Name,ATHILA_ORF= rep("N",4637),GagProtease=rep("N",4637), AspartylProt= rep("N",4637), RT= rep("N",4637), Integrase = rep("N",4637), GagProtein = rep("N",4637))
  Final_name <- dataframe$Name
  
  for(i in 1:nrow(dataframe))
  {
  if  (dataframe[i,2] == 1 || dataframe[i,8] == 1 || dataframe[i,14] == 1 )
  {
  annotation[i,"ATHILA_ORF"] = "Y"
  Final_name[i] = paste(c(Final_name[i] , "ATH_ORF"), collapse="__") 
  }
   if  (dataframe[i,3] == 1 || dataframe[i,9] == 1 || dataframe[i,15] == 1 )
  {
  annotation[i,"GagProtease"] = "Y"
  Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }
  
  if  (dataframe[i,4] == 1 || dataframe[i,10] == 1 || dataframe[i,16] == 1 )
  {
  annotation[i,"AspartylProt"] = "Y"
    Final_name[i] = paste(c(Final_name[i], "AspartylProt"), collapse="") 
  }
  if  (dataframe[i,5] == 1 || dataframe[i,11] == 1 || dataframe[i,17] == 1 )
  {
  annotation[i,"RT"] = "Y"
  Final_name[i] = paste(c(Final_name[i], "RT"), collapse="__") 
  }
  if  (dataframe[i,6] == 1 || dataframe[i,12] == 1 || dataframe[i,18] == 1 )
  {
  annotation[i,"Integrase"] = "Y"
   Final_name[i] = paste(c(Final_name[i], "Integrase"), collapse="__") 
  }
    if  (dataframe[i,7] == 1 || dataframe[i,13] == 1 || dataframe[i,19] == 1 )
  {
  annotation[i,"GagProtein"] = "Y"
   Final_name[i] = paste(c(Final_name[i], "GagProtein"), collapse="__") 
  }
  }
  annotation$Finalname= Final_name
return(annotation)
}

##Robin suggested to include a binary ID instead

annotateTE <- function(dataframe)
{
  annotation <- data.frame(Name= dataframe$Name,ATHILA_ORF= rep("N",4637),GagProtease=rep("N",4637), AspartylProt= rep("N",4637), RT= rep("N",4637), Integrase = rep("N",4637), GagProtein = rep("N",4637))
  Final_name <- dataframe$Name
  
  for(i in 1:nrow(dataframe))
  {
  
  if  (dataframe[i,2] == 1 || dataframe[i,8] == 1 || dataframe[i,14] == 1 )
  {
  annotation[i,"ATHILA_ORF"] = "Y"
 Final_name[i] = paste(c(Final_name[i], "_1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "_0"), collapse="") 
  }
  
   if  (dataframe[i,3] == 1 || dataframe[i,9] == 1 || dataframe[i,15] == 1 )
  {
  annotation[i,"GagProtease"] = "Y"
  Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "0"), collapse="") 
  }
  
  if  (dataframe[i,4] == 1 || dataframe[i,10] == 1 || dataframe[i,16] == 1 )
  {
  annotation[i,"AspartylProt"] = "Y"
  Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "0"), collapse="") 
  }
  
  if  (dataframe[i,5] == 1 || dataframe[i,11] == 1 || dataframe[i,17] == 1 )
  {
  annotation[i,"RT"] = "Y"
   Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "0"), collapse="") 
  }
  
  if  (dataframe[i,6] == 1 || dataframe[i,12] == 1 || dataframe[i,18] == 1 )
  {
  annotation[i,"Integrase"] = "Y"
   Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "0"), collapse="") 
  }
  
   if  (dataframe[i,7] == 1 || dataframe[i,13] == 1 || dataframe[i,19] == 1 )
  {
  annotation[i,"GagProtein"] = "Y"
   Final_name[i] = paste(c(Final_name[i], "1"), collapse="") 
  }else
  {
  Final_name[i] = paste(c(Final_name[i], "0"), collapse="") 
  }
  }
  annotation$Finalname= Final_name
return(annotation)
}
