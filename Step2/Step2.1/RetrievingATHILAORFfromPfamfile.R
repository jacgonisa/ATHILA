 AllPfam=read.table(file="WholeTransdecoder_280722.stdout", header=F, fill=T)
ATHILA_Pfam= AllPfam[AllPfam$V19 == "ATHILA",]
names_ATHILAORF = ATHILA_Pfam$V3
names_ATHILAORF = as.character(ATHILA_Pfam$V3)
AllPeptides = read.fasta("Whole ...pep", seqtype="AA")
ATHILAORF_proteins = AllPeptides[names_ATHILAORF]
#Get ATHILAX
ATHILA5_ATHILAORF_proteins = ATHILAORF_proteins[grep("ATHILA5",getName(ATHILAORF_proteins))]

### Modify table: concatenating names
AllPfam$Concatenated = paste(AllPfam$V19, AllPfam$V20, AllPfam$V21, AllPfam$V22, AllPfam$V23)
AllPfam$V19 = NULL
AllPfam$V20 = NULL
AllPfam$V21 = NULL
AllPfam$V22 = NULL
AllPfam$V23 = NULL
 ###

