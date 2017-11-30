library(xlsx)
df<- read.xlsx("/home/shauny/Desktop/Agriculture/est_1415.xls",sheetIndex=1, header=TRUE)
df
colnames(df)[colnames(df) == 'STATE.UTs'] <- 'STATES'
colnames(df)[colnames(df) == 'FRUITS'] <- 'FRUITS(A)'
colnames(df)[colnames(df) == 'NA.'] <- 'FRUITS(P)'
colnames(df)[colnames(df) == 'VEGETABLES'] <- 'VEGETABLES(A)'
colnames(df)[colnames(df) == 'NA..1'] <- 'VEGETABLES(P)'
colnames(df)[colnames(df) == 'FLOWERS'] <- 'FLOWERS(A)'
colnames(df)[colnames(df) == 'NA..2'] <- 'FLOWERS(P)(LOOSE)'
colnames(df)[colnames(df) == 'NA..3'] <- 'FLOWERS(P)(CUT)'
colnames(df)[colnames(df) == 'AROMATIC'] <- 'AROMATIC(A)'
colnames(df)[colnames(df) == 'NA..4'] <- 'AROMATIC(P)'
colnames(df)[colnames(df) == 'SPICES'] <- 'SPICES(A)'
colnames(df)[colnames(df) == 'NA..5'] <- 'SPICES(P)'
colnames(df)[colnames(df) == 'PLANTATION.CROPS'] <- 'PLANTATION(A)'
colnames(df)[colnames(df) == 'NA..6'] <- 'PLANTATION(P)'
colnames(df)[colnames(df) == 'HONEY'] <- 'HONEY(P)'
df

df = df[-1,]
rownames(df) <- 1:nrow(df)
df[is.na(df)] <- 0
df

library(plotly)

#...............FRUITS AREA VS PRODUCTION................


df$`FRUITS(A)` <- as.numeric(as.character(df$`FRUITS(A)`))
df$`FRUITS(P)` <- as.numeric(as.character(df$`FRUITS(P)`))
plot_ly(df, x = ~df$STATES, y = ~df$`FRUITS(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
       add_trace(y = ~df$`FRUITS(P)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
       layout(xaxis = list(title = "", tickangle = -45),
                           yaxis = list(title = ""),
                           margin = list(b = 100),
                           barmode = 'group')
.............................................................

#.................VEGETABLES AREA VS PRODUCTION...............
df$`VEGETABLES(A)` <- as.numeric(as.character(df$`VEGETABLES(A)`))
df$`VEGETABLES(P)` <- as.numeric(as.character(df$`VEGETABLES(P)`))
plot_ly(df, x = ~df$STATES, y = ~df$`VEGETABLES(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`VEGETABLES(P)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
..........................................................................

#...............FLOWERS AREA VS PRODUCTION(LOOSE)..............
df$`FLOWERS(A)` <- as.numeric(as.character(df$`VEGETABLES(A)`))
df$`FLOWERS(P)(LOOSE)` <- as.numeric(as.character(df$`FLOWERS(P)(LOOSE)`))
plot_ly(df, x = ~df$STATES, y = ~df$`FLOWERS(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`FLOWERS(P)(LOOSE)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
....................................................................

#.............FLOWERS AREA VS PRODUCTION(CUT).............................
df$`FLOWERS(A)` <- as.numeric(as.character(df$`VEGETABLES(A)`))
df$`FLOWERS(P)(CUT)` <- as.numeric(as.character(df$`FLOWERS(P)(CUT)`))
plot_ly(df, x = ~df$STATES, y = ~df$`FLOWERS(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`FLOWERS(P)(LOOSE)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
...................................................................

#............AROMATIC AREA VS PRODUCTION..................
df$`AROMATIC(A)` <- as.numeric(as.character(df$`AROMATIC(A)`))
df$`AROMATIC(P)` <- as.numeric(as.character(df$`AROMATIC(P)`))
plot_ly(df, x = ~df$STATES, y = ~df$`AROMATIC(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`AROMATIC(P)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
...................................................................

#..............SPICES AREA VS PRODUCTION...........................
df$`SPICES(A)` <- as.numeric(as.character(df$`SPICES(A)`))
df$`SPICES(P)` <- as.numeric(as.character(df$`SPICES(P)`))
plot_ly(df, x = ~df$STATES, y = ~df$`SPICES(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`SPICES(P)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
....................................................................


#...............PLANTATION AREA VS PRODUCTION.........................
df$`PLANTATION(A)` <- as.numeric(as.character(df$`PLANTATION(A)`))
df$`PLANTATION(P)` <- as.numeric(as.character(df$`PLANTATION(P)`))
plot_ly(df, x = ~df$STATES, y = ~df$`PLANTATION(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`PLANTATION(P)`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = "PLANTATION AREA VS PRODUCTION"),
         margin = list(b = 100),
         barmode = 'group')
........................................................................



a <- checkExpression(df,"Flo")

b <- extractColumnIndex(a,df)


c <- df[,c(1,6:8)]

d <- threshold.check(c,2.5)   # 2 tonnes as threshold 
