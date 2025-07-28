# Day 13 – Data Tidying with tidyr
library(tidyr)
library(dplyr)
library(readr)

# ------------------------------
# 1. Load wide dataset
# ------------------------------
exams_wide <- read_csv("data/exams_wide.csv")
print(exams_wide)

# ------------------------------
# 2. Convert wide to long format
# ------------------------------
exams_long <- exams_wide %>%
  pivot_longer(cols = starts_with("Exam"),
               names_to = "Exam",
               values_to = "Score")

print(exams_long)

# ------------------------------
# 3. Pivot back to wide format
# ------------------------------
exams_wide_again <- exams_long %>%
  pivot_wider(names_from = Exam, values_from = Score)

print(exams_wide_again)

# ------------------------------
# 4. Add student statistics
# ------------------------------
# Compute average and highest score for each student
student_stats <- exams_long %>%
  group_by(Name) %>%
  summarise(
    Average_Score = mean(Score),
    Highest_Score = max(Score)
  )

print(student_stats)

# ------------------------------
# 5. Handling missing values
# ------------------------------
# Example: introduce some missing values
exams_with_na <- exams_wide
exams_with_na$Exam2[2] <- NA

# Fill missing values with 0 (or any placeholder)
exams_filled <- exams_with_na %>%
  replace_na(list(Exam2 = 0))

print(exams_filled)
