library(xlsx)
df<- read.xlsx("/home/shauny/Desktop/yeildhort2032015/plantation.xlsx",sheetIndex=1, header=TRUE)
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

df = df[-1,]
rownames(df) <- 1:nrow(df)
df[is.na(df)] <- 0
df

library(plotly)
#........Total Plantation Production in 2011-2012.........
df$`2011-2012(A)` <- as.numeric(as.character(df$`2011-2012(A)`))
df$`2011-2012(P)` <- as.numeric(as.character(df$`2011-2012(P)`))
plot_ly(df, x = ~df$STATES, y = df$`2011-2012(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`2011-2012(P)`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................



#........Total Plantation Production in 2012-2013.........
df$`2012-2013(A)` <- as.numeric(as.character(df$`2012-2013(A)`))
df$`2012-2013(P)` <- as.numeric(as.character(df$`2012-2013(P)`))
plot_ly(df, x = ~df$STATES, y = df$`2012-2013(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`2012-2013(P)`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................


#........Total Plantation Production in 2013-2014.........
df$`2013-2014(A)` <- as.numeric(as.character(df$`2013-2014(A)`))
df$`2013-2014(P)` <- as.numeric(as.character(df$`2013-2014(P)`))
plot_ly(df, x = ~df$STATES, y = df$`2013-2014(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`2013-2014(P)`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................



#........Yield Plantation Production in 2011-2012.........
df$`2011-2012(Yield_Hort(P))` <- as.numeric(as.character(df$`2011-2012(Yield_Hort(P))`))
plot_ly(df, x = ~df$STATES, y = df$`2011-2012(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`2011-2012(Yield_Hort(P))`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................


#........Yield Plantation Production in 2012-2013.........
df$`2012-2013(Yield_Hort(P))` <- as.numeric(as.character(df$`2012-2013(Yield_Hort(P))`))
plot_ly(df, x = ~df$STATES, y = df$`2012-2013(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`2012-2013(Yield_Hort(P))`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................


#........Yield Plantation Production in 2013-2014.........
df$`2013-2014(Yield_Hort(P))` <- as.numeric(as.character(df$`2013-2014(Yield_Hort(P))`))
plot_ly(df, x = ~df$STATES, y = df$`2013-2014(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`2013-2014(Yield_Hort(P))`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................



#........ Plantation Production % change in 2012-2013 over 2011-2012.........
df$`% change in 2012-2013 over 2011-2012(A)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(A)`))
df$`% change in 2012-2013 over 2011-2012(P)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(P)`))
plot_ly(df, x = ~df$STATES, y = df$`% change in 2012-2013 over 2011-2012(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`% change in 2012-2013 over 2011-2012(P)`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................



#........ Plantation Production % change in 2013-2014 over 2012-2013.........
df$`% change in 2013-2014 over 2012-2013(A)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(A)`))
df$`% change in 2013-2014 over 2012-2013(P)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(P)`))
plot_ly(df, x = ~df$STATES, y = df$`% change in 2013-2014 over 2012-2013(A)`, type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$`% change in 2013-2014 over 2012-2013(P)`, name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.....................................................................................
