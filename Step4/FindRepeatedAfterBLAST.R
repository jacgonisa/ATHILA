    athilaorf_table = read.table("athila5_Athilaorf.fa_blastall_250722")
    myself_athila = athilaorf_table[athilaorf_table$V1 == athilaorf_table$V2, ]
    mynonself_athila =  athilaorf_table[athilaorf_table$V1 != athilaorf_table$V2, ]

    onlyself = myself_athila[!(myself_athila$V1%in%mynonself_athila$V1),]

## Create a table to visualize in Cytoscape
    write.table(mynonself_athila[ ,c(1,2)] , "nonself_athilaorf_athila")
