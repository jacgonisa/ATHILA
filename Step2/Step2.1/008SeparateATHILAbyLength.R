#Extracting >12 kb for ATH5 ATHILA-ORF
ath5_athorf = read.fasta("ATHILA5_ATHILAORF_Allproteins_280722.fa",seqtype="AA")
names_ath5_athorf= getName(ath5_athorf)
names_ath5_athorf= as.data.frame(names_ath5_athorf)
names_ath5_athorf_separated = gsub("_", " ", names_ath5_athorf$names_ath5_athorf)
 names_ath5_athorf_separated= as.data.frame(names_ath5_athorf_separated)
names_ath5_athorf_separated = names_ath5_athorf_separated %>% separate(names_ath5_athorf_separated , c("Chr", "start", "stop", "length", "a", "b","c","d"))
names_ath5_athorf_length=cbind(names_ath5_athorf, names_ath5_athorf_separated$length)
names_ath5_athorf_length$Length = as.numeric(names_ath5_athorf_separated$length)
names_ath5_athorf_length_morethan12000= names_ath5_athorf_length[names_ath5_athorf_length$Length >= 12000, ]
ath5_athorf_morethan12000= ath5_athorf[names_ath5_athorf_length_morethan12000$names_ath5_athorf]
write.fasta(getSequence(ath5_athorf_morethan12000), getName(ath5_athorf_morethan12000), file.out="ath5_athorf_morethan12000_08082022")

#Extracting >12 kb for ATH5 GagPol-ORF
ath5_gagpolorf = read.fasta("ATHILA5_GagPolORF_completeandincompleteORFs_proteins_030822.fa",seqtype="AA")
names_ath5_gagpolorf= getName(ath5_gagpolorf)
names_ath5_gagpolorf= as.data.frame(names_ath5_gagpolorf)
names_ath5_gagpolorf_separated = gsub("_", " ", names_ath5_gagpolorf$names_ath5_gagpolorf)
names_ath5_gagpolorf_separated= as.data.frame(names_ath5_gagpolorf_separated)
names_ath5_gagpolorf_separated = names_ath5_gagpolorf_separated %>% separate(names_ath5_gagpolorf_separated , c("Chr", "start", "stop", "length", "a", "b","c","d"))
names_ath5_gagpolorf_length=cbind(names_ath5_gagpolorf, names_ath5_gagpolorf_separated$length)
names_ath5_gagpolorf_length$Length = as.numeric(names_ath5_gagpolorf_separated$length)
names_ath5_gagpolorf_length_morethan12000= names_ath5_gagpolorf_length[names_ath5_gagpolorf_length$Length >= 12000  names_ath5_gagpolorf_length$Length < 8000, ]
ath5_gagpolorf_morethan12000= ath5_gagpolorf[as.character(names_ath5_gagpolorf_length_morethan12000$names_ath5_gagpolorf)]
write.fasta(getSequence(ath5_gagpolorf_morethan12000), getName(ath5_gagpolorf_morethan12000), file.out="ath5_gagpolorf_morethan12000_08082022")
