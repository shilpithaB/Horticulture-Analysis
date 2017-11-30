library("readxl")
sp1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(sp1)


sp2<-sp1[,c("State/Union Territory","Spices 2010-11 Area (in '000 Hectare)","Spices 2010-11 Production (in '000 Tonne)")]
View(sp2)
sp3<-sp2[ -c(30:34),]
View(sp3)
