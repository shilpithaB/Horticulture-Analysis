library("readxl")
vg1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(vg1)

vg2<-vg1[,c("State/Union Territory","Vegetables 2010-11 Area (in '000 Hectare)","Vegetables 2010-11 Production (in '000 Tonne)")]
View(vg2)
