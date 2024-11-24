library(readr)
df <- read_csv("fruitdata_resolved_clean.csv")

dfAvs<-aggregate(df$seconds ~ df$pagemode, FUN=mean)
colnames(dfAvs)<-c("Mode","Seconds")
barplot(dfAvs$Seconds,names=dfAvs$Mode)

veggiesByMode <-table(df$pagemode,df$veg)
barplot(veggiesByMode)
barplot(veggiesByMode,beside=TRUE)


