library("readxl")
n1<- read_excel("C:\\Users\\hp\\Downloads\\data.xls",sheet="Area&Prod of Crops - state-wise")
View(n1)

n1[n1=="NA"]<-NA
View(n1)

n2<-n1[,c("State/Union Territory","Nuts 2009-10 Area (in '000 Hectare)","Nuts 2009-10 Production (in '000 Tonne)")]
View(n2)





names(n2)
colnames(n2)[colnames(n2) == "Nuts 2009-10 Area (in '000 Hectare)"] <- "nuts"
View(n2)

library(plotly)
library(ggplot2)
n2[is.na(n2)] <- 0
View(n2)
 


library(plotly)
l <- list(color = toRGB("white"), width = 2)
g <- list(
  scope = 'india',
  projection = list(type = 'albers usa'),
  showlakes = TRUE,
  lakecolor = toRGB('white')
)

p <- plot_geo(n2, locationmode = 'INDIA-states') %>%
  add_trace(
    z = ~nuts, text = ~nuts, locations = ~code,
    color = ~nutss, colors = 'Purples'
  ) %>%
  colorbar(title = "Area of nuts") %>%
  layout(
    title = `Nuts 2009-10 Area (in '000 Hectare)`,
    geo = g
  )

