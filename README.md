# ATHILA
## Step 1: Get TE sequences from fasta files
Since there are more than 60 complete genome fasta files of A. thaliana accesions, coding a function to get TE sequences from fasta and paste them with an appropiate name is very necesssary.


## Step 2: Translate TE sequence to proteins using Transdecoder
from mcsitzer/maize_genomic_ecosystem/te_genes/orfs/

longest_orfs.pep obtained

We obtained .p1 (the largest predicted protein, which is gagpol-orf) and .p2 (athila-orf)
      

## Step 3: Select ATHILA(X) and split proteins into gagpol-orf and athila-orf fasta files
"grep" function plays a crucial role in this step
      
## Step 4: Check proteins using BLASTALL
We check for ORFs that do not align with anything (odd TEs), which means this TEs are "intruders"
