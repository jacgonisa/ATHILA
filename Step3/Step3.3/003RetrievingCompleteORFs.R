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
#unlist converts a list into a vector
completep1p2p3 = c(completep1,completep2,completep3)
completeORFs = AllPeptides[completep1p2p3]
completeORFs = Filter(Negate(is.null), completeORFs)

GagPol_Pfam = rbind(AllPfam[AllPfam$Concatenated == "gag-polyprotein putative aspartyl protease ", ], AllPfam[AllPfam$Concatenated == "Aspartyl protease   ", ],AllPfam[AllPfam$Concatenated == "Reverse transcriptase (RNA-dependent DNA polymerase)", ], AllPfam[AllPfam$Concatenated =="Integrase core domain  ", ], AllPfam[AllPfam$Concatenated == "Retrotransposon gag protein  ", ])
row.names(GagPol_Pfam) = 1:nrow(GagPol_Pfam)
names_GagPol = GagPol_Pfam$V3
GagPol_proteins = AllPeptides[names_GagPol]
GagPol_completeORFs = GagPol_proteins[GagPol_proteins%in%completeORFs]
GagPol_completeORFs = unique(GagPol_completeORFs)
write.fasta(getSequence(GagPol_completeORFs), getName(GagPol_completeORFs), file.out= "GagPol_completeORFs080822.fa")
