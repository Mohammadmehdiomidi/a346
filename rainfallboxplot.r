library(tidyverse)
rainfall <- read_csv("rainfall.csv")
rfWide<-spread(rainfall,Month,Rainfallmm)
col_order <- c("Year","Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul","Aug", "Sep", "Oct", "Nov", "Dec")
rfWide2<-rfWide[,col_order]
boxplot(rfWide2[-c(1)])