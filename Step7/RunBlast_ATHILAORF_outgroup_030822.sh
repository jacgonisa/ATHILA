source activate jacob_env

file='ATHILA5_ATHILAORF_Allproteins_280722.fa'

cd /home/irh25/jacob/001Genomes/009BLAST/002BLAST_ATH5_ATHORF_Outgroups
makeblastdb -dbtype prot  -in $file  -out ATH5_ATHORF_DatabaseforBLAST

blastp -query FinalOutgroups  -db ATH5_ATHORF_DatabaseforBLAST  -out AllOutgroupsforATH5_ATHORF_blast_030822 -outfmt 7
