# scatter plot
library(ggplot2)
a <- ggplot(dataset, aes( x=year), color = variable)
a + geom_point(aes(y=Age4))+
  geom_point(aes(y=Age9))
