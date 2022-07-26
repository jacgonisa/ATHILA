source activate jacob_env

file='athila5_gagpol.fa'

cd /home/irh25/jacob/001Genomes/004Transdecoder/Attempt_Whole_22.07.2022_filtered/WholeTable_18.07.2022.fasta.tran$#makeblastdb -dbtype prot  -in $file  -out Athila5_gagpolforBLASTALL
makeblastdb -dbtype prot  -in $file  -out Athila5_gagpolforBLASTALL
blastall -p  blastp -d Athila5_gagpolforBLASTALL -e 1e-5 -i $file  -o ${file}_blastall_250722 -m 6


# -outfmt "7 qseqid sseqid pident length evalue"
