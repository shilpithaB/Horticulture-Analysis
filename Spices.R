library(xlsx)
df<- read.xlsx("/home/shauny/Desktop/yeildhort2032015/spices.xlsx",sheetIndex=1, header=TRUE)
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

#........Total Spices Production in 2011-2012.........
plot_ly(df, labels = ~df$STATES, values = ~df$`2011-2012(P)`, type = 'pie') %>%
  layout(title = 'Total Spices Production in 2011-2012',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
............................................................................


#....................Total Spices Area and Production in 2012-2013............
plot_ly(df, labels = ~df$STATES, values = ~df$`2012-2013(P)`, type = 'pie') %>%
  layout(title = 'Total Spices Production in 2012-2013',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
..............................................................................

#.................Total Spices Area and Production in 2013-2014...............
plot_ly(df, labels = ~df$STATES, values = ~df$`2013-2014(P)`, type = 'pie') %>%
  layout(title = 'Total Spices Production in 2013-2014',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
.......................................................................................

#...............Total Plantation Yield_Hort in 2011-2012(Production)..................
plot_ly(df, labels = ~df$STATES, values = ~df$`2011-2012(Yield_Hort(P))`, type = 'pie') %>%
layout(title = 'Total Spices Yield_Hort in 2011-2012(Production)',
       xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
       yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
.......................................................................................

#..........Total Spices Yield_Hort in 2012-2013(Production).......................
plot_ly(df, labels = ~df$STATES, values = ~df$`2012-2013(Yield_Hort(P))`, type = 'pie') %>%
  layout(title = 'Total Spices Yield_Hort in 2012-2013(Production)',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
.......................................................................................


#..........Total Spices Yield_Hort in 2013-2014(Production).......................
plot_ly(df, labels = ~df$STATES, values = ~df$`2013-2014(Yield_Hort(P))`, type = 'pie') %>%
  layout(title = 'Total Spices Yield_Hort in 2013-2014(Production)',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
.......................................................................................


#..........Total Spices % change in 2013-2014 over 2012-2013(Production).......................
plot_ly(df, labels = ~df$STATES, values = ~df$`% change in 2013-2014 over 2012-2013(P)`, type = 'pie') %>%
  layout(title = '% change in 2013-2014 over 2012-2013(P)',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
..................................................................................................


#..........Total Spices  % change in 2012-2013 over 2011-2012(Production).......................
plot_ly(df, labels = ~df$STATES, values = ~df$`% change in 2012-2013 over 2011-2012(P)`, type = 'pie') %>%
  layout(title = '% change in 2012-2013 over 2011-2012(P)',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, shoticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
..................................................................................................
