library("readxl")
s1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(s1)


s2<-s1[,c("State/Union Territory","Spices 2009-10 Area (in '000 Hectare)","Spices 2009-10 Production (in '000 Tonne)")]
View(s2)
s3<-s2[ -c(11,30:35),]
View(s3)
