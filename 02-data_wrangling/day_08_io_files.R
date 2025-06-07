# Day 08: Data Import & Export in R

# Load necessary packages

library(readr) # For read_csv()
library(readxl) # For read_excel()
library(writexl) # For write_excel()
library(haven) # For SPSS, Stata , SAS
library(dplyr)

# 1. Import CSV
students <- read.csv("data/students.csv")
summary(students)
head(students)

# 2. Import Excel
lab_results <- read_excel("data/lab_results.xlsx")
head(lab_results)

# 3. Import SPSS
spss_data <- read_sav("data/organ_study.sav")
head(spss_data)
str(spss_data)

# 4. Export CSV
summary_data <- data.frame(
  student =c("Ali","Becky"),
  knowledge_score = c(14,10),
  eligible = c(TRUE, FALSE)
)
write_csv(summary_data,"outputs/summary_data.csv")

# 5. Export Excel
write_xlsx(summary_data,"outputs/summary_data.xlsx")

# 6.Save/Load R objects (RDS)
saveRDS(summary_data,file = "outputs/summary_data.rds")
reloaded <- readRDS("outputs/summary_data.rds")
print(reloaded)