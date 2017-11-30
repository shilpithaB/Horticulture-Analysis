library("readxl")
pl1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(pl1)

pl2<-pl1[,c("State/Union Territory","Plantation Crops 2010-11 Area (in '000 Hectare)","Plantation Crops 2010-11 Production (in '000 Tonne)")]
View(pl2)
