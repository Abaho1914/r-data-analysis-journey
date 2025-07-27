# Day 12 – Advanced dplyr
library(dplyr)
library(readr)

# Load dataset
students <- read_csv("data/students.csv")

# ------------------------------
# 1. case_when() – Conditional variable creation
# ------------------------------
students <- students %>%
  mutate(
    Performance = case_when(
      Score >= 14 ~ "Excellent",
      Score >= 12 ~ "Good",
      Score >= 10 ~ "Average",
      TRUE ~ "Poor"
    )
  )

print(students)

# ------------------------------
# 2. across() – Apply functions across multiple columns
# ------------------------------
# Example: Create a scaled version of numeric columns
# (Here we only have Score, but imagine we had more numeric columns)
students_scaled <- students %>%
  mutate(across(where(is.numeric), ~ round(.x / max(.x), 2)))

print(students_scaled)

# ------------------------------
# 3. rowwise() – Row-level operations
# ------------------------------
# Suppose we have test scores from 3 exams (simulate them)
students_extended <- students %>%
  mutate(Exam1 = c(12, 10, 14, 11, 15, 9),
         Exam2 = c(13, 11, 15, 10, 14, 8),
         Exam3 = c(14, 12, 16, 12, 15, 10))

# Compute row-wise average score
students_extended <- students_extended %>%
  rowwise() %>%
  mutate(Average_Exam = mean(c(Exam1, Exam2, Exam3)))

print(students_extended)

# ------------------------------
# 4. Summary
# ------------------------------
# Average score per performance category
performance_summary <- students %>%
  group_by(Performance) %>%
  summarise(Average_Score = mean(Score), Count = n())

print(performance_summary)
