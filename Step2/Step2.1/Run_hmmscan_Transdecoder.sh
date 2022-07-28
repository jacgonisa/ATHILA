module load hmmer
hmmpress Pfam-A.hmm
hmmscan -o WholeTransdecoder_280722.stdout --tblout WholeTransdecoder_280722.stdout Pfam-A.hmm /home/irh25/jacob/001Genomes/007Pfam/Attempt_WholeTransdecoder_280722/WholeTable_18.07.2022.fasta.transdecoder.pep
