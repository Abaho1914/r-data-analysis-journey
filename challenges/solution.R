

donation <- c("Yes", "No", "Yes", "Maybe", "No", "Yes", "No", "Yes", "Yes", "No") 
year <- c("First", "Third", "Second", "Fifth", "Third", "Second", "First", "Fourth", "Fifth", "Third")

#Convert donation to a factor with levels; "Yes", "No", "Maybe"
donation <- factor(donation,levels = c("Yes","No","Maybe"))

# counting how many said "Yes"
table(donation)

#Making year ordered
year <- factor(year,levels = c("First","Second","Third","Fourth","Fifth"),ordered = TRUE)
levels(year)
year

# distribution across years
summary(year)
table(year)

# cross-tabulating responses by year
table(donation,year)

#Bonus plotting the factor using barplot(table(donation))
barplot(table(donation))


