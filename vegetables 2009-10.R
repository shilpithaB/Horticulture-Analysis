library("readxl")
v1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(v1)

v2<-v1[,c("State/Union Territory","Vegetables 2009-10 Area (in '000 Hectare)","Vegetables 2009-10 Production (in '000 Tonne)")]
View(v2)
