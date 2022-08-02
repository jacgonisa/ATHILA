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

## ATHILA-ORFs that also contain other motifs
ATHILAORF_withothermotifs= AllPfam[AllPfam$V3%in%ATHILA_Pfam$V3, ]

#We have ATHILA-ORF, lets do AllPfam - ATHILA-ORF (= AllPfam_withoutATHILA)
AllPfam_withoutATHILAORF= AllPfam[- which(AllPfam$Concatenated == "ATHILA ORF-1 family  "), ]

#AllPfam_withoutATHILA + GagPol
AllPfam_withoutATHILAORF_withGagPol = AllPfam_withoutATHILAORF[AllPfam_withoutATHILAORF$Concatenated == "gag-polyprotein putative aspartyl protease  ",]

#FASTA creation
names_withoutATHILAORF_withGagPol= AllPfam_withoutATHILAORF_withGagPol$V3
proteins_withoutATHILAORF_withGagPol= AllPeptides[names_withoutATHILAORF_withGagPol]
ATHILA5_proteins_withoutATHILAORF_withGagPol= proteins_withoutATHILAORF_withGagPol[grep("ATHILA5",getName(proteins_withoutATHILAORF_withGagPol))]
write.fasta(getSequence(ATHILA5_proteins_withoutATHILAORF_withGagPol), getName(ATHILA5_proteins_withoutATHILAORF_withGagPol), file.out ="ATHILA5_proteins_withoutATHILAORF_withGagPol.fa")

#AllPfam_withoutATHILAORF_withoutGagPol
AllPfam_withoutATHILAORF_withoutGagPol=  AllPfam_withoutATHILAORF[- which(AllPfam_withoutATHILAORF$Concatenated == "gag-polyprotein putative aspartyl protease "), ]

#AllPfam_withoutATHILA + Aspartyl protease
AllPfam_withoutATHILAORF_withoutGagPol_withAspartyl = AllPfam_withoutATHILAORF_withoutGagPol[AllPfam_withoutATHILAORF_withoutGagPol$Concatenated == "Aspartyl protease   ",]
#AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl
AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl=  AllPfam_withoutATHILAORF_withoutGagPol[- which(AllPfam_withoutATHILAORF_withoutGagPol$Concatenated == "Aspartyl protease   "), ]

#AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl+ Retrotransposon gag protein
AllPfam_woATHILAORF_GagPol_Aspartyl_withRetrotransposon = AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl[AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl$Concatenated == "Retrotransposon gag protein  ",]
#AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon
AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon=  AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl[- which(AllPfam_withoutATHILAORF_withoutGagPol_woAspartyl$Concatenated == "Retrotransposon gag protein  "), ]
##FIXING PROBLEM WITH
AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon =AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon[- which(AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon$Concatenated == "    "), ]

sort(table(AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon$Concatenated))

#AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon +  Reverse transcriptase (RNA-dependent DNA polymerase)
AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_withRT= AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon[AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon$Concatenated == "Reverse transcriptase (RNA-dependent DNA polymerase)" ,]
#AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT
AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT= AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon [- which(AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon$Concatenated == "Reverse transcriptase (RNA-dependent DNA polymerase)"), ]

sort(table(AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT$Concatenated))

#AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT + Integrase
AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int = AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT[AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT$Concatenated == "Integrase core domain  " ,]

names_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int= AllPfam_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int$V3
proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int= AllPeptides[names_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int]
ATHILA5_proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int= proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int[grep("ATHILA5",getName(proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int))]
write.fasta(getSequence(ATHILA5_proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int), getName(ATHILA5_proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int), file.out ="ATHILA5_proteins_woATHILAORF_GagPol_Aspartyl_Retrotransposon_RT_with_Int.fa")
