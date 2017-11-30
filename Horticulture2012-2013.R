library(xlsx)

df <- read.xlsx("/home/shauny/Desktop/project/horticulture12-13.xlsx",sheetIndex=1, header=TRUE)
df
df[is.na(df)] <- 0
df



plot(df$FRUITS.A.,df$FRUITS.P.,xlab = 'Area',ylab='Production')


barplot(as.matrix(x=df$F,y=df$FRUITS.P.))
barplot(df$FRUITS.A., col="darkgreen")
barplot(df$FRUITS.A.,df$FRUITS.P., col="darkgreen")
barplot(df$FRUITS.P.,df$FRUITS.P.,col="darkgreen")
colours <- c("red", "orange", "blue", "yellow", "green")
barplot(as.matrix(df$FRUITS.A.,df$FRUITS.P.), main="My Barchart", ylab = "Numbers", cex.lab = 1.5, cex.main = 1.4, beside=TRUE, col=colours)
legend("topleft", c("First","Second","Third","Fourth","Fifth"), cex=1.3, bty="n", fill=colours)




#..................FRUITS AREA VS PRODUCTION......................................................
plot_ly(df, x = ~df$STATES, y = df$FRUITS.A., type = 'bar', name = 'Area') %>%
add_trace(y = ~df$FRUITS.P., name = 'Production') %>%
layout(yaxis = list(title = "count"), barmode = 'stack')
#.......................................................................



#.............VEG AREA VS PRODUCTION............................
plot_ly(df, x = ~df$STATES, y = df$VEG.A., type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$VEG.P., name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.......................................................................


#.............FLOWERS AREA VS PRODUCTION(LOOSE)............................
plot_ly(df, x = ~df$STATES, y = df$FlOWERS.A., type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$FRUITS.P.LOOSE, name = 'Production(LOOSE)') %>%
  layout(yaxis = list(title = "count"), barmode = 'stack') 
.......................................................................


#.............FLOWERS AREA VS PRODUCTION(CUT)............................
plot_ly(df, x = ~df$STATES, y = df$FlOWERS.A., type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$FRUITS.P..CUT, name = 'Production(CUT)') %>%
  layout(yaxis = list(title = "count"), barmode ='stack') 


#.............AROMATIC AREA VS PRODUCTION..............................
plot_ly(df, x = ~df$STATES, y = df$AROMATIC.A., type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$AROMATIC.P. , name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode ='stack') 
..............................................................................

#............SPICES AREA VS PRODUCTION.......................................
plot_ly(df, x = ~df$STATES, y = df$SPICES.A., type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$SPICES.P. , name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode ='stack') 
..............................................................................

#.............PLANTATION AREA VS PRODUCTION....................................
plot_ly(df, x = ~df$STATES, y = df$PLANTATION.A., type = 'bar', name = 'Area') %>%
  add_trace(y = ~df$ PLANTATION.P., name = 'Production') %>%
  layout(yaxis = list(title = "count"), barmode ='stack') 
.............................................................................


