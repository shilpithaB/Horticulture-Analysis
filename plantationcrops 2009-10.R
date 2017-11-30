library("readxl")
p1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(p1)

p2<-p1[,c("State/Union Territory","Plantation Crops 2009-10 Area (in '000 Hectare)","Plantation Crops 2009-10 Production (in '000 Tonne)")]
View(p2)
p3<-p2[ -c(2,4,(8:11),14,16,(21:23),(26:27),(30:33)),]
View(p3)
