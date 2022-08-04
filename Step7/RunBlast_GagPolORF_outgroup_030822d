source activate jacob_env

file='ATHILA5_GagPolORF_completeandincompleteORFs_proteins_030822.fa'

cd /home/irh25/jacob/001Genomes/009BLAST/003BLAST_ATH5_GagPol_Outgroups
makeblastdb -dbtype prot  -in $file  -out ATH5_GagPol_DatabaseforBLAST

blastp -query FinalOutgroups  -db ATH5_GagPol_DatabaseforBLAST  -out AllOutgroupsforATH5_GagPol_blast_030822 -outfmt 6
