# Athila
## Step 1: Get TE sequences from fasta files
Since there are more than 60 complete genome fasta files of A. thaliana accesions, coding a function to get TE sequences from fasta and paste them with an appropiate name is very necesssary:
{ 

    write.fasta.athila.All <- function(file, file.name )
{
    fasta.names <- vector(length = nrow(file), mode = "character")
    fasta.seqs <-list()
  
    for (i in 1:nrow(file))
  {
 
    Chr=file[i,1]
    start=file[i,2]
    stop=file[i,3]
    length=(stop - start) +1
    accession = file[i,7]
    athila = file[i,8]
    
    if (file[i,9] == "out")
    {
    preference = "Centrophobic"
    }else if (file[i,9] == "in")
    {
      preference = "Centrophilic"
    }
    
    fasta.names[i] = paste(c(Chr,start,stop,length,athila,accession,preference), collapse = "_")
  
 }
     
  
    fasta.seqs [[i]] = getSequence(read.fasta(paste(accession,".fasta",sep="")))[[as.numeric(gsub("Chr","",Chr))]]
    fasta.seqs [[i]] = fasta.seqs [[i]][start:stop]
  }
    write.fasta(sequences = fasta.seqs, names = fasta.names, file.out= file.name)
    return(file.name) }


## Step 2: Translate TE sequence to proteins using Transdecoder
## Step 3: Split proteins into gagpol-orf and athila-orf fasta files
## Step 4: Check proteins using BLASTALL
