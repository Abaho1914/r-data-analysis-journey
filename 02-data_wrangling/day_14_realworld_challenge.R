# Day 14 – Real-World Wrangling Challenge

library(tidyverse)

# ------------------------------
# 1. Load datasets
# ------------------------------
students <- read_csv("data/students.csv")
exams_wide <- read_csv("data/exams_wide.csv")

# ------------------------------
# 2. Data Cleaning
# ------------------------------
# Merge students with exam data
students_exams <- students %>%
  left_join(exams_wide, by = "Name")

# Replace missing scores (if any) with 0
students_exams <- students_exams %>%
  replace_na(list(Exam1 = 0, Exam2 = 0, Exam3 = 0))

# ------------------------------
# 3. Reshape & Summarize
# ------------------------------
# Convert exams to long format
exams_long <- students_exams %>%
  pivot_longer(cols = starts_with("Exam"),
               names_to = "Exam",
               values_to = "ExamScore")

# Calculate total and average scores
exam_summary <- exams_long %>%
  group_by(Name, Year, Willing_to_Donate) %>%
  summarise(
    Total_Score = sum(Score),
    Average_Score = mean(Score),
    .groups = "drop"
  )

# ------------------------------
# 4. Create Performance Categories
# ------------------------------
exam_summary <- exam_summary %>%
  mutate(
    Performance = case_when(
      Average_Score >= 14 ~ "Excellent",
      Average_Score >= 12 ~ "Good",
      Average_Score >= 10 ~ "Average",
      TRUE ~ "Poor"
    )
  )

# ------------------------------
# 5. Visualization
# ------------------------------
# Plot 1: Average score per year
ggplot(exam_summary, aes(x = Year, y = Average_Score, fill = Year)) +
  geom_bar(stat = "summary", fun = "mean") +
  labs(title = "Average Student Score by Year", y = "Average Score") +
  theme_minimal()
ggsave("outputs/day14_avg_score_by_year.png")

# Plot 2: Performance distribution
ggplot(exam_summary, aes(x = Performance, fill = Performance)) +
  geom_bar() +
  labs(title = "Performance Category Distribution") +
  theme_minimal()
ggsave("outputs/day14_performance_distribution.png")

# ------------------------------
# 6. Export Final Data
# ------------------------------
write_csv(exam_summary, "outputs/day14_exam_summary.csv")