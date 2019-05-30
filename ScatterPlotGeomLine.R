# scatter plot
library(ggplot2)
a <- ggplot(dataset, aes( x=year), color = variable)
a + geom_point(aes(y = Age4, col= "Age4"))+
  geom_line(aes(y=Age4, col="Age4"))+
  geom_point(aes(y=Age9, col="Age9"))+
  geom_line(aes(y=Age9, col="Age9"))+
  geom_point(aes(y=Age14, col="Age14"))+
  geom_line(aes(y=Age14, col="Age14"))+
  geom_point(aes(y=Age19, col="Age19"))+
  geom_line(aes(y=Age19, col="Age19")) +
  ylab("Ages")

str(dataset)
