source activate jacob_env

file='Col-0-Weigel.5chrs.fasta_proteins.fa'

cd /home/irh25/jacob/001Genomes/002WholeGenome/001Odd_TEs/Attempt_kewall3_fromFUNCTION/001BLAST_KewAll3
#makeblastdb -dbtype prot  -in $file  -out ProteinsColDatabaseforBLAST

blastp -query longest_orfs.pep  -db ProteinsColDatabaseforBLAST  -out KewtoColgenes_blast_270722
