GagPol_Pfam = rbind(AllPfam[AllPfam$Concatenated == "gag-polyprotein putative aspartyl protease ", ], AllPfam[AllPfam$Concatenated == "Aspartyl protease   ", ],AllPfam[AllPfam$Concatenated == "Reverse transcriptase (RNA-dependent DNA polymerase)", ], AllPfam[AllPfam$Concatenated =="Integrase core domain  ", ], AllPfam[AllPfam$Concatenated == "Retrotransposon gag protein  ", ])
 row.names(GagPol_Pfam) = 1:nrow(GagPol_Pfam)
 names_GagPol = GagPol_Pfam$V3
 GagPol_proteins = AllPeptides[names_GagPol]
 ATHILA5_GagPolORF_proteins = GagPol_proteins[grep("ATHILA5",getName(GagPol_proteins))]
 
