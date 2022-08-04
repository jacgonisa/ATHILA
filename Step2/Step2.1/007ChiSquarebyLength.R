## We apply gsub to df_p1p2p3$Name
#Apply the following to split any string character in several columns
table = table %>% separate(x, c("Chr", "start", "stop", "length", "a", "b","c","d"))
df_p1p2p3$Length = table$length
df_p1p2p3$Length = as.numeric(df_p1p2p3$Length)
quantiles= quantile(df_p1p2p3$Length)
df_p1p2p3_Q1= df_p1p2p3[df_p1p2p3$Length >= quantiles[[1]] & df_p1p2p3$Length < quantiles[[2]], ]
df_p1p2p3_Q2= df_p1p2p3[df_p1p2p3$Length >= quantiles[[2]] & df_p1p2p3$Length < quantiles[[3]], ]
df_p1p2p3_Q3= df_p1p2p3[df_p1p2p3$Length >= quantiles[[3]] & df_p1p2p3$Length < quantiles[[4]], ]
df_p1p2p3_Q4= df_p1p2p3[df_p1p2p3$Length >= quantiles[[4]] & df_p1p2p3$Length <= quantiles[[5]], ]
