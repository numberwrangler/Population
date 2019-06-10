# ALways good to have a backup
dataset.backup <- dataset
dataset = dataset.backup
# Took about 41 lines of code to 1 line
dataset <- as.data.frame(lapply(dataset, function(y) as.numeric(gsub(" ", "",y))))
str(dataset)
summary(dataset)
# Need to remove spaces and commas before changing factors
#for (i in colnames(dataset)){
  #dataset[,i] <- gsub(" ","", dataset[,i])
#}
# Old code reduced to code above
# dataset$Age4 <- gsub(" ","", dataset$Age4)
# dataset$Age9 <- gsub(" ","", dataset$Age9)
# dataset$Age14 <- gsub(" ","", dataset$Age14)
# dataset$Age19 <- gsub(" ","", dataset$Age19)
# dataset$Age24 <- gsub(" ","", dataset$Age24)
# dataset$Age29 <- gsub(" ","", dataset$Age29)
# dataset$Age34 <- gsub(" ","", dataset$Age34)
# dataset$Age39 <- gsub(" ","", dataset$Age39)
# dataset$Age44 <- gsub(" ","", dataset$Age44)
# dataset$Age49 <- gsub(" ","", dataset$Age49)
# dataset$Age54 <- gsub(" ","", dataset$Age54)
# dataset$Age59 <- gsub(" ","", dataset$Age59)
# dataset$Age64 <- gsub(" ","", dataset$Age64)
# dataset$Age69 <- gsub(" ","", dataset$Age69)
# dataset$Age74 <- gsub(" ","", dataset$Age74)
# dataset$Age79 <- gsub(" ","", dataset$Age79)
# dataset$Age80 <- gsub(" ","", dataset$Age80)
# dataset$Age84 <- gsub(" ","", dataset$Age84)
# dataset$Age89 <- gsub(" ","", dataset$Age89)
# dataset$Age94 <- gsub(" ","", dataset$Age94)
# dataset$Age99 <- gsub(" ","", dataset$Age99)

# check to make sure that the columns are either Num or Chr
#str(dataset)

# Set as Num new code
#for (i in colnames(dataset)){
#  dataset[,i] <- as.numeric(dataset[,i])
#}

# This is the old code
# dataset$Age4 <- as.numeric(dataset$Age4)
# dataset$Age9 <- as.numeric(dataset$Age9)
# dataset$Age14 <- as.numeric(dataset$Age14)
# dataset$Age19 <- as.numeric(dataset$Age19)
# dataset$Age24 <- as.numeric(dataset$Age24)
# dataset$Age29 <- as.numeric(dataset$Age29)
# dataset$Age34 <- as.numeric(dataset$Age34)
# dataset$Age39 <- as.numeric(dataset$Age39)
# dataset$Age44 <- as.numeric(dataset$Age44)
# dataset$Age49 <- as.numeric(dataset$Age49)
# dataset$Age54 <- as.numeric(dataset$Age54)
# dataset$Age59 <- as.numeric(dataset$Age59)
# dataset$Age64 <- as.numeric(dataset$Age64)
# dataset$Age69 <- as.numeric(dataset$Age69)
# dataset$Age74 <- as.numeric(dataset$Age74)
# dataset$Age79 <- as.numeric(dataset$Age79)
# dataset$Age80 <- as.numeric(dataset$Age80)
# dataset$Age84 <- as.numeric(dataset$Age84)
# dataset$Age89 <- as.numeric(dataset$Age89)
# dataset$Age94 <- as.numeric(dataset$Age94)
# dataset$Age99 <- as.numeric(dataset$Age99)

# Check to make sure all are num
str(dataset)

# Now the summary gives what we are looking for
summary(dataset)
