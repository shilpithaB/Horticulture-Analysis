library(xlsx)
df<- read.xlsx("/home/shauny/Desktop/yeildhort2032015/FRUITS/Lemon.xlsx",sheetIndex=1, header=TRUE)
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
#..............Lemon PRODUCTION IN 2011-2012...........................................................................................................
plot_ly(df, x = ~`STATES`, y = ~`2011-2012(P)`, type = 'scatter', mode = 'markers', size = ~`2011-2012(A)`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = 'Production of Lemon in 2011-2012',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
..............................................................................................................................................................


#...............................Lemon PRODUCTION IN 2012-2013...................................................................................................................
plot_ly(df, x = ~`STATES`, y = ~`2012-2013(P)`, type = 'scatter', mode = 'markers', size = ~`2012-2013(A)`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = '2012-2013 Lemon Production',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
............................................................................................................................................................


#.............................Lemon PRODUCTION IN 2013-2014...............................................................................................................
plot_ly(df, x = ~`STATES`, y = ~`2013-2014(P)`, type = 'scatter', mode = 'markers', size = ~`2013-2014(A)`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = 'Production of Lemon in 2013-2014',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
.............................................................................................................................................................



#..........Lemon YIELD PRODUCTION IN 2011-2012......................................................................................................
df$`2011-2012(Yield_Hort(P))` <- as.numeric(as.character(df$`2011-2012(Yield_Hort(P))`))
plot_ly(df, x = ~`STATES`, y = ~`2011-2012(Yield_Hort(P))`, type = 'scatter', mode = 'markers', size = ~`2011-2012(Yield_Hort(P))`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controllig for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = 'Yield Production of Lemon in 2013-2014',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
.............................................................................................................................................................

#............Lemon YIELD PRODUCTION IN 2012-2013.......................................................................................................
df$`2012-2013(Yield_Hort(P))` <- as.numeric(as.character(df$`2012-2013(Yield_Hort(P))`))
plot_ly(df, x = ~`STATES`, y = ~`2012-2013(Yield_Hort(P))`, type = 'scatter', mode = 'markers', size = ~`2012-2013(Yield_Hort(P))`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = '2012-2013 Lemon Yield Production',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
.............................................................................................................................................................


#..........Lemon YIELD PRODUCTION IN 2013-2014.......................................................................................................
df$`2013-2014(Yield_Hort(P))` <- as.numeric(as.character(df$`2013-2014(Yield_Hort(P))`))
plot_ly(df, x = ~`STATES`, y = ~`2013-2014(Yield_Hort(P))`, type = 'scatter', mode = 'markers', size = ~`2013-2014(A)`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = '2013-2014 Lemon Production',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
............................................................................................................................................................


#........Lemon PRODUCTION  % change in 2012-2013 over 2011-2012.........................................................................................................
df$`% change in 2012-2013 over 2011-2012(A)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(A)`))
df$`% change in 2012-2013 over 2011-2012(P)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(P)`))
plot_ly(df, x = ~`STATES`, y = ~`% change in 2012-2013 over 2011-2012(P)`, type = 'scatter', mode = 'markers', size = ~`% change in 2012-2013 over 2011-2012(P)`, color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 0.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5)) %>%
  layout(title = 'Lemon Production % change in 2012-2013 over 2011-2012',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)

............................................................................................................................................................


#......Lemon PRODUCTION CHANGE % CHANGE IN 2013-2014 OVER 2012-2013.............................................................................................................
df$`% change in 2013-2014 over 2012-2013(A)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(A)`))
df$`% change in 2013-2014 over 2012-2013(P)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(P)`)) 
plot_ly(df, x = ~`STATES`, y = ~`% change in 2013-2014 over 2012-2013(P)`, type = 'scatter', mode = 'markers', size = ~`% change in 2013-2014 over 2012-2013(P)` , color = ~`STATES`, colors = 'Paired',
        marker = list(opacity = 1.5, sizemode = 'diameter',
                      #Controlling for the size of the bubbles:
                      sizeref = 1.5))   %>%
  layout(title = 'Lemon Production % change in 2013-2014 over 2012-2013' ,
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE),
         showlegend = FALSE)
............................................................................................................................................................
