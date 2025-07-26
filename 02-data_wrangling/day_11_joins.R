library(dplyr)
library(readr)

students <- read_csv("data/students.csv")

# Simulate another dataset: lab results
lab_results <- data.frame(
  Name = c("Ali", "Becky", "Charles", "Dina", "Elvis"),
  Hb = c(13.2, 12.4, 14.1, 11.8, 13.9),
  WBC = c(7.5, 6.8, 8.2, 7.0, 9.1)
)

#Left Join
students_lab <- students %>%
  left_join(lab_results, by = "Name")

#Inner join
students_inner <- students %>%
  inner_join(lab_results, by = "Name")

students_inner

#Right join
students_right <- students %>%
  right_join(lab_results, by = "Name")

#Full join
students_full <- students %>%
  full_join(lab_results, by = "Name")


students %>% semi_join(lab_results, by = "Name")
students %>% anti_join(lab_results, by = "Name")


#Practice

#Add a new blood_type dataset:
  
blood_type <- data.frame(
  Name = c("Ali", "Becky", "Dina", "Faith"),
  Blood_Type = c("A+", "O-", "B+", "AB+")
)
#Left join students_lab with blood_type to get students_fullinfo.

students_full_info <- students_lab %>% left_join(
  blood_type, by ="Name"
)

#Identify which students don’t have blood type data using anti_join().
no_blood_type <- students_full_info %>% anti_join(blood_type,by = "Name")



