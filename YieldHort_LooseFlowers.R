library(xlsx)
df<- read.xlsx("/home/shauny/Desktop/yeildhort2032015/loose flowers.xlsx",sheetIndex=1, header=TRUE)
df

colnames(df)[colnames(df) == 'STATES.Uts.'] <- 'STATES'
colnames(df)[colnames(df) == 'X2011.12'] <- '2011-2012(A)'
colnames(df)[colnames(df) == 'NA.'] <- '2011-2012(P)'
colnames(df)[colnames(df) == 'X2012.13'] <- '2012-2013(A)'
colnames(df)[colnames(df) == 'NA..1'] <- '2012-2013(P)'
colnames(df)[colnames(df) == 'X2013.14'] <- '2013-2014(A)'
colnames(df)[colnames(df) == 'NA..2'] <- '2013-2014(P)'
colnames(df)[colnames(df) == 'X2011.12.1'] <- '2011-2012(Yield_Hort(P))'
colnames(df)[colnames(df) == 'X2012.13.1'] <- '2012-2013(Yield_Hort(P))'
colnames(df)[colnames(df) == 'X2013.14.1'] <- '2013-2014(Yield_Hort(P))'
colnames(df)[colnames(df) == 'X..Change.in.2012.13.Over.2011.12'] <- '% change in 2012-2013 over 2011-2012(A)'
colnames(df)[colnames(df) == 'NA..3'] <- '% change in 2012-2013 over 2011-2012(P)'
colnames(df)[colnames(df) == 'X..Change.in.2013.14.Over.2012.13'] <- '% change in 2013-2014 over 2012-2013(A)'
colnames(df)[colnames(df) == 'NA..4'] <- '% change in 2013-2014 over 2012-2013(P)'


rownames(df) <- 1:nrow(df)
df[is.na(df)] <- 0
df


library(plotly)
plot_ly(df, x = ~`STATES`, y = ~`2011-2012(P)`, type = 'scatter', mode = 'markers',
        marker = list(size = ~`2011-2012(A)`, opacity = 0.5, color = 'rgb(255, 65, 54)')) %>%
  layout(title = 'Gender Gap in Earnings per University',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE))
plot_ly(df, x = ~df$STATES, y = ~df$`2011-2012(P)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(176,196,222)')) %>%
  add_trace(y = ~df$`2011-2012(A)`, name = 'Production', marker = list(color = 'rgb(127,255,212)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')


library(plotly)
plot_ly(df, x = ~df$STATES, y = ~df$`2012-2013(P)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(0,206,209)')) %>%
  add_trace(y = ~df$`2012-2013(A)`, name = 'Production', marker = list(color = 'rgb(102,205,170)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')

library(plotly)
plot_ly(df, x = ~df$STATES, y = ~df$`2013-2014(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(154,205,50)')) %>%
  add_trace(y = ~df$`2013-2014(P)`, name = 'Production', marker = list(color = 'rgb(240,128,128)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')

library(plotly)
df$`2011-2012(Yield_Hort(P))` <- as.numeric(as.character(df$`2011-2012(Yield_Hort(P))`))
plot_ly(df, x = ~df$STATES, y = ~df$`2011-2012(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(255,105,180)')) %>%
  add_trace(y = ~df$`2011-2012(Yield_Hort(P))`, name = 'Production', marker = list(color = 'rgb(250,128,114)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')



library(plotly)
df$`2012-2013(Yield_Hort(P))` <- as.numeric(as.character(df$`2012-2013(Yield_Hort(P))`))
plot_ly(df, x = ~df$STATES, y = ~df$`2012-2013(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(148,0,211)')) %>%
  add_trace(y = ~df$`2012-2013(Yield_Hort(P))`, name = 'Production', marker = list(color = 'rgb(0,255,127)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')

library(plotly)
df$`2013-2014(Yield_Hort(P))` <- as.numeric(as.character(df$`2013-2014(Yield_Hort(P))`))
plot_ly(df, x = ~df$STATES, y = ~df$`2013-2014(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(49,130,189)')) %>%
  add_trace(y = ~df$`2013-2014(Yield_Hort(P))`, name = 'Production', marker = list(color = 'rgb(204,204,204)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')



library(plotly)
df$`% change in 2012-2013 over 2011-2012(P)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(P)`))
df$`% change in 2012-2013 over 2011-2012(A)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(A)`))
plot_ly(df, x = ~df$STATES, y = ~df$`% change in 2012-2013 over 2011-2012(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(255,127,80)')) %>%
  add_trace(y = ~df$`% change in 2012-2013 over 2011-2012(P)`, name = 'Production', marker = list(color = 'rgb(189,183,107)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')


library(plotly)
df$`% change in 2013-2014 over 2012-2013(A)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(A)`))
df$`% change in 2013-2014 over 2012-2013(P)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(P)`))
plot_ly(df, x = ~df$STATES, y = ~df$`% change in 2013-2014 over 2012-2013(A)`, type = 'bar', name = 'Area', marker = list(color = 'rgb(205,92,92)')) %>%
  add_trace(y = ~df$`% change in 2013-2014 over 2012-2013(P)`, name = 'Production', marker = list(color = 'rgb(218,165,32)')) %>%
  layout(xaxis = list(title = "", tickangle = -45),
         yaxis = list(title = ""),
         margin = list(b = 100),
         barmode = 'group')
