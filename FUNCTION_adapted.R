write.fasta.athila.All <- function(alexfile, file.name )
{
  fasta.names <- vector(length = nrow(alexfile), mode = "character")
  fasta.seqs <-list()
  
  for (i in 1:nrow(alexfile))
  {
 
    Chr=alexfile[i,1]
    start=alexfile[i,2]
    stop=alexfile[i,3]
    length=(stop - start) +1
    accession = alexfile[i,7]
    athila =alexfile[i,8]
    
    if (alexfile[i,9] == "out")
    {
    preference = "Centrophobic"
    }else if (alexfile[i,9] == "in")
    {
      preference = "Centrophilic"
    }
    
    fasta.names[i] = paste(c(Chr,start,stop,length,athila,accession,preference), collapse = "_")
  
 
     
  
    fasta.seqs [[i]] = getSequence(read.fasta(paste(accession,".fasta",sep="")))[[as.numeric(gsub("Chr","",Chr))]]
    fasta.seqs [[i]] = fasta.seqs [[i]][start:stop]
  }
  write.fasta(sequences = fasta.seqs, names = fasta.names, file.out= file.name)
  return(file.name)
}

