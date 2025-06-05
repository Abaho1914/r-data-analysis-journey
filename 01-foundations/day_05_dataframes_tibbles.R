# Day 05: Data Frames and Tibbles

# 1. Create a data frame
patients <- data.frame(
  ID = c(101,102,103),
  Name = c("Alice","Bob","Carol"),
  Age = c(23,35,29),
  Temperature = c(36.7,38.2,37.5),
  stringsAsFactors = FALSE
)

print(patients)
str(patients)
summary(patients)

# 2. Access columns
patients$Name
patients[["Age"]]
patients[,"Temperature",drop=FALSE]
patients[1,]  # first row
patients[,2] # second column

# 3.Add a new column
patients$Diagnosis <- c("Malaria","Typhoid","Cold")
patients

# 4. Filter rows
patients[patients$Temperature>37.5,]

# 5. Use 'dplyr' + tibble
library(dplyr)
library(tibble)

# convert to tibble

patients_tbl <- as_tibble(patients)
print(patients_tbl)

#Use dplyr pipe
patients_tbl %>%
  filter(Temperature > 37 )%>%
  select(ID,Name,Diagnosis)