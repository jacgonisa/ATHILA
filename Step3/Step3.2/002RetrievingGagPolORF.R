GagPol_Pfam = rbind(AllPfam[AllPfam$Concatenated == "gag-polyprotein putative aspartyl protease ", ], AllPfam[AllPfam$Concatenated == "Aspartyl protease   ", ],AllPfam[AllPfam$Concatenated == "Reverse transcriptase (RNA-dependent DNA polymerase)", ], AllPfam[AllPfam$Concatenated =="Integrase core domain  ", ], AllPfam[AllPfam$Concatenated == "Retrotransposon gag protein  ", ])
 row.names(GagPol_Pfam) = 1:nrow(GagPol_Pfam)
 names_GagPol = GagPol_Pfam$V3
 GagPol_proteins = AllPeptides[names_GagPol]
write.fasta(getSequence(GagPol_proteins), getName(GagPol_proteins), file.out="GagPol_Allproteins_030822.fa")
 ATHILA5_GagPolORF_proteins = GagPol_proteins[grep("ATHILA5",getName(GagPol_proteins))]
#This last one was called "ATHILA5_GagPolORF_completeandincompleteORFs_proteins_030822.fa"
##SEQUENCES ARE REPEATED, USE unique FUNCTION



#For retrieving only Integrase Pfam
Integrase_Pfam = AllPfam[AllPfam$Concatenated == "Integrase core domain  ", ]
row.names(Integrase_Pfam) = 1:nrow(Integrase_Pfam)
names_Integrase = Integrase_Pfam$V3
Integrase_proteins = AllPeptides[names_Integrase]
Integrase_proteins = unique(Integrase_proteins)
write.fasta(getSequence(Integrase_proteins), getName(Integrase_proteins), file.out="Integrase_Allproteins_030822.fa")
