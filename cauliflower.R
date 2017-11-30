library(xlsx)
df<- read.xlsx("/home/shauny/Desktop/yeildhort2032015/vegetables/cauliflower.xlsx",sheetIndex=1, header=TRUE)
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

library(ggplot2)
df$`2011-2012(A)` <- as.numeric(as.character(df$`2011-2012(A)`))
df$`2011-2012(P)` <- as.numeric(as.character(df$`2011-2012(P)`))
ggplot(df, aes(x =`2011-2012(P)`, y =STATES, size = `2011-2012(P)`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Production in 2011-2012") + 
  labs(x = "Production of cauliflower", y = "STATES") +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)

#................................
library(ggplot2)
df$`2012-2013(A)` <- as.numeric(as.character(df$`2012-2013(A)`))
df$`2012-2013(P)` <- as.numeric(as.character(df$`2012-2013(P)`))
ggplot(df, aes(x =`2012-2013(P)`, y =STATES, size = `2012-2013(P)`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Production in 2012-2013") + 
  labs(x = "Production of cauliflower ", y = "STATES") +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)


library(ggplot2)
df$`2013-2014(A)` <- as.numeric(as.character(df$`2013-2014(A)`))
df$`2013-2014(P)` <- as.numeric(as.character(df$`2013-2014(P)`))
ggplot(df, aes(x =`2013-2014(P)`, y =STATES, size = `2013-2014(P)`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Production in 2013-2014") + 
  labs(x = "Production of cauliflower", y = "STATES") +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)


library(ggplot2)
df$`2011-2012(Yield_Hort(P))` <- as.numeric(as.character(df$`2011-2012(Yield_Hort(P))`))
ggplot(df, aes(x =`2011-2012(Yield_Hort(P))`, y =STATES, size = `2011-2012(Yield_Hort(P))`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Yield Production in  2011-2012") + 
  labs(x = "Production of cauliflower", y = "STATES") +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)



library(ggplot2)
df$`2012-2013(Yield_Hort(P))` <- as.numeric(as.character(df$`2012-2013(Yield_Hort(P))`))
ggplot(df, aes(x =`2012-2013(Yield_Hort(P))`, y =STATES, size = `2012-2013(Yield_Hort(P))`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Yield Production in  2012-2013") + 
  labs(x = "Production of Sweet Orange", y = "STATES")  +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)



library(ggplot2)
df$`2013-2014(Yield_Hort(P))` <- as.numeric(as.character(df$`2013-2014(Yield_Hort(P))`))
ggplot(df, aes(x =`2013-2014(Yield_Hort(P))`, y =STATES, size = `2013-2014(Yield_Hort(P))`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Yield Production in  2013-2014") + 
  labs(x = "Production of cauliflower", y = "STATES")  +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)



library(ggplot2)
df$`% change in 2012-2013 over 2011-2012(A)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(A)`))
df$`% change in 2012-2013 over 2011-2012(P)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(P)`))
ggplot(df, aes(x =`% change in 2012-2013 over 2011-2012(P)`, y =STATES, size = `% change in 2012-2013 over 2011-2012(P)`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Production % change in 2012-2013 over 2011-2012(P)") + 
  labs(x = "Production % change in 2012-2013 over 2011-2012", y = "STATES")  +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)



library(ggplot2)
df$`% change in 2013-2014 over 2012-2013(A)` <- as.numeric(as.character(df$`% change in 2012-2013 over 2011-2012(A)`))
df$`% change in 2013-2014 over 2012-2013(P)` <- as.numeric(as.character(df$`% change in 2013-2014 over 2012-2013(P)`))
ggplot(df, aes(x =`% change in 2013-2014 over 2012-2013(P)`, y =STATES, size = `% change in 2013-2014 over 2012-2013(P)`)) + 
  geom_point(shape = 21, colour = "mediumvioletred", 
             fill = "yellow3") +
  ggtitle("cauliflower Production % change in 2013-2014 over 2012-2013(P)") + 
  labs(x = "Production % change in 2013-2014 over 2012-2013", y = "STATES")  +
  scale_size_area(max_size = 10) +
  scale_fill_manual(values = fill)

