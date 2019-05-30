# Make backup
dataset.backup3 <- dataset
dataset <- dataset.backup3
# Pull up NA's
is.na(dataset)

# To fill Age84 we need to find the percent decrease from Age80 to Age84
# by taking the average from years 1990 to 2020
# Age84
str(dataset)
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
