library("readxl")
nn1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(nn1)

nn2<-nn1[,c("State/Union Territory","Nuts 2010-11 Area (in '000 Hectare)","Nuts 2010-11 Production (in '000 Tonne)")]
View(nn2)
