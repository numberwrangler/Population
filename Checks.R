# Checking for dupes
dupes <- duplicated(dataset)

# Seeing if Colnames make since
colnames(dataset)

# Changing colnames for better understanding
colnames(dataset) <- c("year", "Age4", "Age9", "Age14", "Age19", "Age24", "Age29", "Age34", "Age39", "Age44", "Age49", "Age54", "Age59", "Age64", "Age69", "Age74", "Age79", "Age80", "Age84", "Age89", "Age94", "Age99","Age100")
rownames(dataset) <- c("1950", "1955", "1960", "1965", "1970", "1975", "1980", "1985", "1990", "1995", "2000", "2005", "2010", "2015", "2020")
# Check the internal structure of the File
# Gives Dataframe, shows what each column is
# Year is an int
# The rest are factors except Age100 wich is a num
str(dataset)

# Check for NA
is.na(dataset)

# Summary where Year and Age100 give me correct outputs
# Will change the rest from Factor to Num
summary(dataset)
