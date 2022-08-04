library(seqinr)

AthOrfOutgroups= read.table("AllOutgroupsforATH5_ATHORF_blast_030822")
GagPolOutgroups= read.table("AllOutgroupsforATH5_GagPol_blast_030822")
 #Tables obtained from running .sh
Outgroups = read.fasta("FinalOutgroups", seqtype="AA") 
#"FinalOutgroups" is the file that joins all the Outgroups families (Calypso, Gypsy, Copia, viruses, etc.) retrieved from databases#

significant_AthOrfOutgroups = AthOrfOutgroups[AthOrfOutgroups$V11 < 1e-05, ]
significant_GagPolOutgroups = GagPolOutgroups[GagPolOutgroups$V11 < 1e-05, ]

Filtered_GagPolOutgroupswithBLAST = Outgroups[unique(significant_GagPolOutgroups$V1)]
Filtered_AthOrfOutgroupswithBLAST = Outgroups[as.character(unique(significant_AthOrfOutgroups$V1))]

write.fasta(getSequence(Filtered_GagPolOutgroupswithBLAST), names= getName(Filtered_GagPolOutgroupswithBLAST), file.
out ="Filtered_GagPolOutgroupswithBLAST_040822")
write.fasta(getSequence(Filtered_AthOrfOutgroupswithBLAST), names= getName(Filtered_AthOrfOutgroupswithBLAST), file.
out ="Filtered_AthOrfOutgroupswithBLAST_040822")
