data<-read.csv("medal_table.csv")
summary(data)
attach(data)
problem2<-tapply(Medal,INDEX=NOC,FUN=table)
problem2
detach(data)
