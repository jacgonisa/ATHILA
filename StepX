AllProteins=read.fasta("longest_orfs.pep",seqtype="AA")
name_table=read.table(myproteins_fromTransdecode_220722_ATHILA5.txt)
names = gsub(">", "", name_table$V1)
athila5=AllProteins[names]
athila5_gagpol = athila5[grep("p1",getName(athila5))]
write.fasta(getSequence(athila5_gagpol), names=getName(athila5_gagpol), file.out ="athila5_gagpol.fa")
athila5_athilaorf = athila5[grep("p2",getName(athila5))]
write.fasta(getSequence(athila5_athilaorf), names=getName(athila5_athilaorf), file.out ="athila5_athilaorf.fa")
athila5_p3 = athila5[grep("p3",getName(athila5))]

### In order to extract any precise Chromosome, just do: ChrX_athila5_gagpol = athila5_gagpol[grep("ChrX",getName(athila5_gagpol))]
