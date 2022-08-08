#Extracting >12 kb for ATH5 ATHILA-ORF
ath5_athorf = read.fasta("ATHILA5_ATHILAORF_Allproteins_280722.fa",seqtype="AA")
names_ath5_athorf= getName(ath5_athorf)
names_ath5_athorf= as.data.frame(names_ath5_athorf)
names_ath5_athorf_separated = gsub("_", " ", names_ath5_athorf$names_ath5_athorf)
 names_ath5_athorf_separated= as.data.frame(names_ath5_athorf_separated)
names_ath5_athorf_separated = names_ath5_athorf$names2 %>% separate(names2, c("Chr", "start", "stop", "length", "a", "b","c","d"))
names_ath5_athorf_separated = names_ath5_athorf_separated %>% separate(names_ath5_athorf_separated , c("Chr", "start", "stop", "length", "a", "b","c","d"))
names_ath5_athorf_length=cbind(names_ath5_athorf, names_ath5_athorf_separated$length)
names_ath5_athorf_length$Length = as.numeric(names_ath5_athorf_separated$length)
names_ath5_athorf_length_morethan12000= names_ath5_athorf_length[names_ath5_athorf_length$Length >= 12000, ]
ath5_athorf_morethan12000= ath5_athorf[names_ath5_athorf_length_morethan12000$names_ath5_athorf]
write.fasta(getSequence(ath5_athorf_morethan12000), getName(ath5_athorf_morethan12000), file.out="ath5_athorf_morethan12000_08082022")
