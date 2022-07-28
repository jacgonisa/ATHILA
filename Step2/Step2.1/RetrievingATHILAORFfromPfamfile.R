 AllPfam=read.table(file="WholeTransdecoder_280722.stdout", header=F, fill=T)
ATHILA_Pfam= AllPfam[AllPfam$V19 == "ATHILA",]
names_ATHILAORF = ATHILA_Pfam$V3
names_ATHILAORF = as.character(ATHILA_Pfam$V3)
AllPeptides = read.fasta("Whole ...pep", seqtype="AA")
ATHILAORF_proteins = AllPeptides[names_ATHILAORF]
#Get ATHILAX
ATHILA5_ATHILAORF_proteins = ATHILAORF_proteins[grep("ATHILA5",getName(ATHILAORF_proteins))]
