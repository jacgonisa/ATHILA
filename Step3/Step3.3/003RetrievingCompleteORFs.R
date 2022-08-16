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

#GET THE ATHILA-ORFs of each gagpol seq:
Allathilaorf = read.fasta("ATHILAORF_Allproteins_280722.fa", seqtype="AA")
completeGagPol = read.fasta("GagPol_completeORFs150822.fa", seqtype="AA")
names_athila = getName(Allathilaorf)
names_gagpol = getName(completeGagPol)
names_gagpol_withoutp1_top2 = gsub(".p1", ".p2", names_gagpol)
ATHORF_completeGagPol_p1top2= Allathilaorf[names_athila%in%names_gagpol_withoutp1_top2]
#length = 174
names_gagpol_withoutp1_top3 = gsub(".p1", ".p3", names_gagpol)
ATHORF_completeGagPol_p1top3= Allathilaorf[names_athila%in%names_gagpol_withoutp1_top3]
#length = 41
names_gagpol_withoutp2_top1 = gsub(".p2", ".p1", names_gagpol)
ATHORF_completeGagPol_p2top1= Allathilaorf[names_athila%in%names_gagpol_withoutp2_top1]
#length = 0
names_gagpol_withoutp2_top3 = gsub(".p2", ".p3", names_gagpol)
ATHORF_completeGagPol_p2top3= Allathilaorf[names_athila%in%names_gagpol_withoutp2_top3]
#length = 40
names_gagpol_withoutp3_top1 = gsub(".p3", ".p1", names_gagpol)
ATHORF_completeGagPol_p3top1= Allathilaorf[names_athila%in%names_gagpol_withoutp3_top1]
#length = 0

names_gagpol_withoutp3_top2 = gsub(".p3", ".p2", names_gagpol)
ATHORF_completeGagPol_p3top2= Allathilaorf[names_athila%in%names_gagpol_withoutp3_top2]
#length = 21
