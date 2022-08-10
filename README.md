# ATHILA
## Step 1: Get TE sequences from fasta files
Since there are more than 60 complete genome fasta files of A. thaliana accesions, coding a function to get TE sequences from fasta and paste them with an appropiate name is very necesssary.


## Step 2: Translate TE sequence to proteins using Transdecoder
from mcsitzer/maize_genomic_ecosystem/te_genes/orfs/

longest_orfs.pep obtained
We obtained .p1 (the largest predicted protein, which is gagpol-orf) and .p2 (athila-orf)

  
## Step 3: Identify Pfam motifs of peptides to sort them into GagPol-ORF and ATHILA-ORF
   ### Step 3.1: Run Pfam.sh script, from mcsitzer/maize_genomic_ecosystem/te_genes
   ### Step 3.2: Select ATHILA(X) and split proteins into gagpol-orf and athila-orf fasta files
"grep" function plays a crucial role in this step
   ### Step 3.3: Annotate TEs according to their number of relevant Pfam motifs
   ### Step 3.4: Chi-squared test followed by Pearson distribution to detect enrichments in any specific Pfam motif

## Step 4: BLAST Outgroups to gag-pol and athila-orf
This step aims to filter the selected outgroups

## Step 5: Alignment GagPol-ORF and ATHILA-ORF with MAFFT
## Step 6: Phylogenetic tree with IQtree
Sequences are clustered by length. We want to keep those of largest size (autonomous elements with all the retrotransposon proteins)
## Step 7: Repeat steps 5 and 6 for a threshold of >12 kb

## Appendix: Check proteins using BLASTALL
- We check for ORFs that do not align with anything (odd TEs), which means this TEs are "intruders"

- Re-dot-table is useful for detecting LTRs. They are not present in these odd TEs
- 
## Step x: Cytoscape Double-check

