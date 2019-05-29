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

# Taking Age84 to Age100 and adding together and putting into the NA's in Age80
dataset[is.na(dataset$Age80),"Age80"] <- dataset[is.na(dataset$Age80), "Age84"]+dataset[is.na(dataset$Age80), "Age89"]+dataset[is.na(dataset$Age80), "Age94"]+dataset[is.na(dataset$Age80), "Age99"]+dataset[is.na(dataset$Age80), "Age100"]

# Showing the NA's Filled in
tail(dataset,7)
