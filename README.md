# ATHILA
## Step 1: Get TE sequences from fasta files
Since there are more than 60 complete genome fasta files of A. thaliana accesions, coding a function to get TE sequences from fasta and paste them with an appropiate name is very necesssary.


## Step 2: Translate TE sequence to proteins using Transdecoder
from mcsitzer/maize_genomic_ecosystem/te_genes/orfs/

file.pep obtained

We obtained .p1 (the largest predicted protein, which is gagpol-orf) and .p2 (athila-orf)
      

## Step 3: Select ATHILAX and split proteins into gagpol-orf and athila-orf fasta files
      grep "ATHILA" file.pep > new_file
## Step 4: Check proteins using BLASTALL
