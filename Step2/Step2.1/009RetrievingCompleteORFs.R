sumstable =read.table("Table_dfp1p2p3_Sums")
completeORFs = sumstable[sumstable$Sums == 6, ]

retrievep1 = function(completeORFs)
{
  names_list = list()
  for (i in 1:length(completeORFs$Name))
  {
   names_list[i]= paste(c(as.character(completeORFs$Name[[i]]), "p1"), collapse=".")
  }
  return(names_list)
}

retrievep2 = function(completeORFs)
{
  names_list = list()
  for (i in 1:length(completeORFs$Name))
  {
   names_list[i]= paste(c(as.character(completeORFs$Name[[i]]), "p2"), collapse=".")
  }
  return(names_list)
}

retrievep3 = function(completeORFs)
{
  names_list = list()
  for (i in 1:length(completeORFs$Name))
  {
   names_list[i]= paste(c(as.character(completeORFs$Name[[i]]), "p3"), collapse=".")
  }
  return(names_list)
}

completep1 = unlist(retrievep1(completeORFs))
completep2 = unlist(retrievep1(completeORFs))
completep3 = unlist(retrievep1(completeORFs))
completep1p2p3 = c(completep1,completep2,completep3)
completeORFs = AllPeptides[completep1p2p3]
completeORFs = Filter(Negate(is.null), completeORFs)
