# Import dataset
library(readr)
dataset <- read.csv('Population.csv', na.string=c(""))

dupes <- duplicated(dataset)

# Seeing if Colnames make since
colnames(dataset)

# Changing colnames for better understanding
colnames(dataset) <- c("year", "Age4", "Age9", "Age14", "Age19", "Age24", "Age29", "Age34", "Age39", "Age44", "Age49", "Age54", "Age59", "Age64", "Age69", "Age74", "Age79", "Age80", "Age84", "Age89", "Age94", "Age99","Age100")
rownames(dataset) <- c("1950", "1955", "1960", "1965", "1970", "1975", "1980", "1985", "1990", "1995", "2000", "2005", "2010", "2015", "2020")

# The rest are factors except Age100 wich is a num
str(dataset)

# Check for NA
is.na(dataset)

# Summary where Year and Age100 give me correct outputs
# Will change the rest from Factor to Num
summary(dataset)

# Backup dataset
backup2 <- dataset

# Finding NA's to see where we need to fill in
# Column Age80 is what we will fix
dataset[!complete.cases(dataset),]

# look at 8 rows at the top 
head(dataset,8)

# look at the last 7 rows
# Shows the NA's we will fix
tail(dataset,7)

# Shows TRUE = the NA's we will fill
is.na(dataset$Age80)

# Another way of visualizing the NA's for Age80
dataset[is.na(dataset$Age80),]

# Showing the NA's Filled in
tail(dataset,7)

# Make backup
dataset.backup3 <- dataset
dataset <- dataset.backup3
# Pull up NA's
is.na(dataset)

# Took about 41 lines of code to 1 line
dataset <- as.data.frame(lapply(dataset, function(y) as.numeric(gsub(" ", "",y))))
str(dataset)
summary(dataset)

# Taking Age84 to Age100 and adding together and putting into the NA's in Age80
dataset[is.na(dataset$Age80),"Age80"] <- dataset[is.na(dataset$Age80), "Age84"] + dataset[is.na(dataset$Age80), "Age89"] + dataset[is.na(dataset$Age80), "Age94"] + dataset[is.na(dataset$Age80), "Age99"] + dataset[is.na(dataset$Age80), "Age100"]


# To fill Age84 we need to find the percent decrease from Age80 to Age84
# by taking the average from years 1990 to 2020
# Age84
percentavg.age84 <- sum(dataset$Age84, na.rm = TRUE)/sum(dataset$Age80[9:15])
dataset[is.na(dataset$Age84),"Age84"] <- (dataset[is.na(dataset$Age84), "Age80"] * percentavg.age84)

#Age89
percentavg.age89 <- sum(dataset$Age89, na.rm = TRUE)/sum(dataset$Age84[9:15])
dataset[is.na(dataset$Age89),"Age89"] <- (dataset[is.na(dataset$Age89), "Age84"] * percentavg.age89)
dataset

# Age94
percentavg.age94 <- sum(dataset$Age94, na.rm = TRUE)/sum(dataset$Age89[9:15])
percentavg.age94
dataset[is.na(dataset$Age94),"Age94"] <- (dataset[is.na(dataset$Age94), "Age89"] * percentavg.age94)
dataset

# Age99
percentavg.age99 <- sum(dataset$Age99, na.rm = TRUE)/sum(dataset$Age94[9:15])
dataset[is.na(dataset$Age99),"Age99"] <- (dataset[is.na(dataset$Age99), "Age94"] * percentavg.age99)
dataset

# Age100
percentavg.age100 <- sum(dataset$Age100, na.rm = TRUE)/sum(dataset$Age99[9:15])
dataset[is.na(dataset$Age100),"Age100"] <- (dataset[is.na(dataset$Age100), "Age99"] * percentavg.age100)
dataset

# ALways good to have a backup
dataset.backup <- dataset
dataset = dataset.backup


# scatter plot
library(ggplot2)
a <- ggplot(dataset, aes( x=year, y = Age4), coluor = true)
a + geom_point()

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

# scatter plot
library(ggplot2)
a <- ggplot(dataset, aes( x=year), color = variable)
a + geom_point(aes(y=Age4))+
  geom_point(aes(y=Age9))

