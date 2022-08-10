# ATHILA
## Step 1: Get TE sequences from fasta files
Since there are more than 60 complete genome fasta files of A. thaliana accesions, coding a function to get TE sequences from fasta and paste them with an appropiate name is very necesssary.


## Step 2: Translate TE sequence to proteins using Transdecoder
from mcsitzer/maize_genomic_ecosystem/te_genes/orfs/

longest_orfs.pep obtained

We obtained .p1 (the largest predicted protein, which is gagpol-orf) and .p2 (athila-orf)

  ### Step 2.1: Check Pfam to assess if p1=gagpol-orf and p2=athila-orf
We run Pfam.sh script, from mcsitzer/maize_genomic_ecosystem/te_genes

## Step 3: Identify Pfam motifs of peptides to sort them into GagPol-ORF and ATHILA-ORF
      

## Step 4: Select ATHILA(X) and split proteins into gagpol-orf and athila-orf fasta files
"grep" function plays a crucial role in this step
      



## Step 7: BLAST Outgroups to gag-pol and athila-orf

## Step 8: Alignment GagPol-ORF and A MAFFT


## Appendix: Check proteins using BLASTALL
- We check for ORFs that do not align with anything (odd TEs), which means this TEs are "intruders"

- Re-dot-table is useful for detecting LTRs. They are not present in these odd TEs
- 
## Step x: Cytoscape Double-check

